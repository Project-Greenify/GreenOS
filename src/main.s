[org 0x7c00]
mov ah, 00h
mov al, 13h
int 0x10
// this sets the os to graphics mode
mov ah, 0Eh
mov al, 'H'
mov bh, 1
mov bl, 0
int 0x10
mov al, 'i'
int 0x10
mov al, '!'
int 0x10
mov ah, 0Ch
mov cx, 0
mov dx, 0
.loop:
    inc cx
    cmp cx, 5
    je .nl
    int 0x10
    jmp .loop
.nl:
    inc dx
    mov cx, 0
    jmp .loop
jmp $
times 510-($-$$) db 0
dw 0AA55h
