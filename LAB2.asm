.MODEL SMALL
 
.STACK 100H

.DATA
;;;;;;;;;;; 

;ALL VARIBALE AND MESSAGE SHUOLD BE DECLARED HERE
MSG1 DB "Testing :$"
VAR1 DB ?
VAR2 DB 'A'


;;;;;;;;;;;
.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX




;;;;;;
;PRACTICE PROB 1


;OUTPUT A CHAR
MOV AH,2
MOV DL,'?'
INT 21H

;INPUT A CHAR
MOV AH,1
INT 21H
MOV BL,AL

SUB BL,32

;OUTPUT A REGISTER CHAR
MOV AH,2
MOV DL,BL
INT 21H

;;;;;;;;
 
 
; enter your code here

;MOV AL,05
;MOV BL,03
;ADD AL,BL
;NEG BL
;ADD BL,AL
;NEG BL
;ADD AL,BL
;NEG BL

;MOV AL,05
;MOV BL,03
;ADD AL,BL
;SUB BL,AL
;ADD AL,BL
;NEG BL

                                                                                                                                                                   

XOR AX,AX ;TO CLEAR OUT THE AX REGISTOR, SETS 0 AS THE VALUE OF AX
XOR BX,BX ;TO CLEAR OUT THE AX REGISTOR, SETS 0 AS THE VALUE OF BX
 
;;;;;
;INPUT A CHAR
MOV AH,1
INT 21H
MOV BL,AL ;MOV VAR1,AL
;;;;;

;;;;;
;OUTPUT A CHAR
MOV AH,2
MOV DL,'C'
INT 21H
;;;;;

;;;;;
;OUTPUT A REGISTER CHAR
MOV AH,2
MOV DL,AL
INT 21H
;;;;;

;KEYNOTE: FOR CALCULATION OF VALUES THAT ARE TAKEN USING OUTPUT SYSTEM, REDUCE 30H FROM IT BEFOR CALCULATION

;;;;;;;
;NEW LINE
MOV AH,2
MOV DL,0DH;CARRIAGE RETURN(BASICALLY MOVES THE CURSOR TO FRONT)
INT 21H
MOV DL, 0AH;LINE FEED(MOVES THE CURSOR TO STRAIGHT BELOW)
INT 21H


;;;;;;;



;;;;;;;
;STRING OUTPUT

LEA DX,MSG1
MOV AH,9 ; FUNCTION FOR STRING PRINT
INT 21H
;;;;;;;


;;;;;;
;PRINT THE INPUT IN NEXT LINE
MOV DL,BL
MOV AH,2
INT 21H






;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN




