.model small
.stack 120h
.data
    MenuC1 DB 06d                    ;blue
    MenuC2 byte 15d                ;yellow
    MenuC3 byte 04d                ;red
    MenuC4 byte 02d                ;green 
    playerName db 127 DUP("$")
    promptName db "Enter your Name : ",'$'

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

    ;row 1


    mov al,MenuC1       ;S
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,3

    mov al,MenuC2           ;U
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,2

    mov al,MenuC3       ;P
    int 10h 
    add CX,5

    mov al,MenuC4       ;E
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,2

    mov al,MenuC2   ;R
    int 10h
    add CX,3

    int 10h


    ;row 2

    pop CX
    push CX
    dec DX

    add CX,3

    mov al,MenuC1       ;S
    int 10h 
    add CX,2

    mov al,MenuC2           ;U
    int 10h 
    inc CX
    add CX,2
    int 10h 
    add CX,2

    mov al,MenuC3       ;P
    int 10h 
    add CX,5

     mov al,MenuC4       ;E
     int 10h 
    add CX,5

    mov al,MenuC2      ;R
    int 10h 
    add CX,2

    int 10h

    ;row 3


    pop CX
    push CX
    dec DX
    add CX,1

    mov al,MenuC1           ;S
    int 10h 
    inc CX
    int 10h 
    add CX,3

    mov al,MenuC2               ;U
    int 10h 
    add CX,3

    int 10h 
    add CX,2 

    mov al,MenuC3           ;P
    int 10h 
    inc CX
    int 10h
    inc CX
    int 10h 
    add CX,3

    
    mov al,MenuC4       ;E
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,3

    mov al,MenuC2           ;R
    int 10h 
    inc CX
    int 10h
    inc CX
    int 10h 

    ;ROW 4

    pop CX
    push CX
    dec DX

    mov al,MenuC1       ;S
    int 10h 
    add CX,5

    mov al,MenuC2       ;U
    int 10h 
    add CX,3
    int 10h 
    add CX,2

    mov al,MenuC3   ;P
    int 10h 
    add CX,3
    int 10h 
    add CX,2

    mov al,MenuC4   ;E
    int 10h 
    add CX,5

    mov al,MenuC2       ;R
    int 10h 
    add CX,3
    int 10h

    ;ROW 5

    pop CX
    push CX
    dec DX
    inc CX

    mov al,MenuC1       ;S
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,2

    mov al,MenuC2       ;U
    int 10h 
    add CX,3
    int 10h 
    add CX,2

    mov al,MenuC3           ;P
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,3

    mov al,MenuC4                   ;E
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,2

    mov al,MenuC2                       ;R
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 


    
;For Mario

    

    pop CX
    push CX
    add DX,11

    mov al,MenuC1       ;M
    int 10h 
    add CX,4
    int 10h 
    add CX,2

    mov al,MenuC2   ;A
    int 10h 
    add CX,3
    int 10h 
    add CX,2 

    mov al,MenuC3       ;R
    int 10h 
    add CX,3 
    int 10h 
    add CX,2

    mov al,MenuC4  ;I
    int 10h 
    add CX,3

    mov al,MenuC2    ;O
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 


    ;row 2
    pop CX
    push CX
    dec DX

     mov al,MenuC1       ;M
    int 10h 
    add CX,4
    int 10h 
    add CX,2

    mov al,MenuC2   ;A
    int 10h 
    add CX,3
    int 10h 
    add CX,2 

    mov al,MenuC3       ;R
    int 10h 
    add CX,2
    int 10h 
    add CX,3

    mov al,MenuC4   ;I
    int 10h 
    add CX,2 

    mov al,MenuC2       ;O
    int 10h 
    add CX,4
    int 10h 

    ;row 3

    pop CX
    push CX
    dec DX

    mov al,MenuC1       ;M
    int 10h 
    add CX,2
    int 10h 
    add CX,2
    int 10h 
    add CX,2

    mov al,MenuC2       ;A
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,2

    mov al,MenuC3           ;R
    int 10h 
    inc CX
    int 10h 
    inc CX
    int 10h 
    add CX,3

    mov al,MenuC4               ;I
    int 10h 
    add CX,2

    mov al,MenuC2               ;O
    int 10h 
    add CX,4
    int 10h


    ;row 4

    pop CX 
    push CX
    dec DX

    mov al,MenuC1       ;M
    int 10h 
    inc CX
    int 10h 
    add CX,2
    int 10h 
    inc CX
    int 10h 
    add CX,2

    mov al,MenuC2       ;A
    int 10h 
    add CX,3
    int 10h 
    add CX,2

    mov al,MenuC3           ;R
    int 10h 
    add CX,3
    int 10h 

    mov al,MenuC4           ;I
    add CX,2 
    int 10h 
    add CX,2 


    mov al,MenuC2       ;O
    int 10h 
    add CX,4
    int 10h

    ;ROW 5

    pop CX
    push CX
    dec DX

    mov al,MenuC1       ;M
    int 10h 
    add CX,4
    int 10h
    add CX,3

    mov al,MenuC2           ;A
    int 10h 
    inc CX 
    int 10h
    add CX,3
    
    mov al,MenuC3           ;R
    int 10h 
    inc CX 
    int 10h 
    inc CX 
    int 10h 
    add CX,3

    mov al,MenuC4         ;I
    int 10h 
    add CX,3

    mov al,MenuC2           ;O
    int 10h 
    inc CX 
    int 10h 
    inc CX
    int 10h 







    ;INPUT 

    ;cursor position
    MOV AH,02H
    MOV BH,0
    MOV DH,20 
    MOV DL,0
    INT 10H

    ;Display Input String
    mov ah,09
    mov dx, offset promptName
    int 21h

    ;input
    mov dx, OFFSET playerName
    mov ah, 3Fh
    INT 21h

    
Exit: 
    mov ah, 04ch
    int 21h
main endp
end




