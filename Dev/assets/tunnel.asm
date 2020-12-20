.model medium, stdcall
.stack 100h
.data
    lightGreen DB 48d
    border byte 01d
    darkGreen byte 193d
.code

printEPole proc
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
        int 10h
        inc CX      
    ret
printEPole endp


drawTunnel proc x:word, y:word, lowerHeight:word, upperHeight:word

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

    mov BX, CX
    add BX, 2
    mov CX, lowerHeight

    oneLoop:
        push CX
        mov CX, BX
        mov al, border
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, darkGreen
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, lightGreen
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
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, darkGreen
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
        ;Change from here.
        int 10h
        inc CX      
        mov al, lightGreen
        int 10h
        inc CX
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX  
        mov al, border
        int 10h
        pop CX
        dec DX
        dec DX
    loop oneLoop    

    mov CX, lowerHeight
    mov DX, y
    dec DX

    twoLoop:
        push CX
        mov CX, BX
        mov al, border
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, darkGreen
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, lightGreen
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
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, darkGreen
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
        ;Change from here.
        mov al, lightGreen
        int 10h
        inc CX      
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        int 10h
        inc CX  
        mov al, border
        int 10h
        pop CX
        dec DX
        dec DX
    loop twoLoop  

    inc DX
    mov al, border
    mov CX, BX
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
    int 10h
    inc CX
    int 10h
    inc CX

    dec DX
    dec BX
    dec BX
    mov CX, BX
    mov al, border
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

    dec DX
    mov y, DX

    mov CX, upperHeight
    
    threeLoop:
        push CX
        mov CX, BX
        mov al, border
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, darkGreen
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, lightGreen
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
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, darkGreen
        call printEPole
        ;Change from here.
        int 10h
        inc CX      
        mov al, lightGreen
        int 10h
        inc CX
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        int 10h
        inc CX  
        mov al, border
        int 10h
        pop CX
        dec DX
        dec DX
    loop threeLoop
    mov DX, y
    dec DX
    mov CX, upperHeight

    fourLoop:
        push CX
        mov CX, BX
        mov al, border
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, darkGreen
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, lightGreen
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
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX
        mov al, darkGreen
        call printEPole
        ;Change from here.
        mov al, lightGreen
        int 10h
        inc CX      
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        mov al, darkGreen
        int 10h
        inc CX
        mov al, lightGreen
        int 10h
        inc CX
        int 10h
        inc CX  
        mov al, border
        int 10h
        pop CX
        dec DX
        dec DX
    loop fourLoop

    inc DX

    mov CX, BX
    mov al, border
    int 10h
    inc CX
    mov al, border
    int 10h
    mov al, darkGreen
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
    mov al, lightGreen
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
        mov al, darkGreen
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
        int 10h
        inc CX   
        mov al, border
        int 10h

    mov CX, BX
    dec DX
    mov al, border
    int 10h
    inc CX
    mov al, lightGreen
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
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    mov al, border
    int 10h
    inc CX

    dec DX
    mov CX, BX

    mov al, border
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

drawTunnel endp
end