.model small, stdcall
.stack 120h
.data
    standSkin DB 14d
    sc1 byte 06d
    sc2 byte 04d
.code

drawBackward proc x:word, y:word
 

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


    mov al,sc1                 ;row 1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,5

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h



    pop CX                  ;row 2
    push CX
    dec DX
    inc CX

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,5

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h



    pop CX                  ;row 3
    push CX
    dec DX
    add CX,2

    mov al,sc2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    add CX,3

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h


    pop CX                  ;row 4
    push CX
    dec DX

    mov al,standSkin
    int 10h
    inc CX
    int 10h
    inc CX

     mov al,sc2
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

    mov al,standSkin
    int 10h
    inc CX
    int 10h
    

    pop CX                  ;row 5
    push CX
    dec DX

    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc2
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

    mov al,standSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX


    pop CX                  ;row 6
    push CX
    dec DX

    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX

    mov al,sc2
    int 10h
    inc CX    

    mov al,standSkin
    int 10h
    inc CX

    mov al,sc2
    int 10h
    inc CX  
    int 10h
    inc CX    

     mov al,standSkin
    int 10h
    inc CX

    mov al,sc2
    int 10h
    inc CX  

    mov al,sc1
    int 10h
    inc CX

    mov al,standSkin
    int 10h
    inc CX
    int 10h
    inc CX


    pop CX                  ;row 7
    push CX
    dec DX

    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    
    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX                  ;row 8
    push CX
    dec DX
    inc CX

    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

     mov al,sc2
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc2
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h



    pop CX                  ;row 9
    push CX
    dec DX
    add CX,4

    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc2
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX
    int 10h
    

    pop CX                  ;row 10
    push CX
    dec DX
    add CX,2

    mov al,standSkin
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


    pop CX                  ;row 11
    push CX
    dec DX
    add CX,1

    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,standSkin
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

    mov al,sc1
    int 10h
    inc CX
    int 10h


    pop CX                  ;row 12
    push CX
    dec DX


    mov al,standSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX

    mov al,standSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,standSkin
    int 10h
    inc CX

    mov al,sc1
    int 10h    


    pop CX                  ;row 13
    push CX
    dec DX
    inc CX

    mov al,standSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX

     mov al,standSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX

    mov al,standSkin
    int 10h
    inc CX

    mov al,sc1
    int 10h


    pop CX                  ;row 13
    push CX
    dec DX
    add CX,3

    mov al,standSkin
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX

    mov al,standSkin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,sc1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX


    pop CX                  ;row 14
    push CX
    dec DX
    add CX,1

    mov al,sc2
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
    
    
    pop CX                  ;row 15
    push CX
    dec DX
    add CX,4

    
    mov al,sc2
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


drawBackward endp
end