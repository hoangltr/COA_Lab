mov ah, 1
int 21h
;
sub al, 30h
mov bl, 100
mul bl
mov cx, ax
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
;------------
mov ah, 1
int 21h
;
sub al, 30h
mov bl, 100
mul bl
mov dx, ax
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
;-------------------
add cx, dx
;-------------------
mov ax, cx
;-------------------
sub cx, dx
sub cx, dx
mov bx, cx
;-------------------
mov cx, 0
mov ch, 100
div ch
mov dl, al
mov cl, ah
mov ax, 0
mov al, dl
mov ch, 10
div ch
mov dl, al
add dl, 30h
mov ch, ah
mov ah, 2
int 21h
mov dl, ch
add dl, 30h
int 21h
mov ah, 0
mov al, cl
mov ch, 10
div ch
mov cl, ah
mov dl, al
add dl, 30h
mov ah, 2
int 21h
mov dl, cl
add dl, 30h
int 21h
;----------------
mov ax, bx
mov cx, 0
mov ch, 100
div ch
mov dl, al
mov cl, ah
mov ax, 0
mov al, dl
mov ch, 10
div ch
mov dl, al
add dl, 30h
mov ch, ah
mov ah, 2
int 21h
mov dl, ch
add dl, 30h
int 21h
mov ah, 0
mov al, cl
mov ch, 10
div ch
mov cl, ah
mov dl, al
add dl, 30h
mov ah, 2
int 21h
mov dl, cl
add dl, 30h
int 21h