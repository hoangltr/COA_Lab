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
PRINTN 'Enter Again : '
jmp rest
calculate:
PRINT ' '
mov cl, al
mov bl, 00000001b
shl bl, cl
mov dh, 8
testrs:
mov ch, 10000000b
and ch, bl
cmp ch, 0
je prt0
jmp prt1
prt0:
mov ah, 2
mov dl, 30h
int 21h
jmp testbit
prt1:
mov ah, 2
mov dl, 31h
int 21h
testbit:
shl bl, 1
dec dh
cmp dh, 0
jg testrs