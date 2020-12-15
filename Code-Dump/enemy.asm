.model small
.stack 120h
.data
    skin DB 6d
    Eclothes1 byte 01d
    Eclothes2 byte 15d
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


    mov al, Eclothes1
    inc CX
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
     inc CX
    int 10h
    inc CX
    int 10h
    add CX,2  ;2 space
    int 10h
    inc CX
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

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,2        ;2 spaces
    int 10h
    inc CX
    int 10h
    inc CX
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

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    ;inc CX
    ;int 10h
    
    pop CX
    push CX
    dec DX
    inc CX
    inc CX

    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
   ; int 10h
    ;inc CX

    mov al,Eclothes1
    int 10h
    inc CX
    int 10h
    
    pop CX
    push CX
    dec DX
    add CX,4

    mov al,Eclothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
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
    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX
    int 10h
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

    pop CX
    push CX
    dec DX

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
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
    
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes2
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
    inc Cx

    mov al,Eclothes2
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

    pop CX
    push CX
    dec DX


    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX

    mov al,Eclothes1
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX


     mov al,Eclothes2
    int 10h
    inc CX

    mov al,Eclothes1
    int 10h
    inc CX

    mov al,Eclothes2
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


    pop CX
    push CX
    dec DX
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX

    mov al,Eclothes1
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

    mov al,Eclothes1
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
   

   pop CX
    push CX
    dec DX
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX

    mov al,Eclothes1
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

    mov al,Eclothes1
    int 10h
    inc CX

    mov al,Eclothes2
    int 10h
    inc CX

    mov al,skin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h    


    pop CX
    push CX
    dec DX
    add CX,2

    mov al,skin
    int 10h
    inc CX

    mov al,Eclothes1
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
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Eclothes1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,skin
    int 10h



    pop CX
    push CX
    dec DX
    add CX,3


    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
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
    add CX,4


    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
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
    add CX,5

    int 10h
    inc CX
    int 10h
    inc CX
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
    add CX,6

    int 10h
    inc CX
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