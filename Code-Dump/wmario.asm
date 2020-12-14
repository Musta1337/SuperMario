.model small
.stack 120h
.data
    skin DB 14d
    clothes1 byte 06d
    clothes2 byte 04d
    unique byte 13d
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


    mov al, clothes1
    inc CX
    int 10h
    add CX, 3
    mov al, clothes2
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
    int 10h
    inc CX
    int 10h
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

    add CX, 2
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
    int 10h
    inc CX
    int 10h
    inc CX
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

    pop CX
    push CX
    dec DX

    












    pop CX

Exit: 
    mov ah, 04ch
    int 21h
main endp
end