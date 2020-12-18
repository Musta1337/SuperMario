.model small, stdcall
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


    mov CX, x
    mov DX, y
    push CX
    mov ah, 0ch



    mov al, wclothes1
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
    

    pop CX
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
    

    pop CX
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
    

    pop CX
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

    pop CX
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


    pop CX
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
    





    pop CX
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


    pop CX
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





    pop CX
    push CX
    dec DX
    add CX,8

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

    mov al,wclothes1
    int 10h



    pop CX
    push CX
    dec DX
    add CX,5

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
    
    mov al,wclothes1
    int 10h
    inc CX


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

    mov al,wclothes1
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

    mov al,wskin
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,wclothes1     ;arm check
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    



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
  
    mov al,wclothes1
    int 10h
    inc CX
    int 10h 
    inc CX 

    mov al,wskin
    int 10h
    inc CX
    int 10h
    add CX,2

    mov al,wclothes1             ;arm
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
    inc CX 
    int 10h 
    add CX,4 

    mov al,wskin             
    int 10h
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX      





    pop CX
    push CX
    dec DX
    add CX,17

    mov al,wskin             
    int 10h
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX      

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