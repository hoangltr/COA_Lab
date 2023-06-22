mov 20h, #1000000b
mov 21h, #1111001b
mov 22h, #0100100b
mov 23h, #0110000b
mov 24h, #0011001b
mov 25h, #0010010b
mov 26h, #0000010b
mov 27h, #1111000b
mov 28h, #0000000b
loop:
mov a, p2
anl a, #00Fh
mov r7, a
mov a, p2
anl a, #0F0h
swap a
add a, r7
orl a, #20h
mov r1, a
mov p1, @r1
jmp loop