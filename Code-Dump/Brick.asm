.model small
.stack 120h
.data
    B1 byte 01d        ;black
    B2 byte 185d         ; brown  
    B3 byte 14d          ;skin

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

    mov al,B2       ;row1
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B2
    int 10h

    ;row2 
    
    pop CX              
    push CX
    dec DX


    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX
    int 10h


;row 3

    pop CX              
    push CX
    dec DX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    ;row 4

    pop CX              
    push CX
    dec DX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

;row 5

    pop CX
    push CX
    dec DX

    mov al,B3
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    
    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

     mov al,B1
    int 10h
;row 6

pop CX
push CX
dec DX

   mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
;row 7
    pop CX
    push CX
    dec DX

     mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h

;row 8
    pop CX
    push CX
    dec DX

         mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h


;row 9
    pop CX
    push CX
    dec DX

         mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h


;row 10

 pop CX
    push CX
    dec DX

         mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h

    ;row 11



 pop CX
    push CX
    dec DX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B2
    int 10h

    ;row 12

 pop CX
    push CX
    dec DX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B3
    int 10h


;row 13


    pop CX
    push CX
    dec DX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B3
    int 10h


    ;row 14

    
    pop CX
    push CX
    dec DX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    
    mov al,B3
    int 10h

    ;row 15
    
    pop CX
    push CX
    dec DX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    
    mov al,B3
    int 10h

    ;row 16



    pop CX
    push CX
    dec DX

    mov al,B1
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
     int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,B1
    int 10h
    inc CX

    mov al,B2
    int 10h
    inc CX

    mov al,B3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    
    mov al,B2
    int 10h









          Exit: 
    mov ah, 04ch
    int 21h
main endp
end

