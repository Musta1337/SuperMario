.model medium, stdcall
.stack 120h
.data
    wskin DB 14d
    wclothes1 byte 06d
    wclothes2 byte 04d
.code

drawWMario proc x:word, y:word
    push AX
    push BX
    push CX
    push DX
    push SI
    push DI

    mov AX, @data
    mov DS, AX

    sub x, 4
    mov CX, x
    mov DX, y
    push CX
    mov ah, 0ch



    mov al, wclothes1           ;row 1
    add CX,2
    int 10h
    add CX, 3

    mov al,wclothes2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    

    pop CX                      ;row 2
    push CX
    dec DX
    add CX,2
    

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wclothes2
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
    

    pop CX          ;row 3
    push CX
    dec DX
    add CX,3

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX


    mov al,wclothes2
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

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    

    pop CX          ;row 4
    push CX
    dec DX
    add CX,2

    mov al,wskin
    int 10h
    add CX,2

    mov al,wclothes1
    int 10h
    inc CX

    mov al,wclothes2
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
 

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h


    pop CX          ;row 5
    push CX
    dec DX
    add CX,1

    mov al,wskin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,2

    mov al,wclothes2
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wclothes1
    int 10h
    inc CX

    mov al,wclothes2
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wskin
    int 10h
    inc CX

    mov al,wclothes2
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wskin
    int 10h
    inc CX

    mov al,wclothes2
    int 10h
    inc CX    

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h


    pop CX              ;row 6
    push CX
    dec DX
    add CX,1

    mov al,wskin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wclothes2
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
    add CX,3

    mov al,wclothes1
    int 10h
    

    pop CX              ;row 7
    push CX
    dec DX
    add CX,2

    mov al,wclothes1
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
    
    mov al,wclothes2
    int 10h
    inc CX

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX



    mov al,wclothes2
    int 10h
    add CX,3

    mov al,wclothes1
    int 10h    


    pop CX                  ;row 8
    push CX
    dec DX
    add CX,2

     mov al,wclothes1
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

    mov al,wclothes2
    int 10h
    inc CX

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wclothes2
    int 10h
    inc CX

    mov al,wclothes1
    int 10h
    inc CX

    ;row 9

    pop CX
    push CX
    dec DX

    add CX,7

    mov al,wskin
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

    mov al,wclothes1
    int 10h 

    ;row 10
    pop CX
    push CX
    dec DX

    add CX,5

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wskin
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

    mov al,wclothes1
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


    ;row 11
    pop CX
    push CX
    dec DX

    add CX,5

    mov al,wclothes1
    int 10h
    inc CX

    mov al,wskin
    int 10h 
    inc CX

    mov al,wclothes1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wskin
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX

    mov al,wclothes1
    int 10h
    inc CX

    mov al,wskin
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX

    mov al,wclothes1
    int 10h 
    inc CX

        ;row 12
    pop CX
    push CX
    dec DX

    add CX,5

    mov al,wclothes1
    int 10h
    inc CX

    mov al,wskin
    int 10h 
    inc CX

    mov al,wclothes1
    int 10h
    inc CX

    mov al,wskin
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX

    mov al,wclothes1        ;eye
    int 10h
    inc CX

    mov al,wskin
    int 10h 
    inc CX
    int 10h 
    inc CX

    mov al,wclothes1
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX

    ;row 13
    pop CX
    push CX
    dec DX

    add CX,6

    mov al,wclothes1
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX

    mov al,wskin
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX

    
    mov al,wclothes1            ;eye
    int 10h 
    inc CX

    mov al,wskin
    int 10h 
    add CX,2

    mov al,wclothes1
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX

                ;row 14
    pop CX
    push CX
    dec DX

    add CX,6

    mov al,wclothes2
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

    mov al,wskin
    int 10h 
    inc CX
    int 10h 

                ;row 15
    pop CX
    push CX
    dec DX

    add CX,7

     mov al,wclothes2
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
    add CX,3


    mov al,wskin
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 

    ;row 16

    pop CX
    push CX
    dec DX

    add CX,15

    mov al,wskin
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

drawWMario endp
end