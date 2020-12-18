.model small, stdcall
.stack 120h
.data
    flipSkin DB 14d
    flipc1 byte 06d
    flipc2 byte 04d
.code

drawWBackward proc x:word, y:word
 
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

    
    mov al, flipc2                ;1st row red portion
    add CX,8
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX, 3

    mov al,flipc1
    int 10h


    pop CX
    push CX
    dec DX
    add CX,5

    mov al,flipc2         ;row 2
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

    mov al,flipc1
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

    mov al,flipc2
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

    mov al,flipc1
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

    mov al,flipc2
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

    mov al,flipc1
    int 10h
    add CX,2

    mov al,flipSkin
    int 10h



    pop CX              ;row 5
    push CX
    dec DX

    mov al,flipc1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc2
    int 10h
    inc CX

    mov al,flipSkin
    int 10h
    inc CX

    mov al,flipc2
    int 10h
    inc CX
    int 10h
    inc CX

     mov al,flipSkin
    int 10h 
    inc CX   

    mov al,flipc2
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX

    mov al,flipc2
    int 10h
    inc CX
    int 10h
    add CX,2

    mov al,flipSkin
    int 10h 
    inc CX   
    int 10h
    inc CX
    int 10h




    pop CX              ;row 6
    push CX
    dec DX

    mov al,flipc1
    int 10h
    add CX,3

    mov al,flipc2
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

    mov al,flipc1
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

    mov al,flipSkin
    int 10h
    inc CX
    int 10h



       pop CX              ;row 7
    push CX
    dec DX

    mov al,flipc1
    int 10h
    add CX,3

    mov al,flipc2
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

    mov al,flipc1
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

    mov al,flipc2
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc2
    int 10h
    inc CX

    mov al,flipc1
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

    mov al,flipSkin
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

    mov al,flipc1
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

    mov al,flipSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX
    int 10h

    pop CX          ;row 11
    push CX
    dec DX

    int 10h
    inc CX
    
    mov al,flipSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX

    mov al,flipSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipSkin
    int 10h
    inc CX

    mov al,flipc1
    int 10h




    pop CX          ;row 12
    push CX
    dec DX

    mov al,flipc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipSkin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX

    mov al,flipSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX

    mov al,flipSkin
    int 10h
    inc CX

    mov al,flipc1
    int 10h



    pop CX          ;row 13
    push CX
    dec DX

    mov al,flipc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,2

    mov al,flipSkin
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX

    mov al,flipSkin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h


    pop CX          ;row 14
    push CX
    dec DX

    mov al,flipSkin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flipc2
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

    mov al,flipSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,3

    
    mov al,flipc2
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

    mov al,flipSkin
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


drawWBackward endp
end