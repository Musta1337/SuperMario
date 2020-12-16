.model small
.stack 120h
.data
    skin DB 14d
    color1 byte 15d         ;white color
    color2 byte 02d            ;green color
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
    add CX,15
    
    mov al,color1
    int 10h

    pop CX                 
    push CX
    dec DX
    add CX,14

    int 10h
    inc CX
    int 10h

    pop CX                 
    push CX
    dec DX
    add CX,13    

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
 
    pop CX                 
    push CX
    dec DX
    add CX,12    

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
    add CX,11    

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
    add CX,10   

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
    add CX,9   

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
    add CX,8  

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
    add CX,7  

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    
    mov al,color2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,color1
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

    mov al,color2
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

    mov al,color1
    int 10h

    pop CX                 
    push CX
    dec DX
    add CX,5    

     mov al,color1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,color2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX 

    mov al,color1
    int 10h
    inc CX   

    mov al,color2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX 

    mov al,color1
    int 10h
    inc CX

    pop CX                 
    push CX
    dec DX
    add CX,4    

    mov al,color1
    int 10h
    inc CX   
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX 

    mov al,color2
    int 10h
    inc CX

    mov al,color1
    int 10h
    inc CX   

    mov al,color2
    int 10h
    inc CX   
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,color1
    int 10h
    inc CX   

    mov al,color2
    int 10h
    inc CX   

    mov al,color1
    int 10h
    inc CX  

    pop CX                 
    push CX
    dec DX
    add CX,3    

    mov al,color1
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

    mov al,color2
    int 10h
    inc CX

    mov al,color1
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,color2
    int 10h
    inc CX

    mov al,color1
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,color2
    int 10h
    inc CX

     mov al,color1
    int 10h
    inc CX   

    pop CX                 
    push CX
    dec DX
    add CX,2   

    mov al,color1
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

    mov al,color2
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,color1
    int 10h
    inc CX  

    mov al,color2
    int 10h
    inc CX   

    mov al,color1
    int 10h
    inc CX   

    mov al,color2
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,color1
    int 10h
    inc CX   

    pop CX                 
    push CX
    dec DX
    add CX,1  

    mov al,color1
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

     mov al,color2
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

    mov al,color1
    int 10h
    inc CX   
    int 10h
    inc CX

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

Exit: 
    mov ah, 04ch
    int 21h
main endp
end