.model medium, stdcall
;Include external files.

;assets Files
include assets/brick.inc
include assets/block.inc
include assets/enemy.inc
include assets/flag.inc
include assets/flips.inc
include assets/flipwalk.inc
include assets/mario.inc
include assets/monster.inc
include assets/pole.inc
include assets/tunnel.inc
include assets/walkm.inc



;End of Inclusion.
.stack
.data

.code
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
    mov CX, 20
    mov AX, 0
    mov BX, 200
    forLoop:
        invoke drawBrick, AX, BX
        add AX, 16
    loop forLoop
    mov CX, 20
    mov AX, 0
    mov BX, 184
    forLoop1:
        invoke drawBrick, AX, BX
        add AX, 16
    loop forLoop1

    ;invoke drawMario, 30, 168d

    ;invoke drawTunnel, 70, 168d, 8, 6

    ;invoke drawTunnel, 140, 168d, 10, 7

    ;invoke drawMonster, 220, 168d

    invoke drawBlock, 40, 40

main endp
.EXIT
end