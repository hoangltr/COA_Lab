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