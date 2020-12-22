
org 100h

jmp main            
           

MAIN:
        MOV AX, 0       ;1
        MOV BX, 1       ;2
        MOV CX, 16      ;3
        LEA SI, VECTOR  ;4
        MOV [SI], AX    ;5
ACA:
        ADD AX, BX      ;6
        DAA             ;7
        JNC CARRY       ;8
        INC AH          ;9
CARRY:               
        INC SI          ;10
        INC SI          ;11
        MOV [SI], AX    ;12
        MOV AX, [SI-2]  ;13
        MOV BX, [SI]    ;14
        DEC CX          ;15
        JNZ ACA         ;16 
    
        VECTOR DW 16 DUP(?)

RET




