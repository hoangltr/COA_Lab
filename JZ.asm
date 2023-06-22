enterA:
mov A, p2
anl A, #00001111b
mov R0, A
subb A, #5h
jz enterA
mov A, R0
subb A, #6h
jz enterA
mov A, R0
subb A, #7h
jz enterA
mov A, R0
subb A, #8h
jz enterA
mov A, R0
subb A, #9h
jz enterA
mov A, R0
subb A, #1010b
jz enterA
mov A, R0
subb A, #1011b
jz enterA
mov A, R0
subb A, #1100b
jz enterA
mov A, R0
subb A, #1101b
jz enterA
mov A, R0
subb A, #1110b
jz enterA
mov A, R0
subb A, #1111b
jz enterA

enterB:
mov B, p2
mov A, B
swap A
anl A, #00001111b
mov R1,A
subb A, #5h
jz enterB
mov A, R1
subb A, #6h
jz enterB
mov A, R1
subb A, #7h
jz enterB
mov A, R1
subb A, #8h
jz enterB
mov A, R1
subb A, #9h
jz enterB
mov A, R1
subb A, #1010h
jz enterB
mov A, R1
subb A, #1011b
jz enterB
mov A, R1
subb A, #1100b
jz enterB
mov A, R1
subb A, #1101b
jz enterb
mov A, R1
subb A, #1110b
jz enterB
mov A, R1
subb A, #1111b
jz enterB

mov B, R1
mov A, R0
add A,B

mov R0, A
jz pr0
subb A, #1h
jz pr1
mov A, R0
subb A, #2h
jz pr2
mov A, R0
subb A, #3h
jz pr3
mov A, R0
subb A, #4h
jz pr4
mov A, R0
subb A, #5h
jz pr5
mov A, R0
subb A, #6h
jz pr6
mov A, R0
subb A, #7h
jz pr7
mov A, R0
subb A, #8h
jz pr8
pr0:
mov p1, #11000000b
sjmp endp
pr1:
mov p1, #11111001b
sjmp endp
pr2:
mov p1, #10100100b
sjmp endp
pr3:
mov p1, #10110000b
sjmp endp
pr4:
mov p1, #10011001b
sjmp endp 
pr5:
mov p1, #10010010b
sjmp endp 
pr6:
mov p1, #10000010b
sjmp endp 
pr7:
mov p1, #11111000b
sjmp endp 
pr8:
mov p1, #10000000b
endp:
ljmp enterA