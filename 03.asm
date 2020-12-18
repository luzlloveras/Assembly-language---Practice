
org 100h

jmp main
vector1  dw 0091h, 0035h, 0044h, 0017h, 0077h
vector2  dw 0032h, 0067h, 0084h, 0021h, 0003h 

vector3 dw 5 dup (?)



long    equ 5                 


main:
    mov ax, 0700h   ;1
    mov ds, ax      ;2
    mov ax, 3000h   ;3
    mov ss, ax      ;4
    mov sp, 0100h   ;5    
    
    lea si, vector1 ;6 mov si, 0102h
    lea di, vector2 ;7 mov di, 010Ch
    mov cx, long    ;8 mov cx, 0005h 


aca:    
    mov ax, [si]    ;9
    add ax, [di]    ;10
    daa             ;11
    jnc no_carry    ;12
    inc ah          ;13
    
no_carry:    
    push ax         ;14
    inc si          ;15
    inc si          ;16
    inc di          ;17    
    inc di          ;18
    dec cx          ;19
    jnz aca         ;20
    
    
    
    lea si, vector3 ;21 mov si, 0116h
    mov cx, long    ;22 mov cx, 0005h


aqui:    
    pop bx          ;23
    mov [si], bx    ;24
    
    inc si          ;25
    inc si          ;26
    dec cx          ;27
    jnz aqui        ;28
    
    

ret




