include 'emu8086.inc'
new:
   MOV AH, 1
   INT 21h
   CMP AL, 39h
   JLE label1
   PRINT 'F'
   JMP new
label1:
   CMP AL, 30h
   JGE label2
   PRINT 'F'
   JMP new
label2:
   PRINT 'T'  