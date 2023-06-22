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
PRINT ' '
mov cl, al
mov bl, 1b
shl bl, cl
mov al, bl
cmp bl, 80h
jge prt3u
cmp bl, 0Ah
jge prt2u
jmp prt1u
prt3u:
mov ah, 0
mov bh, 100
div bh
mov dl, al
or dl, 30h
mov cl, ah
mov ah, 2
int 21h
mov al, cl 
prt2u:
mov ah, 0
mov bh, 10
div bh
mov dl, al
or dl, 30h
mov cl, ah
mov ah, 2
int 21h
mov al, cl
prt1u:
mov dl, al
or dl, 30h
mov ah, 2
int 21h 