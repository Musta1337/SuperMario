.model medium, stdcall
.stack 120h
.data
    blockBlack byte 00d        ;black
    blockBrown byte 185d         ; brown  
    comp word 0
    gate byte 04d 
    comp2 word 0
    flagWhite byte 15d         ;white color
    flagGreen byte 02d            ;green color
    poleWhite byte 15d   ;white 
    
.code



drawBlock proc x:word, y:word

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
    mov comp, 0
    BLOOP:

    cmp comp,2
    JE Exi
    push CX
    mov al,blockBlack
    int 10h
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
    

    

;row2
    
    pop CX
    push CX
    dec DX

    mov BX,0

BL1:
    cmp BX,3
    JE BL2
    push CX

    mov al,blockBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,blockBlack
    int 10h
    inc CX

    mov al,blockBrown
    int 10h
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

    mov al,blockBlack
    int 10h
    inc CX

    mov al,blockBrown
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

        dec DX
        inc BX
        pop CX
jmp BL1

BL2:
    pop CX
    push CX

    ;row5
    mov al,blockBlack
    int 10h
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
;row 6


    pop CX
    push CX
    dec DX

    mov BX,0

BL3:
    cmp BX,3
    JE BL4
    push CX
    
    mov al,blockBrown
    int 10h
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

    mov al,blockBlack
    int 10h
    inc CX

    mov al,blockBrown
    int 10h
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

    mov al,blockBlack
    int 10h

    dec DX
    inc BX
    pop CX
   
    jmp BL3

BL4:

    pop CX
    push CX

    mov al,blockBlack
    int 10h
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

    dec DX
    add comp,1
    pop CX
jmp BLOOP
Exi:
    pop CX
    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX


    ret

drawBlock endp

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

drawKingdom proc X:word,Y:word

    push AX
    push BX
    push CX
    push DX
    push SI
    push DI

    mov AX, @data
    mov DS, AX

    mov CX, X
    mov DX, Y
    push CX

    mov ah, 0ch
    
    invoke drawBlock,X,Y
    add CX,16

    invoke drawBlock,CX,Y
    add CX,16

    mov BX,0
    mov DX,Y
    KL1:
    cmp BX,34              ;for height of gate
    JE KL2
    push CX

    mov al,gate
    int 10h  
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
    inc CX

    inc BX
    dec DX
    pop CX

    jmp KL1

KL2:
    add CX,16
    mov DX,Y

    invoke drawBlock,CX,Y
    add CX,16

    invoke drawBlock,CX,Y
    add CX,16

 


    pop CX              ;row 2
    push CX
    sub DX,16

    invoke drawBlock,CX,DX
    add CX,16

    invoke drawBlock,CX,DX
    add CX,16

        mov al,gate
    int 10h  
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
    inc CX

    invoke drawBlock,CX,DX
    add CX,16

    invoke drawBlock,CX,DX
    add CX,16

    
    ;row 3
     pop CX              
    push CX
    sub DX,16

    invoke drawBlock,CX,DX
    add CX,16

    invoke drawBlock,CX,DX
    add CX,16

    invoke drawBlock,CX,DX
    add CX,16

    invoke drawBlock,CX,DX
    add CX,16

    invoke drawBlock,CX,DX
    add CX,16


    ;row 4

    pop CX
    push CX
    sub DX,16

    invoke drawBlock,CX,DX
    add CX,32

    invoke drawBlock,CX,DX
    add CX,32

    invoke drawBlock,CX,DX



    ;row 5 (pole)

    pop CX
    push CX
    sub DX,18
    add CX,39

    mov BX,0

    KL3:
        cmp BX,15
        JE KL4

        push CX
        mov al,poleWhite
        int 10h

        dec DX
        inc BX
        pop CX
        jmp KL3

    KL4:
        pop CX
        push CX
        add CX,24

        invoke drawFlag,CX,DX

    pop CX

    pop DI
    pop SI
    pop DX
    pop CX
    pop BX
    pop AX

    ret

drawKingdom endp



.STARTUP
main proc

    mov ah, 0
    mov al, 13h
    int 10h

    mov ah, 06h
    mov al, 0
    mov cx, 0
    mov dh, 80
    mov dl, 80
    mov bh, 3d
    int 10h

  ;  invoke drawBlock,160,100 
  invoke drawKingdom,100,100

main endp
.EXIT
end

