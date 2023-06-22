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