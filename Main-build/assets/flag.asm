.model small, stdcall
.stack 120h
.data
    flagWhite byte 15d         ;white color
    flagGreen byte 02d            ;green color
.code

drawFlag proc x:word, y:word
 

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
    add CX,15
    
    mov al,flagWhite
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
    
    mov al,flagGreen
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flagWhite
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

    mov al,flagGreen
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

    mov al,flagWhite
    int 10h

    pop CX                 
    push CX
    dec DX
    add CX,5    

     mov al,flagWhite
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flagGreen
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX 

    mov al,flagWhite
    int 10h
    inc CX   

    mov al,flagGreen
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX 

    mov al,flagWhite
    int 10h
    inc CX

    pop CX                 
    push CX
    dec DX
    add CX,4    

    mov al,flagWhite
    int 10h
    inc CX   
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX 

    mov al,flagGreen
    int 10h
    inc CX

    mov al,flagWhite
    int 10h
    inc CX   

    mov al,flagGreen
    int 10h
    inc CX   
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,flagWhite
    int 10h
    inc CX   

    mov al,flagGreen
    int 10h
    inc CX   

    mov al,flagWhite
    int 10h
    inc CX  

    pop CX                 
    push CX
    dec DX
    add CX,3    

    mov al,flagWhite
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

    mov al,flagGreen
    int 10h
    inc CX

    mov al,flagWhite
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,flagGreen
    int 10h
    inc CX

    mov al,flagWhite
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,flagGreen
    int 10h
    inc CX

     mov al,flagWhite
    int 10h
    inc CX   

    pop CX                 
    push CX
    dec DX
    add CX,2   

    mov al,flagWhite
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

    mov al,flagGreen
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,flagWhite
    int 10h
    inc CX  

    mov al,flagGreen
    int 10h
    inc CX   

    mov al,flagWhite
    int 10h
    inc CX   

    mov al,flagGreen
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,flagWhite
    int 10h
    inc CX   

    pop CX                 
    push CX
    dec DX
    add CX,1  

    mov al,flagWhite
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

     mov al,flagGreen
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

    mov al,flagWhite
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

    pop CX
        
    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX

    ret



drawFlag endp
end