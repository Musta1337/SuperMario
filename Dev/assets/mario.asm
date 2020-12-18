.model medium, stdcall
.stack 100h
.data
    skin DB 14d
    clothes1 byte 06d
    clothes2 byte 04d
    unique byte 13d
.code

drawMario proc x:word, y:word
 

    push AX
    push BX
    push CX
    push DX
    push SI
    push DI

    mov AX, @data
    mov DS, AX


    mov CX, x
    mov DX, y
    push CX
    mov ah, 0ch

    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX, 4
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h


    pop CX
    push CX
    dec DX

    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX, 4
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX
    push CX
    dec DX


    mov al, clothes2
    
    add CX, 2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX, 2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    

    pop CX
    push CX
    dec DX

    mov al, skin

    int 10h
    inc CX
    int 10h

    mov al, clothes2
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    
    mov al, skin
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX
    push CX
    dec DX

    mov al, skin

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    mov al, clothes2
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    
    mov al, skin
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX
    push CX
    dec DX

    mov al, skin
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, clothes1
    int 10h
    inc CX
    mov al, clothes2
    int 10h
    inc CX
    mov al, unique
    int 10h
    inc CX
    mov al, clothes2
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, unique
    int 10h
    inc CX
    mov al, clothes2
    int 10h
    mov al, clothes1
    inc CX
    int 10h
    mov al, skin
    inc CX
    int 10h
    inc CX
    int 10h


    pop CX
    push CX
    dec DX

    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, clothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX


    pop CX
    push CX
    dec DX


    inc CX
    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, clothes2
    int 10h
    inc CX
    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, clothes2
    int 10h
    inc CX
    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    pop CX
    push CX
    dec DX

    
    inc CX
    inc CX
    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, clothes2
    int 10h
    inc CX
    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX


    pop CX
    push CX
    dec DX

    add CX, 3

    mov al, skin

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    pop CX
    push CX
    dec DX

    mov al, clothes1

    inc CX

    int 10h
    inc CX
    int 10h
    inc CX

    mov al, skin

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    pop CX
    push CX
    dec DX

    mov al, clothes1

    inc CX
    int 10h
    mov al, skin
    inc CX
    int 10h
    mov al, clothes1
    inc CX
    int 10h
    inc CX
    int 10h
    mov al, skin
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    mov al, clothes1
    inc CX
    int 10h
    mov al, skin
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    
    pop CX
    push CX
    dec DX

    mov al, clothes1

    inc CX
    int 10h
    mov al, skin
    inc CX
    int 10h
    mov al, clothes1
    inc CX
    int 10h
    mov al, skin
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    mov al, clothes1
    inc CX
    int 10h
    mov al, skin
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX
    push CX
    dec DX

    mov al, clothes1

    add CX, 2

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, skin
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, clothes1
    int 10h
    inc CX
    mov al, skin
    int 10h
    inc CX

    pop CX
    push CX
    dec DX

    mov al, clothes2

    add CX, 3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    pop CX
    push CX
    dec DX

    add CX, 4
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX



    pop CX
        
    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX

    ret

drawMario endp
end