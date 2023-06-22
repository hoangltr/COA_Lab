include 'emu8086.inc'
mov dh, 8
rest:
mov ah, 1
int 21h
cmp al, 31h
jg wrong
cmp al, 30h
jl wrong 
PRINTN ''
and al, 0Fh
push ax
dec dh
cmp dh, 0
jg rest
jmp calculate
wrong:
PRINT 'Enter Bit Again : '
jmp rest:
calculate:
mov bl, 11111111b
mov dh, 8
storevl:
dec dh
pop cx
cmp cl, 0
je shft0
jmp shft1
testloop:
cmp dh, 0
jg storevl
jmp prt 
shft0:
shr bl, 1
jmp testloop
shft1:
ror bl, 1
jmp testloop
prt:
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