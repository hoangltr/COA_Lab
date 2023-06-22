include 'emu8086.inc'
rest:
mov ah, 1
int 21h
and al, 0Fh
cmp al, 7
jg wrong
cmp al, 0
jle wrong
jmp calculate
wrong: 
PRINTN 'Enter Again'
jmp rest
calculate:
mov cl, al
mov bl, 00000001b
shl bl, cl
mov ah, 0
mov al, bl
mov bh, 10
div bh
push ax
mov ah, 0
div bh
push ax
pop dx
or dl, 30h
mov ah, 2
int 21h
mov dl, dh
or dl, 30h
int 21h
pop cx
mov dl, ch
or dl, 30h
int 21h