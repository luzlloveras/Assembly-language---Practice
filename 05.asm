
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp main

vector db 12 dup(?)

main:
        mov ax, 0700h   ;1
        mov ds, ax      ;2
        mov al, 0       ;3
        mov bl, 1       ;4
        mov cx, 11      ;5
        
        lea si, vector  ; mov si, 0102h 6
        
        mov [si], al    ;7
aca:                    ;8
        add al, bl      ;9
        daa             ;10
        inc si          ;11
        mov [si], al    ;12
        mov al, [si-1]  ;13
        mov bl, [si]    ;14
        dec cx          ;15
        jnz aca         ;16

ret




