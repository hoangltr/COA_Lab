include 'emu8086.inc'
rest:
mov ah, 1
int 21h
and al, 0Fh
cmp al, 7
jg wrong
cmp al, 0
jle wrong
jmp calculate
wrong: 
PRINT 'Enter Again'
jmp rest
calculate:
mov cl, al
mov bl, 00000001b
shl bl, cl
mov dh, 8
prtb:
shl bl, 1
dec dh
jnae prt1
jnb prt0
testrs:
cmp dh, 0    
jg prtb
jmp exit
prt1:
mov ah, 2
mov dl, 31h
int 21h
jmp testrs
prt0:
mov ah, 2
mov dl, 30h
int 21h
jmp testrs
exit: