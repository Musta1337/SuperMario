.model small
.stack 120h
.data
    Bcolor1 byte 01d        ;black
    Bcolor2 byte 06d        ;brown
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

    mov al,Bcolor1          ;row1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
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

    mov al,Bcolor1
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
    int 10h
    inc CX

    mov al,Bcolor1
    int 10h

    pop CX              ;row 3
    push CX
    dec DX

    mov al,Bcolor1
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
    int 10h
    inc CX

    mov al,Bcolor1
    int 10h
    inc CX

      pop CX              ;row 4
    push CX
    dec DX

    mov al,Bcolor1
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
    int 10h
    inc CX

    mov al,Bcolor1
    int 10h
    inc CX

      pop CX              ;row 5
    push CX
    dec DX

    mov al,Bcolor1
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
    int 10h
    inc CX

    mov al,Bcolor1
    int 10h

    pop CX              ;row 6
    push CX
    dec DX

    mov BX,0
    L1:
    cmp BX,9
    jE Exit
    mov al,Bcolor1          
    int 10h
    inc CX
    Inc BX
    jmp L1

    Exit: 
    mov ah, 04ch
    int 21h
main endp
end