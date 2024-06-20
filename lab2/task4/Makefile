all:
	gcc -m32 -no-pie -g -o touchstone server.c
	gcc -m32 -no-pie -fno-stack-protector -g -o filesv ./sql_lite3/sqlite3.o -l pthread -l dl ./sql_lite3/sqlhelper.c filesv.c token.c parse.c http-tree.c handle.c
	gcc -m32 -no-pie -fno-stack-protector -g -o banksv ./sql_lite3/sqlite3.o -l pthread -l dl ./sql_lite3/sqlhelper.c banksv.c  token.c parse.c http-tree.c handle.c -lseccomp
	gcc -m32 -no-pie -fno-stack-protector -g -o httpd  httpd.c token.c parse.c http-tree.c 
	sudo chown root touchstone
	sudo chmod +s touchstone
	sudo touch /tmp/test.txt
	sudo chown root /tmp/test.txt

clean:
	sudo rm -rf touchstone filesv banksv httpd  /tmp/test.txt

run:
	./touchstone 82

kill:
	sudo pkill -9 banksv
	sudo pkill -9 filesv
	sudo pkill -9 httpd
	sudo pkill -9 touchstone
