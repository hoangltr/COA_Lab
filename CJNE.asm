enterA:
mov a, p2
anl a, #00001111b
cjne a,#0b,ts1
sjmp temp
ts1:
cjne a,#1b,ts2
sjmp temp
ts2:
cjne a,#10b,ts3
sjmp temp
ts3:
cjne a,#11b,ts4
sjmp temp
ts4:
cjne a,#100b,enterA
temp:
mov r0, a
enterB:
mov a, p2
swap a
anl a, #00001111b
cjne a,#0b,ts1b
sjmp cal
ts1b:
cjne a,#1b,ts2b
sjmp cal
ts2b:
cjne a,#10b,ts3b
sjmp cal
ts3b:
cjne a,#11b,ts4b
sjmp cal
ts4b:
cjne a,#100b,enterB

cal:
add a,r0

cjne a,#0b,tp1
sjmp pr0
tp1:
cjne a,#1b,tp2
sjmp pr1
tp2:
cjne a,#10b,tp3
sjmp pr2
tp3:
cjne a,#11b,tp4
sjmp pr3
tp4:
cjne a,#100b,tp5
sjmp pr4
tp5:
cjne a,#101b,tp6
sjmp pr5
tp6:
cjne a,#110b,tp7
sjmp pr6
tp7:
cjne a,#111b,pr8
sjmp pr7

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