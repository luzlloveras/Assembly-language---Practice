
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


Main:

        mov ax, 6010h       ;1
        mov ss, ax          ;2
        mov sp, 100h        ;3
                         
        mov ax, 5100h       ;4
        mov es, ax          ;5
        
        lea si, vector+10   ;6
        mov di, 011eh       ;7
        mov cx, 000ah       ;8
repetir:
        mov bl, [si]        ;9
        mov es: [di], bl    ;10
        dec si              ;11
        dec di              ;12
        dec cx              ;13
        jnz repetir         ;14


ret


vector db  23h, 43h, 01h, 20h, 30h, 40h, 55h, 45h, 66h, 78h, 99h

