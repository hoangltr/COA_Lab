include 'emu8086.inc'
new:
mov ah, 1
int 21h
PRINTN ''
mov dl, al
cmp dl, 30h
jle wrong
cmp dl, 34h
jle calculate
PRINTN 'Enter again!'
jmp new
wrong:
PRINTN 'Enter again!'
jmp new
calculate:
je FunitA
cmp dl, 33h
je ThunitA
cmp dl, 32h
je TunitA
cmp dl, 31h
je OunitA
FunitA:
    mov ah, 1
    int 21h
    ;
    sub al, 30h
    mov ah, 0
    mov bx, 1000
    mul bx
    mov cx, ax
ThunitA:
    mov ah, 1
    int 21h
    sub al, 30h
    mov bl, 100
    mul bl
    add cx, ax
TunitA:
    mov ah, 1
    int 21h
    sub al, 30h
    mov bl, 10
    mul bl
    add cx, ax
OunitA:
    mov ah, 1
    int 21h
    sub al, 30h
    mov ah, 0
    add cx, ax
    ;;
    mov al, dl
    mov dx, 0 
    PRINTN ''
    cmp al, 34h
    je FunitB
    cmp al, 33h
    je ThunitB
    cmp al, 32h
    je TunitB
    cmp al, 31h
    je OunitB
    ;;;;;;;;;;
    ;Enter number B
FunitB:
    mov ah, 1
    int 21h
    ;
    sub al, 30h
    mov ah, 0
    mov bx, 1000
    mul bx
    mov dx, ax
ThunitB:
    mov ah, 1
    int 21h
    sub al, 30h
    mov bl, 100
    mul bl
    add dx, ax
TunitB:
    mov ah, 1
    int 21h
    sub al, 30h
    mov bl, 10
    mul bl
    add dx, ax
OunitB:
    mov ah, 1
    int 21h
    sub al, 30h
    mov ah, 0
    add dx, ax
    ;Find Sum
    add cx, dx
    ;-------------------
    mov ax, cx
    ;-------------------
    sub cx, dx
    cmp cx, dx
    jle bsa
    sub cx, dx
    mov bx, cx
    jmp prnt
bsa:
    sub dx, cx
    mov bx, dx
prnt:; store value of difference
    mov dx, 0
    ;Print the sum 
    PRINTN ''
    mov cx, 10000
    div cx
    ;-------------------
    mov cx, dx
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h
    ;
    mov ax, cx
    mov dx, 0
    mov cx, 1000
    div cx
    mov cx, dx
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h
    ;
    mov ax, cx
    mov dx, 0
    mov cx, 100
    div cx
    mov cx, dx
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h
    ;
    mov al, cl
    mov ah,  0
    mov cl, 10
    div cl
    mov dl, al
    mov cl, ah
    add dl, 30h
    mov ah, 2
    int 21h
    mov dl, cl
    add dl, 30h
    int 21h
    ;Print the difference 
    PRINTN ''
    mov ax, bx
    mov dx, 0
    ;-------------------
    mov cx, 10000
    div cx
    ;-------------------
    mov cx, dx
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h
    ;
    mov ax, cx
    mov dx, 0
    mov cx, 1000
    div cx
    mov cx, dx
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h
    ;
    mov ax, cx
    mov dx, 0
    mov cx, 100
    div cx
    mov cx, dx
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h
    ;
    mov al, cl
    mov ah,  0
    mov cl, 10
    div cl
    mov dl, al
    mov cl, ah
    add dl, 30h
    mov ah, 2
    int 21h
    mov dl, cl
    add dl, 30h
    int 21h
    ;;;;