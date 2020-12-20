.model medium, stdcall
.stack 120h
.data
    enemySkin DB 6d
    Eclothes1 byte 00d
    Eclothes2 byte 15d
.code

drawEnemy proc x:word, y:word



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
    mov al,enemySkin
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

    mov al,enemySkin
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

    mov al,enemySkin
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

    mov al,enemySkin
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

    mov al,enemySkin
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

    mov al,enemySkin
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

    mov al,enemySkin
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

    mov al,enemySkin
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

    mov al,enemySkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
   

   pop CX
    push CX
    dec DX
    inc CX

    mov al,enemySkin
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

    mov al,enemySkin
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

    mov al,enemySkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h    


    pop CX
    push CX
    dec DX
    add CX,2

    mov al,enemySkin
    int 10h
    inc CX

    mov al,Eclothes1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,enemySkin
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

    mov al,enemySkin
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
    

        
    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX

    ret

drawEnemy endp
end