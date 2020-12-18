
org 100h

jmp main            
           

main:
    mov ax, 1000h   ;1
    mov ds, ax      ;2
    mov es, ax      ;3
    mov ax, 0800h   ;4
    mov ss, ax      ;5
    mov sp, 0100h   ;6
    
    mov si, 0150h   ;7
    mov di, 0165h   ;8
    mov cx, 0005h   ;9

lazo:               
    mov ah, [si+5]  ;10
    mov [di+10], ah ;11
    
    inc si          ;12
    dec di          ;13
    dec cx          ;14
    jnz lazo        ;15
    
ret                 ;16






