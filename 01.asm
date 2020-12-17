
org 100h

jmp main                ;1

main:
        mov ax, 1000h   ;2
        mov ds, ax      ;3
        mov es, ax      ;4
        mov ax, 0800h   ;5
        mov ss, ax      ;6
        mov sp, 0100h   ;7
        
        
        mov si, 0150h   ;8
        mov di, 0165h   ;9
        mov cx, 0005h   ;10
lazo:
        mov ah, [si+5]  ;11
        mov [di+10], ah ;12
        
        inc si          ;13
        dec di          ;14
        dec cx          ;15
        jnz lazo        ;16
        
ret                     ;17



