;;65535 
include 'emu8086.inc'
PRINTN ' Enter Number A'
D5A:
mov ah, 1
int 21h
cmp al, 36h
jle D5Ac 
PRINTN ' Enter Again :'
jmp D5A
D5Ac:
and al, 0Fh  
mov ah, 0
mov bx, 10000
mul bx
mov cx, ax
;;;
D4A:
mov ah, 1
int 21h
cmp cx, 60000
je tD4A
jmp D4Ac
tD4A:
cmp al, 35h
jle D4Ac
PRINTN ' Enter Again :'
jmp D4A
D4Ac:
and al, 0Fh
mov ah, 0
mov bx, 1000
mul bx
add cx, ax
;;
D3A:
mov ah, 1
int 21h
cmp cx, 65000
je tD3A
jmp D3Ac
tD3A:
cmp al, 35h
jle D3Ac        
PRINTN ' Enter Again :'
jmp D3A
D3Ac:
and al, 0Fh
mov ah, 0
mov bx, 100
mul bx
add cx, ax
;;;
D2A:
mov ah, 1
int 21h
cmp cx, 65500
je tD2A
jmp D2Ac
tD2A:
cmp al, 33h
jle D2Ac
PRINTN ' Enter Again :'
jmp D2A
D2Ac:
and al, 0Fh
mov ah, 0
mov bx, 10
mul bx
add cx, ax
;;
D1A:
mov ah, 1
int 21h
cmp cx, 65530
je tD1A
jmp D1Ac
tD1A:
cmp al, 35h
jle D1Ac
PRINTN ' Enter Again :'
jmp D1A
D1Ac:
and al, 0Fh
mov ah, 0
add cx, ax
cmp ch, 9
jnb temp;;;---
PRINTN ' Enter Wrong, Enter Number A again :'
jmp D5A
temp:  
push cx
PRINTN ' Enter Number B : '
D5B:
mov ah, 1
int 21h
cmp al, 36h
jle D5Bc 
PRINTN ' Enter Again :'
jmp D5B
D5Bc:
and al, 0Fh  
mov ah, 0
mov bx, 10000
mul bx
mov cx, ax
;;;
D4B:
mov ah, 1
int 21h
cmp cx, 60000
je tD4B
jmp D4Bc
tD4B:
cmp al, 35h
jle D4Bc
PRINTN ' Enter Again :'
jmp D4B
D4Bc:
and al, 0Fh
mov ah, 0
mov bx, 1000
mul bx
add cx, ax
;;
D3B:
mov ah, 1
int 21h
cmp cx, 65000
je tD3B
jmp D3Bc
tD3B:
cmp al, 35h
jle D3Bc        
PRINTN ' Enter Again :'
jmp D3B
D3Bc:
and al, 0Fh
mov ah, 0
mov bx, 100
mul bx
add cx, ax
;;;
D2B:
mov ah, 1
int 21h
cmp cx, 65500
je tD2B
jmp D2Bc
tD2B:
cmp al, 33h
jle D2Bc
PRINTN ' Enter Again :'
jmp D2B
D2Bc:
and al, 0Fh
mov ah, 0
mov bx, 10
mul bx
add cx, ax
;;
D1B:
mov ah, 1
int 21h
cmp cx, 65530
je tD1B
jmp D1Bc
tD1B:
cmp al, 35h
jle D1Bc
PRINTN ' Enter Again :'
jmp D1B
D1Bc:
and al, 0Fh
mov ah, 0
add cx, ax
cmp cx, 99
jnb calculate
PRINTN ' Enter Wrong, Enter Number B again :'      
calculate: