.model medium, stdcall
.stack 120h
.data
    blockBlack byte 00d        ;black
    blockBrown byte 185d         ; brown  
    comp word 0

.code
drawBlock proc x:word, y:word

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
    mov comp, 0
    BLOOP:

    cmp comp,2
    JE Exi
    push CX
    mov al,blockBlack
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
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
    cmp BX,3
    JE BL2
    push CX

    mov al,blockBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,blockBlack
    int 10h
    inc CX

    mov al,blockBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,blockBlack
    int 10h
    inc CX

    mov al,blockBrown
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

    ;row5
    mov al,blockBlack
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
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
    cmp BX,3
    JE BL4
    push CX
    
    mov al,blockBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,blockBlack
    int 10h
    inc CX

    mov al,blockBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,blockBlack
    int 10h

    dec DX
    inc BX
    pop CX
   
    jmp BL3

BL4:

    pop CX
    push CX

    mov al,blockBlack
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
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
Exi:
    pop CX
    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX


    ret

drawBlock endp
end
