mov ah, 00h
mov al, 13h
int 0x10
; this sets the os to graphics mode
mov ah, 0Eh
mov al, 'H'
mov bh, 1
mov bl, 15
int 0x10
mov al, 'i'
int 0x10
mov al, '!'
int 0x10
jmp $
times 510-($-$$) db 0
dw 0AA55h
