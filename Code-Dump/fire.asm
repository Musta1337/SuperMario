.model small
.stack 120h
.data

    color1 byte 04d              ;red color
    color2 byte 14d                ;yellow color
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
    add CX,4
    
    mov al,color1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,3

    int 10h
    
    pop CX                 
    push CX
    dec DX
    add CX,3

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
    int 10h

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
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 

    pop CX                 ;row 3
    push CX
    dec DX
    add CX,2

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

    
    mov al,color2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,color1
    int 10h

    pop CX                  ;row 4
    push CX
    dec DX
    add CX,1

    mov al,color1
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
    add CX,2

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

    pop CX                    ;row 5
    push CX
    dec DX

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
    int 10h 
    add CX,3

    
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
    inc CX

    mov al,color2
    int 10h
    inc CX

    mov al,color2
    int 10h

    pop CX          ;row 6
    push CX 
    dec DX

    mov al,color1
    int 10h
    inc CX

    mov al,color2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    add CX,5

    mov al,color2
    int 10h
    add CX,5

    mov al,color2
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
    int 10h 
    inc CX
    int 10h 


    pop CX              ;row 7
    push CX
    dec DX
    inc CX

    mov al,color1
    int 10h
    inc CX

    mov al,color2
    int 10h
    add CX,15

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

    pop CX      ;row 8
    push CX
    dec DX

    mov al,color1
    int 10h
    inc CX

    mov al,color2
    int 10h
    inc CX
    int 10h
    add CX,14

    mov al,color2
    int 10h
    add CX,4

    mov al,color2
    int 10h

    pop CX       ;row 9
    push CX
    dec DX

    mov al,color1
    int 10h
    inc CX

    mov al,color2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    add CX,11

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

    
    pop CX                  ;row 10
    push CX
    dec DX
    inc CX

    mov al,color1
    int 10h
    inc CX

    mov al,color2
    int 10h
    inc CX
    int 10h
    add CX,9

    mov al,color2
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

    pop CX                  ;row 11
    push CX
    dec DX
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
    int 10h
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,2

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
    int 10h
    inc CX
    int 10h 


    pop CX                  ;row 12
    push CX
    dec DX
    add CX,2

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

    mov al,color1
    int 10h

    pop CX                  ;row 13
    push CX
    dec DX
    add CX,3

    mov al,color1
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
    add CX,3

    mov al,color1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    inc CX
    int 10h 


    pop CX                  ;row 14
    push CX
    dec DX
    add CX,5

    mov al,color1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 


    pop CX              ;row 15
    push CX
    dec DX
    add CX,8

    mov al,color2
    int 10h
    add CX,3

    mov al,color2
    int 10h

    













































    






   
    


















Exit: 
    mov ah, 04ch
    int 21h
main endp
end