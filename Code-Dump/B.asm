.model small
.stack 120h
.data
    Bcolor1 byte 01d        ;black
    Bcolor2 byte 06d        ;brown
    skin byte 14d

.code
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
    add CX,4

    mov al,Bcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX              ;row2
    push CX
    dec DX
    add CX,2

    mov al,Bcolor1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Bcolor2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    mov al,Bcolor1
    int 10h

    pop CX              ;row3
    push CX
    dec DX

    mov al,Bcolor1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Bcolor2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Bcolor1
    int 10h

    pop CX              ;row4
    push CX
    dec DX

     mov al,skin
    int 10h
    inc CX

    mov BX,1
    BL1:
    cmp BX,8
    jE BL2
    mov al,Bcolor2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
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
BL2:
     mov al,Bcolor1
    int 10h













        Exit: 
    mov ah, 04ch
    int 21h
main endp
end