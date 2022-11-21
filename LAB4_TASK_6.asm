.MODEL SMALL
 
.STACK 100H

.DATA 
MSG1 DB "Enter (0 ... 9 or A... F), :$"
MSG2 DB "ENTER Y FOR AGAIN :$"
MSG3 DB "ERROR INPUT.$"  

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX

;Task 06
;Write a program that will prompt the user to enter a hex digit character ("0" ... "9" or "A"
;... "F"), display it on the next line in decimal, and ask the user if he or she wants to do it
;again. If the user types "y" or "Y", the program repeats; If the user types anything else,
;the program terminates. If the user enters an illegal character, prompt the user to try again

COUNTER:
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    MOV AH,1
    INT 21H
    ;SUB AL,30H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    ;MOV AH,2
    ;INT 21H
    CMP BL,39H ; LESS THAN 9
    JLE CHECK_NUM
    
    CMP BL,47H ; LESS THAN F
    JL CHECK_CHAR
    JMP ERROR

CHECK_NUM: 
    CMP BL,30H
    JGE PRINT
    JMP ERROR
CHECK_CHAR: 
    CMP BL,41H
    JGE PRINT
    JMP ERROR
PRINT:
    INC BL
    ;ADD BL,30H
    MOV DL,BL
    MOV AH,2
    INT 21H
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    JMP LOOP_CHECKER
LOOP_CHECKER:
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    
    CMP BH,59H
    JE COUNTER
    CMP BH,79H
    JE COUNTER
    JMP AFTER_LIFE 
ERROR:
    LEA DX,MSG3
    MOV AH,9
    INT 21H 

;exit to DOS 
AFTER_LIFE: ;EXIT LEVEL              
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 