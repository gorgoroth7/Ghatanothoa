# Ghatanothoa-
reverse shell en assembleur

le code est configurer pour une addresse local : 127.0.0.1
port: 4444

pour compiler le code:
nasm -f elf64 -o reverse-shell_v2.o reverse-shell_v2.asm
ld -o reverse-shell reverse-shell_v2.o
./reverse-shell_v2
