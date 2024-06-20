#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
//#include <sys/resource.h>
//#include <seccomp.h>

#include "parse.h"
#include "http.h"
#include "handle.h"

#include <unistd.h>
#define DEBUG 1

static void error (int fd, int errcode, char *msg);
static void parse(int fd);

// utilities
void die (const char *msg)
{
  fprintf (stderr, "Error: %s\n", msg);
  exit (0);
}

void kprint (const char *msg)
{
  write (1, msg, sizeof (msg));
  return;
}

void write_file (int sockfd, const char *s)
{
  int size = strlen (s);

  write (sockfd, s, size);
  return;
}

/*
void setup_deny_bydefault_rules()
{
  scmp_filter_ctx ctx;
  ctx = seccomp_init(SCMP_ACT_KILL);
  if(ctx==NULL)
    exit(-1);

  // seccomp_rule_add(ctx, SCMP_ACT_ALLOW, SCMP_SYS(read),0);
  // put the rules to allow the system calls

  seccomp_load(ctx);
  seccomp_release(ctx);
}
*/

/*
void setup_allow_bydefault_rules()
{
  scmp_filter_ctx ctx;
  ctx = seccomp_init(SCMP_ACT_ALLOW);
  if(ctx==NULL)
    exit(-1);

  // put the rules to deny the system calls

  seccomp_load(ctx);
  seccomp_release(ctx);
}
*/

int main (int argc, char **argv)
{
  /* setup the seccomp rules here */  
  
  Http_t tree;

  if (argc<2)
    die ("server bug");

  signal(SIGCHLD, SIG_IGN);
  
  // get the pipe fd
  int pipefd = atoi (argv[1]);
  if (DEBUG)
    printf ("pipefd = %d\n", pipefd);

  while (1){
    char uri_str[1024];
    int sockfd;
    recvfd (pipefd, uri_str, sizeof(uri_str), &sockfd);
    printf("uri = %s\n", uri_str);
    //int sockfd = atoi (sockfd_str);
    if (DEBUG)
      printf ("mailsv client recieves a sockfd = %d\n", sockfd);

    if(fork() == 0 )//child
      {
	int ruid, euid, suid;
	getresuid(&ruid, &euid, &suid);
	printf("uid = %d %d %d \n",ruid, euid, suid);

	setReqline( REQ_KIND_POST, uri_str);
	tree = Parse_parse(sockfd , 0);
	

	//response 
	Handle_main (sockfd, tree);

	close(sockfd);
	exit(0);
      }
    
    close(sockfd);
    
    
  }

  return 0;
}

////////////////////////////////////////////
// parser
void error (int fd, int errCode, char *msg)
{
  int c;

  while(read(fd, &c, 1)!=-1)
    ;
  close (fd);
  
  fprintf (stderr, "%d\n", errCode);
  fprintf (stderr, "%s\n", msg);
  exit (0);
  return;
}

