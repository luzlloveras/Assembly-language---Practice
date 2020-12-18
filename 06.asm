
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

Main: 
        MOV SI, 012FH  ;1
        MOV DI, 0134H  ;2
        MOV BX, 0139H  ;3
        MOV AX, 2000H  ;4
        MOV ES, AX     ;5
        MOV AX, 0800H  ;6
        MOV SS, AX     ;7
        MOV SP, 0100H  ;8
        MOV CX, 5      ;9
lazo:                  ;10
        XOR DL, DL     ;11
        MOV DL, [SI]   ;12
        ADD DL, [DI+4] ;13
        MOV [BX], DL   ;14
        ADD AL, DL     ;15
        DAA            ;16
        INC BX         ;17
        INC SI         ;18
        DEC DI         ;19
        DEC CX         ;20
        JNZ lazo       ;21
        MOV [BX], AL   ;22
  
ret                    ;23




