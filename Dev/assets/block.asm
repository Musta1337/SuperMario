.model large, stdcall
.stack 120h
.data
    B1 byte 01d        ;black
    B2 byte 185d         ; brown  
    comp word 0

.code
drawBlock proc x:word, y:word
    mov AX, @data
    mov DS, AX

    mov CX, x
    mov DX, x
    push CX
    mov ah, 0ch

    BLOOP:

    push CX
    cmp comp,2
    JE Exit

    mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    

    

;row2
    
    pop CX
    push CX
    dec DX

    mov BX,0

BL1:
    push CX
    cmp BX,3
    JE BL2

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

        dec DX
        inc BX
        pop CX
jmp BL1

BL2:
    pop CX
    push CX
    dec DX

    ;row5
    mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
;row 6


    pop CX
    push CX
    dec DX

    mov BX,0

BL3:

    push CX
    cmp BX,3
    JE BL4
    
    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h

    dec DX
    inc BX
    pop CX
   
    jmp BL3

BL4:

    pop CX
    push CX
    dec DX

    mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    dec DX
    add comp,1
    pop CX

jmp BLOOP

    ret
drawBlock endp
end
