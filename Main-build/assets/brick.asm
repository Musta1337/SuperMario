
.model medium, stdcall
.stack
.data
    brickBlack byte 00d        ;black
    brickBrown byte 185d         ; brown  
    brickSkin byte 14d          ;skin

.code

drawBrick proc x:word, y:word 
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

    ;mov CX, 160d
    ;mov DX, 100d
    push CX
    mov ah, 0ch

    mov al, brickBrown       ;row1
    int 10h
    inc CX

    mov al,brickBlack
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

    mov al,brickBrown
    int 10h
    inc CX

    mov al,brickBlack
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

    mov al,brickBrown
    int 10h

    ;row2 
    
    pop CX              
    push CX
    dec DX


    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX
    int 10h


;row 3

    pop CX              
    push CX
    dec DX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    ;row 4

    pop CX              
    push CX
    dec DX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBlack
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

;row 5

    pop CX
    push CX
    dec DX

    mov al,brickSkin
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBlack
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    
    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

     mov al,brickBlack
    int 10h
;row 6

pop CX
push CX
dec DX

   mov al,brickBlack
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
;row 7
    pop CX
    push CX
    dec DX

     mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBlack
    int 10h

;row 8
    pop CX
    push CX
    dec DX

         mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBlack
    int 10h


;row 9
    pop CX
    push CX
    dec DX

         mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBlack
    int 10h


;row 10

 pop CX
    push CX
    dec DX

         mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
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

    mov al,brickBlack
    int 10h

    ;row 11



 pop CX
    push CX
    dec DX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX

    mov al,brickBlack
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickBrown
    int 10h

    ;row 12

 pop CX
    push CX
    dec DX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickSkin
    int 10h


;row 13


    pop CX
    push CX
    dec DX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,brickSkin
    int 10h


    ;row 14

    
    pop CX
    push CX
    dec DX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    
    mov al,brickSkin
    int 10h

    ;row 15
    
    pop CX
    push CX
    dec DX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    
    mov al,brickSkin
    int 10h

    ;row 16



    pop CX
    push CX
    dec DX

    mov al, brickBlack
    int 10h
    inc CX

    mov al,brickSkin
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

    mov al,brickBlack
    int 10h
    inc CX

    mov al,brickBrown
    int 10h
    inc CX

    mov al,brickSkin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    
    mov al,brickBrown
    int 10h


    pop CX
    
    
    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX



    ret
drawBrick endp
end
