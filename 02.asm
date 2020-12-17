
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

        mov si, 012fh   ;1
        mov di, 0134h   ;2
        mov bx, 0139h   ;3
        mov ax, 2000h   ;4
        mov es, ax      ;5
        mov ax, 0800h   ;6
        mov ss, ax      ;7
        mov sp, 0100h   ;8
        mov cx, 5       ;9
lazo1:
        xor dl, dl      ;10
        mov dl, [si]    ;11
        add dl, [di+4]  ;12
        mov [bx], dl    ;13
        add al, dl      ;14
        daa             ;15
        inc bx          ;16
        inc si          ;17
        dec di          ;18
        dec cx          ;19
        jnz lazo1       ;20
        mov [bx], al    ;21

ret




