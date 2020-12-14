.model small
.stack 100h
.data
    lightGreen DB 48d
    border byte 01d
    darkGreen byte 193d
    yAxis word 100d
    upperHeight word 6
    lowerHeight word 8
.code
jmp main

print proc
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
print endp


main proc
    mov AX, @data
    mov DS, AX
    mov AX, 0
    mov ah, 0
    mov al, 13H
    int 10h

    mov CX, 160d
    mov DX, 100d
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
    mov DX, yAxis
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
    mov yAxis, DX

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
        call print
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
    mov DX, yAxis
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
        call print
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


Exit: 
    mov ah, 04ch
    int 21h
main endp
end