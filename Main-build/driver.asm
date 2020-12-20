.model medium, stdcall

;CONSTANT VALUES.
LAYER_TILES=200d
TILES_HEIGHT=16d
TILES_COUNT=20d

GROUND_LEVEL=168d
DEFAULT_MARIO_X=10d
DEFAULT_MARIO_Y=168d
DEFAULT_FLAG_X=315d
DEFAULT_FLAG_Y=168d
DEFAULT_FLAG_HEIGHT=30d
JUMP_HEIGHT=60d
MAX_JUMP_HEIGHT=108d
UP=48h
RIGHT=4Dh
LEFT=4Bh

DELAY_ONE=1000d
DELAY_TWO=800d

RATE=0
REPORT_RATE=0


SMALL_TUNNEL_LOWER_HEIGHT=8d
SMALL_TUNNEL_UPPER_HEIGHT=6d
SMALL_TUNNEL_X=140d
SMALL_TUNNEL_END_X=174d
SMALL_TUNNEL_HEIGHT=134

MEDIUM_TUNNEL_LOWER_HEIGHT=10d
MEDIUM_TUNNEL_UPPER_HEIGHT=8d
MEDIUM_TUNNEL_X=68d
MEDIUM_TUNNEL_END_X=102d
MEDIUM_TUNNEL_HEIGHT=126

LARGE_TUNNEL_LOWER_HEIGHT=12d
LARGE_TUNNEL_UPPER_HEIGHT=10d
LARGE_TUNNEL_X=208d
LARGE_TUNNEL_END_X=242d
LARGE_TUNNEL_HEIGHT=118


ENEMY_DEFAULT_X=120d
ENEMY_DEFAULT_Y=168d
ENEMY_TWO_DEFAULT_X=188d

BOWSER_DEFAULT_X=280d
BOWSER_DEFAULT_Y=50d

;CONSTANT VALUE END.
;UP->48H
;RIGHT->4Dh
;LEFT->4Bh

;INCLUDE GRAPHICS
include assets/brick.inc
include assets/block.inc
include assets/enemy.inc
include assets/fire.inc
include assets/flag.inc
include assets/flips.inc
include assets/flipwalk.inc
include assets/mario.inc
include assets/monster.inc
include assets/pole.inc
include assets/tunnel.inc
include assets/w.inc
;INCLUDE END

.stack
.data
    marioX word ?
    marioY word ?
    
    
    availX word ?
    availY word ?
    availJumpHeight word ?
    
    enemyX word ?
    enemyTwoX word ?
    enemyY word ?
    
    level word ?
    newlevel word ?
    
    
    isJump word ?
    jumpDir word ?
    movDir word ?

    boolHandler word ?
    

    enemyMovDir word ?
    enemyTwoDir word ?
    

    bowserX word ?
    bowserY word ?
    bowserMovDir word ?


    fireTargetX word ?
    fireTargetY word ?
    fireBool word ?
    fireX word ?
    fireY word ?

    textOneY word ?
    textTwoY word ?

    textOneX word ?
    textTwoX word ?


    MenuC1 DB 06d                    ;blue
    MenuC2 byte 15d                ;yellow
    MenuC3 byte 04d                ;red
    MenuC4 byte 02d                ;green 
    winMessage db "You Won!", '$'
    loseMessage db "You Lost!", '$'
    scoreMessage db "Score: ", '$'
    levelMessage db "Level: ", '$'
    levelOneS db "2000", '$'
    levelOne db "1", '$'
    levelTwoS db "4000", '$'
    levelTwo db "2", '$'
    levelThreeS db "10000", '$'
    levelThree db "3", '$'
    CompleteS db "15000", '$'
    playerName db 15 DUP("$")
    promptName db "Enter your Name : ",'$'
.code

delay proc


    push ax
    push bx
    push cx
    push dx

    mov cx, DELAY_ONE
    mydelay:
        mov bx, DELAY_TWO
        
        mydelay1:
            dec bx
        jnz mydelay1
    loop mydelay


    pop dx
    pop cx  
    pop bx
    pop ax

    ret

delay endp

setRate proc
    push AX
    push BX
    mov AH, 03h
    mov AL, 05h
    mov BH, RATE
    mov BL, REPORT_RATE
    int 16h
    pop BX
    pop AX
    ret
setRate endp


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


drawOver proc 


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
    ret
drawOver endp


drawText proc x:WORD, y:WORD
    push ax
    push bx
    push cx
    push dx

    mov CX, x
    mov DX, y
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

    pop CX
    pop dx
    pop cx  
    pop bx
    pop ax

    ret

drawText endp


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

    mov al,04d
    int 10h  
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

        mov al,04d
    int 10h  
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
        mov al, 15d
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


displayFloorTiles proc
    push AX
    push BX
    push CX
    mov CX, 2
    mov AX, 0
    mov BX, LAYER_TILES
    brickLoop:
        push CX
        mov CX, TILES_COUNT
        innerBLoop:
            invoke drawBrick, AX, BX
            add AX, 16
        loop innerBLoop
        mov AX, 0
        sub BX, TILES_HEIGHT
        pop CX
    loop brickLoop
    pop CX
    pop BX
    pop AX
    ret
displayFloorTiles endp

setScene proc
    push AX
    push BX
    push CX
    push DX
    mov ah, 06h
    mov al, 0
    mov cx, 0
    mov dh, 80
    mov dl, 80
    mov bh, 3d
    int 10h
    invoke displayFloorTiles
    invoke drawTunnel, 68, DEFAULT_FLAG_Y, MEDIUM_TUNNEL_LOWER_HEIGHT, MEDIUM_TUNNEL_UPPER_HEIGHT
    invoke drawTunnel, 140, DEFAULT_FLAG_Y, SMALL_TUNNEL_LOWER_HEIGHT, SMALL_TUNNEL_UPPER_HEIGHT
    invoke drawTunnel, 208, DEFAULT_FLAG_Y, LARGE_TUNNEL_LOWER_HEIGHT, LARGE_TUNNEL_UPPER_HEIGHT
    .IF level != 3
        invoke drawPole, DEFAULT_FLAG_X, DEFAULT_FLAG_Y
        invoke drawFlag, 300d, DEFAULT_FLAG_HEIGHT
    .ELSEIF level == 3
        invoke drawKingdom, 240d, 168d
    .ENDIF
    pop DX
    pop CX
    pop BX
    pop AX
    ret
setScene endp



.STARTUP
main proc
    mov AX, @data
    mov DS, AX

    ;Changing Display Mode.
    mov ah, 0
    mov al, 13h
    int 10h

    ;Setting rate for Keyboard input.
    invoke setRate


    ;Setting default position for Mario.
    mov marioX, DEFAULT_MARIO_X
    mov marioY, DEFAULT_MARIO_Y

    ;Setting some settings.
    mov isJump, 0 ; Boolean whether we are jumping.
    mov jumpDir, 1 ; 1: Indicates that the player is jumping upwards , 2: Indicates that the player is coming down.
    mov movDir, 1 ; 1: Indicates that player is facing right , and 2: Indicates that the player is facing left side.
    mov level, 1 ; Setting the level to first level.
    mov newlevel, 1 ; For detecting new level.
    ; For jump
    mov availX, DEFAULT_MARIO_X
    mov availY, DEFAULT_MARIO_Y
    mov availJumpHeight, MAX_JUMP_HEIGHT

    ;Enemies
    mov enemyX, ENEMY_DEFAULT_X
    mov enemyY, ENEMY_DEFAULT_Y
    mov enemyTwoX, ENEMY_TWO_DEFAULT_X
    mov enemyMovDir, 1
    mov enemyTwoDir, 1

    ;BOWSER
    mov bowserX, BOWSER_DEFAULT_X
    mov bowserY, BOWSER_DEFAULT_Y
    mov bowserMovDir, 1


    ;FIREEEEEEEEEEEEEEEEEE
    mov fireX, BOWSER_DEFAULT_X
    mov fireY, BOWSER_DEFAULT_Y
    mov fireTargetX, 0
    mov fireTargetY, 0
    mov fireBool, 0

    mov textOneX, 0
    mov textTwoX, 320d
    mov textOneY, 0d
    mov textTwoY, 200d
    ;Initial Background calling.
    invoke setScene
    invoke drawMario, marioX, marioY


    menuLoop:
        invoke delay    
        invoke setScene

        invoke drawMario, DEFAULT_MARIO_X, DEFAULT_MARIO_Y
        invoke drawEnemy, 50, DEFAULT_MARIO_Y

        invoke drawMonster, BOWSER_DEFAULT_X, BOWSER_DEFAULT_Y

        invoke drawText, 152d, textOneY
        invoke drawText, 152d, textTwoY
        invoke drawText, textOneX, 106d
        invoke drawText, textTwoX, 106d

        .IF textOneX < 152d
            add textOneX, 2
        .ENDIF
        .IF textTwoX > 152d
            sub textTwoX, 2
        .ENDIF
        .IF textOneY < 106d
            add textOneY, 2
        .ENDIF
        .IF textTwoY > 106d
            sub textTwoY, 2
        .ENDIF
        .IF (textOneX == 152 && textTwoX == 152 && textOneY == 106d && textTwoY == 106d)
            jmp input
        .ENDIF
    jmp menuLoop
    
    input:

    MOV AH,02H
    MOV BH,0
    MOV DH,20 
    MOV DL,0
    INT 10H

    mov ah,09
    mov dx, offset promptName
    int 21h

    mov dx, OFFSET playerName
    mov ah, 0Ah
    INT 21h


    driver:
        ;Delay to get the 60fps experience.
        invoke delay
        invoke setScene    
    
        .IF level != 1
            ;Level two onward content.

            ;First enemy walking path handler.
            mov BX, enemyX
            .IF BX == MEDIUM_TUNNEL_END_X - 6
                mov enemyMovDir, 1
            .ELSEIF BX == SMALL_TUNNEL_X - 12
                mov enemyMovDir, 2
            .ENDIF

            ;Second enemy walking path handler.
            mov BX, enemyTwoX
            .IF BX == SMALL_TUNNEL_END_X - 6
                mov enemyTwoDir, 1
            .ELSEIF BX == LARGE_TUNNEL_X - 12
                mov enemyTwoDir, 2
            .ENDIF


            ;First enemy walker.
            .IF enemyMovDir == 1
                add enemyX, 1
            .ELSEIF enemyMovDir == 2
                sub enemyX, 1
            .ENDIF

            ;Second enemy walker.
            .IF enemyTwoDir == 1
                add enemyTwoX, 1
            .ELSEIF enemyTwoDir == 2
                sub enemyTwoX, 1
            .ENDIF

            ;enemy collision detection.
            mov BX, marioX
            mov DX, marioY
            .IF (BX >= enemyX && BX <= enemyX) && (DX == enemyY) || (BX >= enemyTwoX && BX <= enemyTwoX) && (DX == enemyY)
                mov newLevel, 1
            .ENDIF

            invoke drawEnemy, enemyTwoX, enemyY
            invoke drawEnemy, enemyX, enemyY


            ;Level two onward content end.

            .IF level == 3

                mov BX, bowserX
                .IF BX == 10d
                    mov bowserMovDir, 1
                .ELSEIF BX == 280d
                    mov bowserMovDir, 2
                .ENDIF

                .IF bowserMovDir == 1
                    add bowserX, 2
                .ELSEIF bowserMovDir == 2
                    sub bowserX, 2
                .ENDIF
                
                .IF fireBool == 1
                    mov BX, marioX
                    mov DX, fireY
                    .IF (BX >= fireX && BX <= fireX + 18) && ((DX <= marioY + 8 && DX >= marioY - 8) || DX == marioY)
                        mov newLevel, 1
                    .ENDIF
                .ENDIF

                .IF fireBool == 1
                    mov BX, fireTargetX 
                    .IF BX < fireX
                        sub fireX, 1
                    .ELSEIF BX > fireX
                        add fireX, 1
                    .ENDIF
                    mov DX, fireTargetY
                    .IF DX < fireY
                        sub fireY, 1
                    .ELSEIF DX > fireY
                        add fireY, 1
                    .ENDIF
                    .IF (fireX == BX) && (fireY == DX)
                        mov fireBool, 0
                    .ENDIF
                .ENDIF

                .IF fireBool == 0
                    mov BX, marioX
                    mov DX, marioY
                    mov fireTargetX, BX
                    mov fireTargetY, DX
                    mov BX, bowserX
                    mov DX, bowserY
                    mov fireX, BX
                    mov fireY, DX
                    mov fireBool, 1
                .ENDIF
                .IF fireBool == 1
                    invoke drawFire, fireX, fireY
                .ENDIF

                invoke drawMonster, bowserX, bowserY

                .IF marioX >= 272d
                    jmp outerLoop
                .ENDIF
            .ENDIF
        .ENDIF


        ;New level detection.
        mov BX, newLevel
        .IF BX > level
            inc level
            mov marioX, DEFAULT_MARIO_X
            mov marioY, DEFAULT_FLAG_Y
            mov isJump, 0
            mov jumpDir, 1
            mov availJumpHeight, 108d
            mov fireBool, 0
        .ELSEIF BX < level
            ;mov level, 1
            mov marioX, DEFAULT_MARIO_X
            mov marioY, DEFAULT_FLAG_Y
            mov isJump, 0
            mov jumpDir, 1
            mov availJumpHeight, 108d
            mov fireBool, 0
            jmp outerLoop
        .ENDIF
        ;New level detection end.
        .IF level != 3 && marioX >= DEFAULT_FLAG_X - 8
            inc newlevel
        .ENDIF
        ;New level if mario is on flag.
        
        ;Jump code.
        .IF isJump == 1 && jumpDir == 1
            sub marioY, 2
        .ENDIF
        mov BX, marioY
        .IF BX <= availJumpHeight
            mov jumpDir, 2
        .ENDIF
        .IF isJump == 1 && jumpDir == 2
            add marioY, 2
        .ENDIF
        mov BX, marioY
        .IF isJump == 1 && BX == availY
            mov isJump, 0
            mov jumpDir, 1
        .ENDIF
        ;Jump code end.

        ;Directional Jump.
        .IF isJump == 1
            .IF movDir == 1
                invoke drawWMario, marioX, marioY
            .ELSEIF movDir == 2
                invoke drawWBackward, marioX, marioY
            .ENDIF
        .ELSEIF isJump == 0
            .IF movDir == 1
                invoke drawMario, marioX, marioY
            .ELSEIF movDir == 2
                invoke drawBackward, marioX, marioY
            .ENDIF
        .ENDIF
        ;Directional Jump End.

        ;Mario jumping down from tunnel detection or landing on tunnel.
        mov BX, marioY
        .IF (isJump == 0) && BX < availY && (marioY < DEFAULT_MARIO_Y)
            add marioY, 2
        .ENDIF
        ;Mario Jumping End.

        ;Mario Tunnel upper portion detection.
        mov BX, marioX
        .IF (BX >= SMALL_TUNNEL_X - 16) && (BX <= SMALL_TUNNEL_END_X)
            .IF isJump == 0 
                mov availJumpHeight, 74d
            .ENDIF
            mov availY, SMALL_TUNNEL_HEIGHT
        .ELSEIF (BX >= MEDIUM_TUNNEL_X - 16) && (BX <= MEDIUM_TUNNEL_END_X)
            .IF isJump == 0 
                mov availJumpHeight, 66d
            .ENDIF
            mov availY, MEDIUM_TUNNEL_HEIGHT
        .ELSEIF (BX >= LARGE_TUNNEL_X - 16) && (BX <= LARGE_TUNNEL_END_X)
            .IF isJump == 0 
                mov availJumpHeight, 58d
            .ENDIF
            mov availY, LARGE_TUNNEL_HEIGHT
        .ELSE
            mov availJumpHeight, 108d
            mov availY, DEFAULT_MARIO_Y
        .ENDIF

        ;Keyboard Buffer check.
        mov ah, 11h
        int 16h
        jz driver ;Calling the driver label again if buffer is empty to maintain the screen updating.
        mov ah, 10h
        int 16h
    
        .IF AH == RIGHT
            mov BX, marioY
            .IF !(BX > availY) 
                add marioX, 2
                invoke drawWMario, marioX, marioY
                mov movDir, 1
            .ENDIF
        .ELSEIF AH == LEFT
            mov BX, marioY
            .IF !(BX > availY) 
                .IF !(marioX < 2)
                    sub marioX, 2
                .ENDIF
                invoke drawWBackward, marioX, marioY
                mov movDir, 2
            .ENDIF
        .ENDIF
        .IF AH == UP && isJump == 0
            mov isJump, 1
        .ENDIF
        .IF AH == 1 ;ESC key being pressed.
            jmp outerLoop
        .ENDIF
    jmp driver

outerLoop:
    invoke delay    
    invoke setScene

    invoke drawMario, DEFAULT_MARIO_X, DEFAULT_MARIO_Y
    invoke drawEnemy, 50, DEFAULT_MARIO_Y

    invoke drawMonster, BOWSER_DEFAULT_X, BOWSER_DEFAULT_Y
    invoke drawOver

    .IF (level < 3) || (level == 3 && marioX < 270d)

        MOV AH,02H
        MOV BH,0
        MOV DH,10 
        MOV DL,15
        INT 10H

        mov dx, OFFSET loseMessage
        mov ah, 09h
        INT 21h

        MOV AH,02H
        MOV BH,0
        MOV DH,12
        MOV DL,15
        INT 10H

        mov dx, OFFSET levelMessage
        mov ah, 09h
        INT 21h

        MOV AH,02H
        MOV BH,0
        MOV DH,12
        MOV DL,23
        INT 10H
        .IF level == 1
            mov dx, OFFSET levelOne
        .ELSEIF level == 2
            mov dx, OFFSET levelTwo
        .ELSEIF level == 3
            mov dx, OFFSET levelThree
        .ENDIF

        mov ah, 09h
        INT 21h

        MOV AH,02H
        MOV BH,0
        MOV DH,14 
        MOV DL,15
        INT 10H

        mov dx, OFFSET scoreMessage
        mov ah, 09h
        INT 21h

        MOV AH,02H
        MOV BH,0
        MOV DH,14
        MOV DL,23
        INT 10H
        .IF level == 1
            mov dx, OFFSET levelOneS
        .ELSEIF level == 2
            mov dx, OFFSET levelTwoS
        .ELSEIF level == 3
            mov dx, OFFSET levelThreeS
        .ENDIF

        mov ah, 09h
        INT 21h
        
    .ELSE 
        MOV AH,02H
        MOV BH,0
        MOV DH,10 
        MOV DL,15
        INT 10H

        mov dx, OFFSET winMessage
        mov ah, 09h
        INT 21h

        MOV AH,02H
        MOV BH,0
        MOV DH,12
        MOV DL,15
        INT 10H

        mov dx, OFFSET levelMessage
        mov ah, 09h
        INT 21h


        MOV AH,02H
        MOV BH,0
        MOV DH,12
        MOV DL,23
        INT 10H
        mov dx, OFFSET levelThree

        mov ah, 09h
        INT 21h

        MOV AH,02H
        MOV BH,0
        MOV DH,14 
        MOV DL,15
        INT 10H

        mov dx, OFFSET scoreMessage
        mov ah, 09h
        INT 21h

        MOV AH,02H
        MOV BH,0
        MOV DH,14
        MOV DL,23
        INT 10H
        mov dx, OFFSET CompleteS

        mov ah, 09h
        INT 21h

    .ENDIF
    

        mov ah, 11h
        int 16h
        jz outerLoop
        mov ah, 10h
        int 16h
        .IF AH == 1 ;ESC key being pressed.
            jmp Close
        .ENDIF

    jmp outerLoop

Close:
main endp
.EXIT
end