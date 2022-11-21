.MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX  

 
; enter your code here

; MOV AL,05
; MOV AH,06
; MOV BL,AL
; ADD BL,AH
; MOV BH,01   
; SUB BL,BH  
; INC BL   ; WORKS LIKE BL += 1
; NEG BL   ; WORKS OPPSITE OF ABSOLUTE
; FOR MULTILINE COMMENT = CTRL + Q
; FOR UN-COMMENT = CTRL + W   
;BYTE MULTIPLICATIUON
; MOV BH,06                                
; MOV AL,05
; MOV BH,02
; MOV BL,04
; MUL BL                               
;         
;wORD MULTIPLICATION
;MOV AX,0BCDH
;MOV BX,123FH
;MUL BX
;  
;===========dIVISION========
;----BYTE DIV------
;MOV AX,0FH ; 16 BIT [DIVIDENT ] 
;MOV BL,02H ; 8 BIT [ DIVISOR ]
;DIV BL ; 8 BIT AT A_L [ QUOTIENT ]
;; REMINDER AT A_H [ 8 BIT ]




;-----WORD DIV-----
   ;    DIVISOR 

 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN