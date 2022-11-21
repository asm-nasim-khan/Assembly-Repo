.MODEL SMALL
 
.STACK 100H

.DATA 
MSG1 DB "Enter :$"  

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX

 
; Task 02 : Write a sequence of instructions to do each of the following:
;a. Put the sum of 1 + 4 + 7+ .. + 148 in AX.


XOR BX,BX
XOR CX,CX
MOV BX,15
MOV DX,1
XOR AX,AX
COUNTER:
    OUTTER_LOOP:
        CMP DX,148
        JG AFTER_LIFE
        ADD AX,DX
        ADD DX,3
    LOOP OUTTER_LOOP

    


;exit to DOS 
AFTER_LIFE: ;EXIT LEVEL              
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 