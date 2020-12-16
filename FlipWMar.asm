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

    
    mov al, clothes2                ;1st row red portion
    add CX,8
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX, 3

    mov al,clothes1
    int 10h


    pop CX
    push CX
    dec DX
    add CX,5

    mov al,clothes2         ;row 2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX              ;row 3
    push CX
    dec DX

    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h



    pop CX              ;row 4
    push CX
    dec DX

    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    add CX,2

    mov al,skin
    int 10h



    pop CX              ;row 5
    push CX
    dec DX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes2
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX

    mov al,clothes2
    int 10h
    inc CX
    int 10h
    inc CX

     mov al,skin
    int 10h 
    inc CX   

    mov al,clothes2
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX

    mov al,clothes2
    int 10h
    inc CX
    int 10h
    add CX,2

    mov al,skin
    int 10h 
    inc CX   
    int 10h
    inc CX
    int 10h




    pop CX              ;row 6
    push CX
    dec DX

    mov al,clothes1
    int 10h
    add CX,3

    mov al,clothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h



       pop CX              ;row 7
    push CX
    dec DX

    mov al,clothes1
    int 10h
    add CX,3

    mov al,clothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    


    pop CX             ;row 8
    push CX
    dec DX
    add CX,3

    int 10h
    inc CX

    mov al,clothes2
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes2
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h





    pop CX             ;row 9
    push CX
    dec DX
    add CX,2

    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX





    pop CX          ;row 10
    push CX
    dec DX
    add CX,1

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h

    pop CX          ;row 11
    push CX
    dec DX

    int 10h
    inc CX
    
    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX

    mov al,clothes1
    int 10h




    pop CX          ;row 12
    push CX
    dec DX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX

    mov al,clothes1
    int 10h



    pop CX          ;row 13
    push CX
    dec DX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,2

    mov al,skin
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h


    pop CX          ;row 14
    push CX
    dec DX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,clothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX


    pop CX          ;row 15
    push CX
    dec DX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,3

    
    mov al,clothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX


    pop CX          ;row 16
    push CX
    dec DX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h








   pop CX

Exit: 
    mov ah, 04ch
    int 21h
main endp
end