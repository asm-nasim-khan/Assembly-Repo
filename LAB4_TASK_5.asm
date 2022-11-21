.MODEL SMALL
 
.STACK 100H

.DATA 
MSG1 DB "Enter :$"  

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX

;Task 05
;Write a program to display the extended ASCII characters (ASCII codes 80h to FFh).
;Display 10 characters per line, separated by blanks. Stop after the extended characters
;have been displayed once.
; 

MOV BX,128
COUNTER:
    CMP BX,256
    JG AFTER_LIFE
    OUTTER_LOOP:
       JMP PRINT_STAR
    LOOP OUTTER_LOOP

PRINT_STAR: 
    MOV CX,10
    
    INSIDE_LOOP:
        CMP BX,256
        JG AFTER_LIFE
        MOV DX, BX ;Print b
        MOV AH,2
        INT 21H
        MOV DL," "
        MOV AH,2
        INT 21H
        INC BX
    LOOP INSIDE_LOOP
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL, 0AH
    INT 21H
    JMP COUNTER
    


;exit to DOS 
AFTER_LIFE: ;EXIT LEVEL              
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 