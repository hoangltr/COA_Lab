;Enter number A
mov ah, 1
int 21h
;
sub al, 30h
mov ah, 0
mov bx, 1000
mul bx
mov cx, ax
;
mov ah, 1
int 21h
sub al, 30h
mov bl, 100
mul bl
add cx, ax
;
mov ah, 1
int 21h
sub al, 30h
mov bl, 10
mul bl
add cx, ax
;
mov ah, 1
int 21h
sub al, 30h
mov ah, 0
add cx, ax
;Enter number B
mov ah, 1
int 21h
;
sub al, 30h
mov ah, 0
mov bx, 1000
mul bx
mov dx, ax
;
mov ah, 1
int 21h
sub al, 30h
mov bl, 100
mul bl
add dx, ax
;
mov ah, 1
int 21h
sub al, 30h
mov bl, 10
mul bl
add dx, ax
;
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
sub cx, dx
mov bx, cx; store value of difference
mov dx, 0
;Print the sum
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