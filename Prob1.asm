include 'emu8086.inc' 
PRINTN 'Enter Number A'
readA:
d1a:
mov ah, 1
int 21h
cmp al, 30h
jl rsd1a
cmp al, 39h
jle c1a
rsd1a:
PRINT ' Enter Digit Again '
jmp d1a
c1a:
and al, 0Fh
mov bl, 10
mul bl
mov ah, 0
mov cl, al
d2a:
mov ah, 1
int 21h
cmp al, 30h
jl rsd2a
cmp al, 39h
jle c2a
rsd2a:
PRINT ' Enter Digit Again '
jmp d2a
c2a:
and al, 0Fh
mov ah, 0
add cl, al
cmp cl, 16
jge wrcase
cmp cl, 8
jle wrcase
jmp tmp
wrcase:
PRINT 'F'
jmp readA
tmp:
PRINTN 'Enter Binary String X : '
mov bx, 0
readbi:
dec cl
rbia:
mov ah, 1
int 21h
cmp al, 30h
je ent0
cmp al, 31h
je ent1
wrcase2:
PRINT 'Enter Bit Again'
jmp rbia
ent0:
shl bx, 1
jmp testloop
ent1:
shl bx, 1
or bx, 1
jmp testloop
testloop:
cmp cl, 0
jg readbi
PRINTN ' X in decimal form :'
cmp bx, 10000
jge prt5d
cmp bx, 1000
jge prt4d
cmp bx, 100
jge prt3d
cmp bx, 10
jge prt2d
jmp prt1d
prt5d:   
    mov ax, bx
    mov dx, 0
    mov cx, 10000
    div cx
    mov bx, dx
    mov dl, al
    or dl, 30h
    mov ah, 2
    int 21h
prt4d:
    mov ax, bx
    mov dx, 0
    mov cx, 1000
    div cx
    mov bx, dx
    mov dl, al
    or dl, 30h
    mov ah, 2
    int 21h
prt3d:    
    mov ax, bx
    mov dx, 0
    mov cx, 100
    div cx
    mov bx, dx
    mov dl, al
    or dl, 30h
    mov ah, 2
    int 21h
prt2d:
    mov al, bl
    mov ah,  0
    mov cl, 10
    div cl
    mov dl, al
    mov bl, ah
    or dl, 30h
    mov ah, 2
    int 21h
prt1d:
    mov ah, 2
    mov dl, bl
    or dl, 30h
    int 21h 