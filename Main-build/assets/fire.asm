.model medium, stdcall
.stack 120h
.data

    fireRed byte 04d              ;red color
    fireYellow byte 14d                ;yellow color
.code

drawFire proc x:word, y:word

    
    push AX
    push BX
    push CX
    push DX
    push SI
    push DI

    mov AX, @data
    mov DS, AX
    mov AX, 0

    mov CX, x
    mov DX, y
    push CX
    mov ah, 0ch
    add CX,4
    
    mov al,fireRed
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

    mov al,fireRed
    int 10h 
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    mov al,fireRed
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX

    mov al,fireRed
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

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
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

    mov al,fireRed
    int 10h
    inc CX

    
    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,fireRed
    int 10h

    pop CX                  ;row 4
    push CX
    dec DX
    add CX,1

    mov al,fireRed
    int 10h
    inc CX
    int 10h 
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    add CX,2

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
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
    
    mov al,fireRed
    int 10h

    pop CX                    ;row 5
    push CX
    dec DX

    mov al,fireRed
    int 10h 
    inc CX

    
    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,3

    
    mov al,fireYellow
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

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX

    mov al,fireYellow
    int 10h

    pop CX          ;row 6
    push CX 
    dec DX

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    add CX,5

    mov al,fireYellow
    int 10h
    add CX,5

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX

    mov al,fireRed
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

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    add CX,15

    mov al,fireYellow
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

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    add CX,14

    mov al,fireYellow
    int 10h
    add CX,4

    mov al,fireYellow
    int 10h

    pop CX       ;row 9
    push CX
    dec DX

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    add CX,11

    mov al,fireYellow
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

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    add CX,9

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    inc CX
    int 10h
    inc CX

    mov al,fireRed
    int 10h

    pop CX                  ;row 11
    push CX
    dec DX
    inc CX

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
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

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    inc CX

    mov al,fireRed
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 


    pop CX                  ;row 12
    push CX
    dec DX
    add CX,2

    mov al,fireRed
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    inc CX

    mov al,fireRed
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

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    inc CX
    int 10h
    inc CX

    mov al,fireRed
    int 10h

    pop CX                  ;row 13
    push CX
    dec DX
    add CX,3

    mov al,fireRed
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,fireYellow
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 
    inc CX

    mov al,fireRed
    int 10h  
    add CX,3

    mov al,fireRed
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

    mov al,fireRed
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h 


    pop CX              ;row 15
    push CX
    dec DX
    add CX,8

    mov al,fireYellow
    int 10h
    add CX,3

    mov al,fireYellow
    int 10h

    pop CX
        
    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX

    ret


    ret
drawFire endp
end