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

    ;Initial Background calling.
    invoke setScene
    invoke drawMario, marioX, marioY




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
            mov marioX, DEFAULT_MARIO_X
            mov marioY, DEFAULT_MARIO_Y
            mov level, 1
            mov isJump, 0
            mov jumpDir, 1
            mov availJumpHeight, 108d
            mov fireBool, 0
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
    
main endp
.EXIT
end