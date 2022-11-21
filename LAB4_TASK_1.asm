.MODEL SMALL
 
.STACK 100H

.DATA 
MSG1 DB "Enter :$"  

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX

 
; Task 01 : Write a count-controlled loop to display a row of 80 stars.
LEA DX,MSG1
MOV AH,9
INT 21H 

MOV AH,1
INT 21H
SUB AL,30H
MOV BL,AL
MOV BH,0
COUNTER:
    CMP BH,BL
    JE AFTER_LIFE
    INC BH
    OUTTER_LOOP:
           MOV AH,2
           MOV DL,0DH
           INT 21H
           MOV DL, 0AH
           INT 21H
        JMP PRINT_STAR
    LOOP OUTTER_LOOP

PRINT_STAR: 
    MOV CX,80
    MOV DL,"*"
    MOV AH,2
    INSIDE_LOOP:
        INT 21H
    LOOP INSIDE_LOOP
    JMP COUNTER
    


;exit to DOS 
AFTER_LIFE: ;EXIT LEVEL              
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 