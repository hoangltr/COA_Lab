include 'emu8086.inc'
PRINT 'Enter Number A: '
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
mov bl, 100
mul bl
mov cx, ax
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
mov bl, 10
mul bl
add cx, ax
d3a:
mov ah, 1
int 21h
cmp al, 30h
jl rsd3a
cmp al, 39h
jle c3a
rsd3a:
PRINT ' Enter Digit Again '
jmp d3a
c3a:
and al, 0Fh
mov ah, 0
add cx, ax
cmp cx, 99
jle wrcase
cmp cx, 999
jge wrcase
mov bx, 2
mov ax, cx
div bx
cmp dx, 0
je oddwcase:
jmp temp
oddwcase:
PRINT ' Wrong, Enter again: '
jmp readA
wrcase:
PRINT 'F'
jmp readA
temp:
PRINT ' Enter Number B: ' 
readB:
d1b:
mov ah, 1
int 21h
cmp al, 30h
jl rsd1b
cmp al, 39h
jle c1b
rsd1b:
PRINT ' Enter Digit Again '
jmp d1b
c1b:
and al, 0Fh
mov bl, 100
mul bl
mov dx, ax
d2b:
mov ah, 1
int 21h
cmp al, 30h
jl rsd2b
cmp al, 39h
jle c2b
rsd2b:
PRINT ' Enter Digit Again '
jmp d2b
c2b:
and al, 0Fh
mov bl, 10
mul bl
add dx, ax
d3b:
mov ah, 1
int 21h
cmp al, 30h
jl rsd3b
cmp al, 39h
jle c3b
rsd3b:
PRINT ' Enter Digit Again '
jmp d3b
c3b:
and al, 0Fh
mov ah, 0
add dx, ax
cmp dx, 99
jle wrcase2
cmp dx, 999
jge wrcase2
jmp calculate
wrcase2: 
PRINT 'F'
jmp readB
calculate:
cmp cx, dx
jg temp2
mov bx, dx
jmp print
temp2:
mov bx, cx
print:
PRINT ' MAX value: '    
    mov ax, bx
    mov dx, 0
    mov cx, 100
    div cx
    mov bx, dx
    mov dl, al
    push dx
    or dl, 30h
    mov ah, 2
    int 21h
    mov al, bl
    mov ah,  0
    mov cl, 10
    div cl
    mov dl, al
    mov bl, ah
    push dx
    or dl, 30h
    mov ah, 2
    int 21h
    mov dl, bl
    push dx
    or dl, 30h
    int 21h
PRINT ' Summation of digits from MAX :'
mov cx, 0
pop bx
add cl, bl
pop bx
add cl, bl
pop bx
add cl, bl
mov ah, 0
mov al, cl
mov bl, 10
div bl
mov dl, al
or dl, 30h
mov cl, ah
mov ah, 2
int 21h
mov dl, cl
or dl, 30h
int 21h    