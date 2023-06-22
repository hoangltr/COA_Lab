;Enter number A
mov ah, 1
int 21h
;Convert character to number
sub al, 30h
;Store al in dl
mov dl, al
;Store value of numeber A
mov bh, dl
;Enter number B
int 21h
;Convert character to number
sub al, 30h
;Store value of numeber B
mov bl, al
;-----------------------------
;Sum dl + al
add dl, al
;Convert number to character
add dl, 30h
;Print to display
mov ah, 2
int 21h 
;-----------------------------
;Sub bl - al
sub bh, bl
mov dl, bh
;Convert number to character
add dl, 30h
;Print to display
mov ah, 2
int 21h 