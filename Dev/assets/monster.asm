.model medium, stdcall
.stack 120h
.data
    Mcolor1 byte 2d     ;green
    Mcolor2 byte 15d     ;black      ;blue instead of white
    Mcolor3 byte 4d     ;brownn
    Mcolor4 byte 15d    ;white

.code

drawMonster proc x:word, y:word
 

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
    add CX,20

    mov al,Mcolor4                  ;row 1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX            ;row 2
    push CX
    dec DX
    add CX,21

    
    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX

    
    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    ;;
    inc CX
    int 10h


    pop CX            ;row 3
    push CX
    dec DX
    add CX,17

    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
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
    ;;;
    inc CX
    int 10h
    inc CX
    int 10h


    pop CX            ;row 4
    push CX
    dec DX
    add CX,18

    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX        

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX    

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    ;;;
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h



    pop CX            ;row 5
    push CX
    dec DX
    add CX,17

    mov al,Mcolor3
    int 10h
    inc CX    

     mov al,Mcolor1
    int 10h
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

    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    ;;;
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h

    pop CX            ;row 6
    push CX
    dec DX
    add CX,17

    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    ;;
    inc CX
    int 10h
   
  


    pop CX            ;row 7
    push CX
    dec DX
    add CX,18

    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h    ;;
    inc CX
    int 10h


    
    pop CX            ;row 8
    push CX
    dec DX
    add CX,17

    
    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h    
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h     ;;
    inc CX
    int 10h


    pop CX            ;row 9
    push CX
    dec DX
    add CX,13

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX

    
    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h ;;
    inc CX
    int 10h
    
    pop CX            ;row 10
    push CX
    dec DX
    add CX,10

    mov al,Mcolor4
    int 10h
    inc CX

    mov al,Mcolor2
    int 10h
    inc CX    

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX  

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

     mov al,Mcolor1
    int 10h
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
    int 10h ;;
    inc CX  
    int 10h
    inc CX   
    int 10h
      
    
    pop CX            ;row 11
    push CX
    dec DX
    add CX,9

    mov al,Mcolor3
    int 10h
    inc CX       

    mov al,Mcolor2
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX  
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX  

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
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

    mov al,Mcolor4
    int 10h ;;
    inc CX
    int 10h


    pop CX            ;row 12
    push CX
    dec DX
    add CX,9

    mov al,Mcolor3
    int 10h
    inc CX  

    
    mov al,Mcolor4
    int 10h
    inc CX  

    mov al,Mcolor2
    int 10h
    inc CX  

    mov al,Mcolor3
    int 10h
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

    mov al,Mcolor4
    int 10h
    inc CX  

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX  

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX  

     mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX    

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX  

    mov al,Mcolor3
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h     ;;
    inc CX
    int 10h



    pop CX            ;row 13
    push CX
    dec DX
    add CX,9

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor2
    int 10h
    inc CX  

    mov al,Mcolor4
    int 10h
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor2
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor4
    int 10h
    inc CX   

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX  
    int 10h
    inc CX    

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX  
    int 10h
    inc CX    

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h     ;;
    inc CX    
    int 10h  


    pop CX            ;row 14
    push CX
    dec DX
    add CX,9

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX

    mov al,Mcolor2
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor2
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
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
  
      
    pop CX            ;row 15
    push CX
    dec DX
    add CX,10

    
    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor2
    int 10h
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX  

    mov al,Mcolor1
    int 10h
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

     mov al,Mcolor3
    int 10h
    inc CX   
    int 10h



      
    pop CX            ;row 16
    push CX
    dec DX
    add CX,14

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h    
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h    
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX   



     pop CX            ;row 17
    push CX
    dec DX
    add CX,8


    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor4
    int 10h
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

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h    
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX   

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h
    inc CX   

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h
    inc CX   


    pop CX            ;row 18
    push CX
    dec DX
    add CX,7

    mov al,Mcolor4
    int 10h
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h
    inc CX  

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h    
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h    
    inc CX

    mov al,Mcolor1
    int 10h
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

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h    
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h    
    inc CX
    int 10h
    inc CX   
    int 10h  

    pop CX            ;row 19
    push CX
    dec DX
    add CX,9

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h    
    inc CX
    int 10h    
    inc CX  

    mov al,Mcolor1
    int 10h
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

    mov al,Mcolor4
    int 10h
    inc CX   


    pop CX            ;row 20
    push CX
    dec DX
    add CX,9

    mov al,Mcolor4
    int 10h
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX
    int 10h
    inc CX


    mov al,Mcolor1
    int 10h
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

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   

    mov al,Mcolor4
    int 10h


    pop CX            ;row 21
    push CX
    dec DX
    add CX,5

    mov al,Mcolor4
    int 10h
    add CX,4

    mov al,Mcolor1
    int 10h
    add CX,1 

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX  


    pop CX            ;row 22
    push CX
    dec DX
    add CX,2

    mov al,Mcolor4
    int 10h
    add CX,2  

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX   

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX   

    mov al,Mcolor4
    int 10h
    inc CX  

    mov al,Mcolor3
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX   
    int 10h
    inc CX     

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX  

    
    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 

    
    mov al,Mcolor1
    int 10h
    inc CX  

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h 


    pop CX            ;row 23
    push CX
    dec DX
    add CX,2

    mov al,Mcolor4
    int 10h
    add CX,2   

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX  
    int 10h
    inc CX  

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX  

    mov al,Mcolor3
    int 10h
    inc CX  

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX  
    int 10h
    inc CX  

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor3
    int 10h


    pop CX            ;row 24
    push CX
    dec DX
    add CX,1

    mov al,Mcolor4
    int 10h
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX  

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX   

    mov al,Mcolor1
    int 10h
    inc CX   

    mov al,Mcolor3
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX 
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX   

    pop CX            ;row 25
    push CX
    dec DX
    add CX,1

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX 
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX  

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX 

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX 
    int 10h
    inc CX 
    

    pop CX            ;row 26
    push CX
    dec DX
    add CX,1

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX

    mov al,Mcolor3
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h


    pop CX            ;row 27
    push CX
    dec DX
    add CX,1

    mov al,Mcolor3
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX 

    mov al,Mcolor3
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
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


    pop CX            ;row 28
    push CX
    dec DX
    add CX,2

    mov al,Mcolor3
    int 10h
    add CX,3

    mov al,Mcolor1
    int 10h
    inc CX  

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
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

    pop CX            ;row 29
    push CX
    dec DX
    add CX,6

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX 
    int 10h
    inc CX 

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor1
    int 10h 

    pop CX            ;row 30
    push CX
    dec DX
    add CX,8

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX 

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 

    mov al,Mcolor3
    int 10h
    inc CX   
    int 10h
    inc CX 

    pop CX            ;row 31
    push CX
    dec DX
    add CX,9

    mov al,Mcolor1
    int 10h
    inc CX   
    int 10h
    inc CX

    mov al,Mcolor4
    int 10h
    inc CX   
    int 10h
    inc CX 
    int 10h
    inc CX  

    mov al,Mcolor3
    int 10h
    inc CX  

    pop CX            ;row 31
    push CX
    dec DX
    add CX,13

    mov al,Mcolor4
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


drawMonster endp
end