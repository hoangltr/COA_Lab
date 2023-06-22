include 'emu8086.inc'
rest:
mov ah, 1
int 21h
sub al, 30h
cmp al, 0
jle flag
cmp al, 4
jle calculate
PRINTN 'Enter again!'
jmp rest
calculate:
je label4
cmp al, 3
je label3
cmp al, 2
je label2
cmp al, 1
je label1
;;;
label1:
    ;Enter number A
    mov ah, 1   
    int 21h       
    ;Convert character to number
    sub al, 30h
    ;Store al in dl
    mov dl, al
    ;Store value of number A 
    mov ch, dl
    ;Enter number B  
    int 21h
    ;Convert character to number 
    sub al, 30h
    ;Store value of number B
    mov cl, al
    ;-----------------------------
    ;Sum dl + al 
    add dl, al
    ;reset ax, set ax (al=dl) 
    mov ax,0
    mov al, dl
    ;
    mov bl,10
    div bl
    ;
    mov bh, ah
    mov bl, al
    ;convert number to character
    add bh, 30h
    add bl, 30h 
    ;print to display
    mov dl, bl
    mov ah, 2
    int 21h
    ;
    mov dl, bh
    int 21h
    ;-----------------------------
    ;Sub ch - cl 
    sub ch, cl
    ;reset ax, set ax (al=dl) 
    mov ax,0
    mov al, ch
    ;
    mov bl,10
    div bl
    ;
    mov bh, ah
    mov bl, al
    ;convert number to character
    add bh, 30h
    add bl, 30h 
    ;print to display
    mov dl, bl
    mov ah, 2
    int 21h
    ;
    mov dl, bh
    int 21h
    jmp exit
label2:
    mov ax, 0
    mov bx, 0
    mov cx, 0
    mov dx, 0
    ;Enter number A, >9
    ;Enter tens digit
    mov ah, 1   
    int 21h       
    sub al, 30h
    mov bl, 10
    mul bl
    mov dx, ax
    mov ch, dl
    ;Enter unit 
    mov ah, 1 
    int 21h 
    sub al, 30h
    ;Sum two digits
    add ch, al
    ;Enter number B, >9 
    ;Enter tens digit
    int 21h
    sub al, 30h
    mul bl
    mov dx, ax
    mov cl, al
    ;Enter unit
    mov ah, 1
    int 21h
    sub al, 30h
    ;Sum two digits
    add cl, al
    ;-----------------------------
    ;Sum ch + cl
    add ch, cl
    ;Store cl in dh
    mov dh, cl
    ;Print result
    ;reset ax, set ax (al=dl) 
    mov ax,0
    mov al, ch
    ;Get number A again
    sub ch, dh
    ;div 100
    mov bl,100
    div bl
    ;store al in cl
    mov cl, al
    ;store ah in bh
    mov bh, ah
    ;reset ax, set ax(al=bh)
    mov ax, 0
    mov al, bh
    ;div 10
    mov bl, 10
    div bl
    ;store al in bl, ah in 
    mov bl, al
    mov bh, ah
    ;convert number to character
    add cl, 30h
    add bh, 30h
    add bl, 30h 
    ;print to display
    ;print first unit
    mov dl, cl
    mov ah, 2
    int 21h
    ;print second unit
    mov dl, bl
    int 21h
    ;print third unit
    mov dl, bh
    int 21h
    ;--------------------
    ;Sub
    sub ch, dh
    ;Print result
    ;reset ax, set ax (al=dl) 
    mov ax,0
    mov al, ch
    ;div 100
    mov bl,100
    div bl
    ;store al in cl
    mov cl, al
    ;store ah in bh
    mov bh, ah
    ;rest ax, set ax(al=bh)
    mov ax, 0
    mov al, bh
    ;div 10
    mov bl, 10
    div bl
    ;store al in bl, ah in 
    mov bl, al
    mov bh, ah
    ;convert number to character
    add cl, 30h
    add bh, 30h
    add bl, 30h 
    ;print to display
    ;print first unit
    mov dl, cl
    mov ah, 2
    int 21h
    ;print second unit
    mov dl, bl
    int 21h
    ;print third unit
    mov dl, bh
    int 21h
    jmp exit
label3:
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
    jmp exit
label4:
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
;;;
flag:
PRINTN 'Enter again!'
jmp rest
exit: