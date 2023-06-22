include 'emu8086.inc'
new:
   MOV AH, 1
   INT 21h
   SUB AL, 30h
   CMP AL, 9
   JLE label1
   PRINT 'F'
   JMP new
label1:
   CMP AL, 0
   JGE label2
   PRINT 'F'
   JMP new
label2:
   PRINT 'T'
   CMP AL, 5
   MOV CL, AL
   JGE label5
   JL label6
label5:
   CMP Cl, 0
   JGE label7
   JMP exit
label6:
   CMP CL, 9
   JLE label8
   JMP exit
label7:
   MOV DL, CL
   ADD DL, 30h
   MOV AH, 2
   INT 21h
   DEC CL
   JMP label5
label8:
   MOV DL, CL
   ADD DL, 30h
   MOV AH, 2
   INT 21h
   INC CL
   JMP label6
exit:      