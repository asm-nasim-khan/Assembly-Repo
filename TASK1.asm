.MODEL SMALL
 
.STACK 100H

.DATA   
MSG1 DB "First Number: $"
MSG2 DB "Second Number: $"  
MSG3 DB "Average:  $"
VAR1 DB ?
VAR2 DB 'A'    
VAR3 DB 5
.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

;MOV AL,5
;MOV BL,3
;SUB AL,BL
;ADD BL,AL
;SUB AL,BL
;NEG AL
XOR AL,AL
;XOR BL,BL
;single charecter output     


LEA DX,MSG1
MOV AH,9
INT 21H    
    
;single charecter INPUT 

MOV AH,1
INT 21H   
XOR BL,BL

MOV BL,AL
SUB BL,48


LEA DX,MSG2
MOV AH,9
INT 21H    
    
;single charecter INPUT 

MOV AH,1
INT 21H 
XOR CL,CL

MOV CL,AL
SUB CL,48
XOR AX,AX
ADD CL,BL
XOR CH,CH
MOV AX, CX
MOV BL,02
DIV BL
ADD AL,48
MOV CL,AL 
LEA DX,MSG3
MOV AH,9
INT 21H 


MOV DL,CL
MOV AH,2
INT 21H

;new line
;MOV AH,2
;MOV DL,OAH ; LINE FEED
;INT 21H
;MOV DL,ODH ; CARRIAGE RETURN
;INT 21H         
;

;MOV BL,AL
;SUB BL,32

;MOV DL,CL
;MOV AH,2
;INT 21H
;string output
;LEA DX,MSG1
;MOV AH,9
;INT 21H  

;PRINT THE INPUT ON THE NEXT LINE
;MOV DL,BL
;MOV AH,2

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN


;=============
;.MODEL SMALL
; 
;.STACK 100H
;
;.DATA 
;
;
;.CODE 
;MAIN PROC 
;
;;initialize DS
;
;MOV AX,@DATA 
;MOV DS,AX  
;
; 
;; enter your code here
;
;; MOV AL,05
;; MOV AH,06
;; MOV BL,AL
;; ADD BL,AH
;; MOV BH,01   
;; SUB BL,BH  
;; INC BL   ; WORKS LIKE BL += 1
;; NEG BL   ; WORKS OPPSITE OF ABSOLUTE
;; FOR MULTILINE COMMENT = CTRL + Q
;; FOR UN-COMMENT = CTRL + W   
;;BYTE MULTIPLICATIUON
;; MOV BH,06                                
;; MOV AL,05
;; MOV BH,02
;; MOV BL,04
;; MUL BL                               
;;         
;;wORD MULTIPLICATION
;;MOV AX,0BCDH
;;MOV BX,123FH
;;MUL BX
;;  
;;===========dIVISION========
;;----BYTE DIV------
;;MOV AX,0FH ; 16 BIT [DIVIDENT ] 
;;MOV BL,02H ; 8 BIT [ DIVISOR ]
;;DIV BL ; 8 BIT AT A_L [ QUOTIENT ]
;;; REMINDER AT A_H [ 8 BIT ]
;
;
;
;
;;-----WORD DIV-----
;   ;    DIVISOR 
;
; 
;
;;exit to DOS 
;               
;MOV AX,4C00H
;INT 21H 
;
;MAIN ENDP
;    END MAIN