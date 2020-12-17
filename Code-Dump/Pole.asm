.model small
.stack 120h
.data
    polecolor DB 15d
.code

main proc
    mov AX, @data
    mov DS, AX
    mov AX, 0

    mov ah, 0
    mov al, 13H
    int 10h

    mov CX, 310d
    mov DX, 190d
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
    mov ah, 04ch
    int 21h
main endp
end
