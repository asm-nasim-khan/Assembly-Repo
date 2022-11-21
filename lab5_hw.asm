.MODEL SMALL
 
.STACK 100H

.DATA 
 MSG1 DB "Enter index :$"
 MSG2 DB "Enter a number :$" 
 A DB 5 dup(?)

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

;mov cx,4
;mov ah,2
;mov si,1
;start:
;
;mov dl,A[si]
;add dl,30h
;add si,2
;int 21h
;
;loop start 


   mov si,0
 mov cx,5
mov ah,1

start:
INT 21H
SUB AL,30H
MOV A[si],AL
ADD si,1                      

loop start 
;pRINT======================
MOV AH,2
MOV DL,0DH
INT 21H
MOV DL, 0AH
INT 21H
 

;PRINT MSH1

LEA DX,MSG1
MOV AH,9
INT 21H 

MOV AH,1
INT 21H
XOR AH,AH
SUB AL,30H 
MOV SI,AX 

;NEW LINE
MOV AH,2
MOV DL,0DH
INT 21H
MOV DL, 0AH
INT 21H


LEA DX,MSG2
MOV AH,9
INT 21H
MOV AH,1
INT 21H
SUB AL,30H
ADD A[SI],AL 

;NEW LINE
MOV AH,2
MOV DL,0DH
INT 21H
MOV DL, 0AH
INT 21H









mov si,0
mov cx,5
mov ah,2

start_1:
MOV BL,A[SI]
ADD BL,30H
MOV DL,BL
INT 21H
ADD si,1
loop start_1



 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN



