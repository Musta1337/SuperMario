.model medium, stdcall
.stack 120h
.data
    polecolor DB 15d
.code

drawPole proc x:word, y:word
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
    mov ah, 0ch

    
    mov BX,1
    L1:
        push CX
        cmp BX,170
        je Exit

        mov al,polecolor
        int 10h
        inc CX
        int 10h
        inc CX
        int 10h


        dec DX
        inc BX
        pop CX
    jmp L1
Exit:

    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX

    ret

drawPole endp
end
