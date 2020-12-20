.model small
.stack 120h
.data

    Ecolor byte 04d                ;red
    
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

    ;row 1

    









    Exit: 
    mov ah, 04ch
    int 21h
main endp
end