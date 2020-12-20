.model medium, stdcall
.stack 100h
.data

.code

printPixel Proc X:WORD, Y:WORD, count:WORD, color:BYTE
    push AX
    push BX
    push CX
    push DX

    mov BX, count

    mov AL, color

    mov AH, 0ch

    mov CX, X
    mov DX, Y

    forLoop:
        cmp BX, 0
        JE outOfLoop
        int 10h
        inc CX
        dec BX
    jmp forLoop
outOfLoop:

    pop DX
    pop CX
    pop BX
    pop AX
    ret

printPixel endp


.STARTUP
main proc 
   
    mov ah, 0
    mov al, 13h
    int 10h

    invoke printPixel, 160d, 150d, 35d, 04d      ;row1
    invoke printPixel, 160d, 149d, 35d, 04d      ;row 2
    invoke printPixel, 160d, 148d, 3d, 04d       ;row 3
    invoke printPixel, 163d, 148d, 5d, 15d 
    invoke printPixel, 168d, 148d, 4d, 04d
    invoke printPixel, 172d, 148d, 3d, 15d
    invoke printPixel, 175d, 148d, 4d, 04d
    invoke printPixel, 179d, 148d, 6d, 15d
    invoke printPixel, 185d, 148d, 1d, 4d
    invoke printPixel, 186d, 148d, 2d, 15d
    invoke printPixel, 188d, 148d, 3d, 4d
    invoke printPixel, 191d, 148d, 2d, 15d
    invoke printPixel, 193d, 148d, 2d, 04d

    invoke printPixel, 160d, 147d, 2d, 04d       ;row 4
    invoke printPixel, 162d, 147d, 7d, 15d 
    invoke printPixel, 169d, 147d, 2d, 04d 
    invoke printPixel, 171d, 147d, 5d, 15d 
    invoke printPixel, 176d, 147d, 2d, 04d 
    invoke printPixel, 178d, 147d, 7d, 15d 
    invoke printPixel, 185d, 147d, 1d, 04d 
    invoke printPixel, 186d, 147d, 2d, 15d 
    invoke printPixel, 188d, 147d, 2d, 04d 
    invoke printPixel, 190d, 147d, 2d, 15d 
    invoke printPixel, 192d, 147d, 3d, 04d 

    invoke printPixel, 160d, 146d, 2d, 04d       ;row 5
    invoke printPixel, 162d, 146d, 2d, 15d 
    invoke printPixel, 164d, 146d, 3d, 04d
    invoke printPixel, 167d, 146d, 2d, 15d
    invoke printPixel, 169d, 146d, 1d, 04d 
    invoke printPixel, 170d, 146d, 3d, 15d
    invoke printPixel, 173d, 146d, 1d, 04d 
    invoke printPixel, 174d, 146d, 3d, 15d  
    invoke printPixel, 177d, 146d, 1d, 04d
    invoke printPixel, 178d, 146d, 2d, 15d  
    invoke printPixel, 180d, 146d, 6d, 04d 
    invoke printPixel, 186d, 146d, 2d, 15d
    invoke printPixel, 188d, 146d, 1d, 04d  
    invoke printPixel, 189d, 146d, 2d, 15d
    invoke printPixel, 191d, 146d, 4d, 04d

    invoke printPixel, 160d, 145d, 2d, 04d          ;row 6
    invoke printPixel, 162d, 145d, 2d, 15d 
    invoke printPixel, 164d, 145d, 3d, 04d
    invoke printPixel, 167d, 145d, 2d, 15d
    invoke printPixel, 169d, 145d, 1d, 04d 
    invoke printPixel, 170d, 145d, 2d, 15d
    invoke printPixel, 172d, 145d, 3d, 04d
    invoke printPixel, 175d, 145d, 2d, 15d   
    invoke printPixel, 177d, 145d, 1d, 04d
    invoke printPixel, 178d, 145d, 2d, 15d  
    invoke printPixel, 180d, 145d, 6d, 04d 
    invoke printPixel, 186d, 145d, 6d, 15d 
    invoke printPixel, 192d, 145d, 3d, 04d 

    invoke printPixel, 160d, 144d, 2d, 04d        ;row 7
    invoke printPixel, 162d, 144d, 2d, 15d
    invoke printPixel, 164d, 144d, 3d, 04d
    invoke printPixel, 167d, 144d, 2d, 15d
    invoke printPixel, 169d, 144d, 1d, 04d   
    invoke printPixel, 170d, 144d, 2d, 15d   
    invoke printPixel, 172d, 144d, 3d, 04d     
    invoke printPixel, 175d, 144d, 2d, 15d
    invoke printPixel, 177d, 144d, 1d, 04d  
    invoke printPixel, 178d, 144d, 6d, 15d
    invoke printPixel, 184d, 144d, 2d, 04d   
    invoke printPixel, 186d, 144d, 7d, 15d
    invoke printPixel, 193d, 144d, 2d, 04d        

    invoke printPixel, 160d, 143d, 2d, 04d     ;row 8
    invoke printPixel, 162d, 143d, 2d, 15d
    invoke printPixel, 164d, 143d, 3d, 04d
    invoke printPixel, 167d, 143d, 2d, 15d 
    invoke printPixel, 169d, 143d, 1d, 04d
    invoke printPixel, 170d, 143d, 2d, 15d 
    invoke printPixel, 172d, 143d, 3d, 04d
    invoke printPixel, 175d, 143d, 2d, 15d     
    invoke printPixel, 177d, 143d, 1d, 04d 
    invoke printPixel, 178d, 143d, 6d, 15d
    invoke printPixel, 184d, 143d, 2d, 04d    
    invoke printPixel, 186d, 143d, 2d, 15d     
    invoke printPixel, 188d, 143d, 3d, 04d
    invoke printPixel, 191d, 143d, 2d, 15d     
    invoke printPixel, 193d, 143d, 2d, 04d         

    invoke printPixel, 160d, 142d, 2d, 04d     ;row 9
    invoke printPixel, 162d, 142d, 2d, 15d 
    invoke printPixel, 164d, 142d, 3d, 04d
    invoke printPixel, 167d, 142d, 2d, 15d 
    invoke printPixel, 169d, 142d, 1d, 04d
    invoke printPixel, 170d, 142d, 2d, 15d 
    invoke printPixel, 172d, 142d, 3d, 04d
    invoke printPixel, 175d, 142d, 2d, 15d 
    invoke printPixel, 177d, 142d, 1d, 04d
    invoke printPixel, 178d, 142d, 2d, 15d 
    invoke printPixel, 180d, 142d, 6d, 04d
    invoke printPixel, 186d, 142d, 2d, 15d 
    invoke printPixel, 188d, 142d, 3d, 04d
    invoke printPixel, 191, 142d, 2d, 15d 
    invoke printPixel, 193, 142d, 2d, 04d       

    invoke printPixel, 160d, 141d, 2d, 04d     ;row 10
    invoke printPixel, 162d, 141d, 2d, 15d 
    invoke printPixel, 164d, 141d, 3d, 04d
    invoke printPixel, 167d, 141d, 2d, 15d  
    invoke printPixel, 169d, 141d, 1d, 04d
    invoke printPixel, 170d, 141d, 2d, 15d 
    invoke printPixel, 172d, 141d, 3d, 04d
    invoke printPixel, 175d, 141d, 2d, 15d 
    invoke printPixel, 177d, 141d, 1d, 04d
    invoke printPixel, 178d, 141d, 2d, 15d 
    invoke printPixel, 180d, 141d, 6d, 04d
    invoke printPixel, 186d, 141d, 2d, 15d 
    invoke printPixel, 188d, 141d, 3d, 04d
    invoke printPixel, 191d, 141d, 2d, 15d
    invoke printPixel, 193d, 141d, 2d, 04d    

    invoke printPixel, 160d, 140d, 2d, 04d      ;row 11   
    invoke printPixel, 162d, 140d, 7d, 15d  
    invoke printPixel, 169d, 140d, 1d, 04d
    invoke printPixel, 170d, 140d, 2d, 15d 
    invoke printPixel, 172d, 140d, 3d, 04d     
    invoke printPixel, 175d, 140d, 2d, 15d  
    invoke printPixel, 177d, 140d, 1d, 04d  
    invoke printPixel, 178d, 140d, 7d, 15d 
    invoke printPixel, 185d, 140d, 1d, 04d
    invoke printPixel, 186d, 140d, 7d, 15d     
    invoke printPixel, 193d, 140d, 2d, 4d  

    invoke printPixel, 160d, 139d, 3d, 04d  ;row 12
    invoke printPixel, 163d, 139d, 5d, 15d
    invoke printPixel, 168d, 139d, 2d, 4d
    invoke printPixel, 170d, 139d, 2d, 15d  
    invoke printPixel, 172d, 139d, 3d, 4d  
    invoke printPixel, 175d, 139d, 2d, 15d 
    invoke printPixel, 177d, 139d, 2d, 4d 
    invoke printPixel, 179d, 139d, 6d, 15d 
    invoke printPixel, 185d, 139d, 2d, 4d 
    invoke printPixel, 187d, 139d, 5d, 15d
    invoke printPixel, 192d, 139d, 3d, 4d

    invoke printPixel, 160d, 138d, 35d, 4d ;row 13

    invoke printPixel, 160d, 137d, 3d, 4d           ;row 14 
    invoke printPixel, 163d, 137d, 5d, 15d
    invoke printPixel, 168d, 137d, 2d, 4d
    invoke printPixel, 170d, 137d, 2d, 15d
    invoke printPixel, 172d, 137d, 3d, 4d
    invoke printPixel, 175d, 137d, 2d, 15d
    invoke printPixel, 177d, 137d, 1d, 4d
    invoke printPixel, 178d, 137d, 2d, 15d
    invoke printPixel, 180d, 137d, 3d, 4d
    invoke printPixel, 183d, 137d, 2d, 15d
    invoke printPixel, 185d, 137d, 2d, 4d
    invoke printPixel, 187d, 137d, 6d, 15d
    invoke printPixel, 193d, 137d, 2d, 4d

    invoke printPixel, 160d, 136d, 2d, 4d           ;row 15
    invoke printPixel, 162d, 136d, 7d, 15d 
    invoke printPixel, 169d, 136d, 1d, 4d
    invoke printPixel, 170d, 136d, 2d, 15d
    invoke printPixel, 172d, 136d, 3d, 4d
    invoke printPixel, 175d, 136d, 2d, 15d
    invoke printPixel, 177d, 136d, 1d, 04d
    invoke printPixel, 178d, 136d, 2d, 15d 
    invoke printPixel, 180d, 136d, 3d, 04d
    invoke printPixel, 183d, 136d, 2d, 15d
    invoke printPixel, 185d, 136d, 1d, 04d 
    invoke printPixel, 186d, 136d, 7d, 15d
    invoke printPixel, 193d, 136d, 2d, 04d      

    invoke printPixel, 160d, 135d, 2d, 04d          ;row 16
    invoke printPixel, 162d, 135d, 2d, 15d 
    invoke printPixel, 164d, 135d, 4d, 04d
    invoke printPixel, 168d, 135d, 1d, 15d  
    invoke printPixel, 169d, 135d, 1d, 04d
    invoke printPixel, 170d, 135d, 3d, 15d
    invoke printPixel, 173d, 135d, 1d, 04d
    invoke printPixel, 174d, 135d, 3d, 15d     
    invoke printPixel, 177d, 135d, 1d, 04d
    invoke printPixel, 178d, 135d, 2d, 15d
    invoke printPixel, 180d, 135d, 3d, 04d       
    invoke printPixel, 183d, 135d, 2d, 15d
    invoke printPixel, 185d, 135d, 1d, 04d
    invoke printPixel, 186d, 135d, 2d, 15d
    invoke printPixel, 188d, 135d, 7d, 04d        

    invoke printPixel, 160d, 134d, 2d, 04d          ;row 17
    invoke printPixel, 162d, 134d, 2d, 15d
    invoke printPixel, 164d, 134d, 4d, 04d
    invoke printPixel, 168d, 134d, 1d, 15d
    invoke printPixel, 169d, 134d, 1d, 04d
    invoke printPixel, 170d, 134d, 7d, 15d
    invoke printPixel, 177d, 134d, 1d, 04d
    invoke printPixel, 178d, 134d, 2d, 15d 
    invoke printPixel, 180d, 134d, 3d, 04d
    invoke printPixel, 183d, 134d, 2d, 15d
    invoke printPixel, 185d, 134d, 1d, 04d
    invoke printPixel, 186d, 134d, 2d, 15d 
    invoke printPixel, 188d, 134d, 7d, 04d 

    invoke printPixel, 160d, 133d, 2d, 04d          ;row 18    
    invoke printPixel, 162d, 133d, 2d, 15d
    invoke printPixel, 164d, 133d, 2d, 04d 
    invoke printPixel, 166d, 133d, 3d, 15d 
    invoke printPixel, 169d, 133d, 1d, 04d 
    invoke printPixel, 170d, 133d, 2d, 15d
    invoke printPixel, 172d, 133d, 3d, 04d
    invoke printPixel, 175d, 133d, 2d, 15d 
    invoke printPixel, 177d, 133d, 1d, 04d
    invoke printPixel, 178d, 133d, 2d, 15d 
    invoke printPixel, 180d, 133d, 1d, 04d
    invoke printPixel, 181d, 133d, 1d, 15d 
    invoke printPixel, 182d, 133d, 1d, 04d
    invoke printPixel, 183d, 133d, 2d, 15d 
    invoke printPixel, 185d, 133d, 1d, 04d
    invoke printPixel, 186d, 133d, 6d, 15d
    invoke printPixel, 192d, 133d, 3d, 04d          

    invoke printPixel, 160d, 132d, 2d, 04d      ;row 19  
    invoke printPixel, 162d, 132d, 2d, 15d
    invoke printPixel, 164d, 132d, 1d, 04d
    invoke printPixel, 165d, 132d, 4d, 15d
    invoke printPixel, 169d, 132d, 1d, 04d
    invoke printPixel, 170d, 132d, 2d, 15d
    invoke printPixel, 172d, 132d, 3d, 04d
    invoke printPixel, 175d, 132d, 2d, 15d
    invoke printPixel, 177d, 132d, 1d, 04d
    invoke printPixel, 178d, 132d, 7d, 15d
    invoke printPixel, 185d, 132d, 1d, 04d
    invoke printPixel, 186d, 132d, 6d, 15d
    invoke printPixel, 192d, 132d, 3d, 04d

    invoke printPixel, 160d, 131d, 2d, 04d          ;row 20
    invoke printPixel, 162d, 131d, 2d, 15d
    invoke printPixel, 164d, 131d, 6d, 04d
    invoke printPixel, 170d, 131d, 2d, 15d
    invoke printPixel, 172d, 131d, 3d, 04d 
    invoke printPixel, 175d, 131d, 2d, 15d
    invoke printPixel, 177d, 131d, 1d, 04d 
    invoke printPixel, 178d, 131d, 7d, 15d
    invoke printPixel, 185d, 131d, 1d, 04d 
    invoke printPixel, 186d, 131d, 2d, 15d
    invoke printPixel, 188d, 131d, 7d, 04d     


    invoke printPixel, 160d, 130d, 2d, 04d         ;row 21
    invoke printPixel, 162d, 130d, 2d, 15d     
    invoke printPixel, 164d, 130d, 6d, 04d     
    invoke printPixel, 170d, 130d, 3d, 15d     
    invoke printPixel, 173d, 130d, 1d, 04d     
    invoke printPixel, 174d, 130d, 3d, 15d     
    invoke printPixel, 177d, 130d, 1d, 04d     
    invoke printPixel, 178d, 130d, 3d, 15d     
    invoke printPixel, 181d, 130d, 1d, 04d     
    invoke printPixel, 182d, 130d, 3d, 15d 
    invoke printPixel, 185d, 130d, 1d, 04d
    invoke printPixel, 186d, 130d, 2d, 15d 
    invoke printPixel, 188d, 130d, 7d, 04d    

    invoke printPixel, 160d, 129d, 2d, 04d              ;row 22   
    invoke printPixel, 162d, 129d, 7d, 15d
    invoke printPixel, 169d, 129d, 2d, 04d 
    invoke printPixel, 171d, 129d, 5d, 15d
    invoke printPixel, 176d, 129d, 2d, 04d        
    invoke printPixel, 178d, 129d, 3d, 15d
    invoke printPixel, 181d, 129d, 1d, 04d 
    invoke printPixel, 182d, 129d, 3d, 15d
    invoke printPixel, 185d, 129d, 1d, 04d            
    invoke printPixel, 186d, 129d, 7d, 15d
    invoke printPixel, 193d, 129d, 2d, 04d 

    invoke printPixel, 160d, 128d, 3d, 04d              ;row 23
    invoke printPixel, 163d, 128d, 6d, 15d 
    invoke printPixel, 169d, 128d, 3d, 04d 
    invoke printPixel, 172d, 128d, 3d, 15d 
    invoke printPixel, 175d, 128d, 4d, 04d 
    invoke printPixel, 179d, 128d, 1d, 15d 
    invoke printPixel, 180d, 128d, 3d, 04d 
    invoke printPixel, 183d, 128d, 1d, 15d 
    invoke printPixel, 184d, 128d, 3d, 04d 
    invoke printPixel, 187d, 128d, 6d, 15d 
    invoke printPixel, 193d, 128d, 2d, 04d 

    invoke printPixel, 160d, 127d, 35d, 04d                ;row 24
    invoke printPixel, 160d, 126d, 35d, 04d                ;row 25




.EXIT
main endp
end