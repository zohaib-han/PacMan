
INCLUDE Irvine32.inc
includelib winmm.lib

PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

        BUFFER_SIZE = 501

.data

ground BYTE "------------------------------------------------------------------------------",0
ground1 BYTE "|",0ah,0
ground2 BYTE "|",0

page1 Byte " _______  _______  _______  _______  _______  _       ",0ah,0   
Byte "(  ____ )(  ___  )(  ____ \(       )(  ___  )( (    /|",0ah,0
Byte "| (    )|| (   ) || (    \/| () () || (   ) ||  \  ( |",0ah,0
Byte "| (____)|| (___) || |      | || || || (___) ||   \ | |",0ah,0
Byte "|  _____)|  ___  || |      | |(_)| ||  ___  || (\ \) |",0ah,0
Byte "| (      | (   ) || |      | |   | || (   ) || | \   |",0ah,0
Byte "| )      | )   ( || (____/\| )   ( || )   ( || )  \  |",0ah,0
Byte "|/       |/     \|(_______/|/     \||/     \||/    )_)",0ah,0


Maze2 Byte "|______________________________________________________________________________|"
      Byte "|  o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|  --------  o ---------  o ---------  o  ----------  o  ---------  o  ----  o |"
      Byte "|  o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|  o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|  --------  o ---------  o ---------  o  ----------  o  ---------  o  ----  o |"
      Byte "|                                                                              |"
      Byte "|  o    o    o                                               o     o     o     |"
      Byte "|                                __________                                    |"
      Byte "|  o    o    o                  |_________ |                 o     o     o     |"
      Byte "|                                ________| |                                   |"
      Byte "|  o    o    o                  | _________|                 o     o     o     |"
      Byte "|                               | |_________                                   |"
      Byte "|  o    o    o                  |__________|                 o     o     o     |"
      Byte "|                                                                              |"
      Byte "|  o    o    o                                               o     o     o     |"
      Byte "|                                                                              |"
      Byte "|                                                                              |"
      Byte "|  --------  o ---------  o ---------  o  ----------  o  ---------  o  ----  o |"
      Byte "|  o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|  o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|  --------  o ---------  o ---------  o  ----------  o  ---------  o  ----  o |"
      Byte "|  o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|______________________________________________________________________________|"

Maze3 Byte "|____________________________________    ______________________________________|"
      Byte "|o o o o o o o o o o o o o o o o o o \  /o o o o o o o o o o o o o o o o o o o |"
      Byte "|o o o|----------| o o|----------| o |  |o o|----------| o o|----------| o o o |"
      Byte "|o o o|__________| o o|__________| o |__|o o|__________| o o|__________| o o o |"
      Byte "|o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|  =========  =========   =========        =========   =========   =========   |"
      Byte "|  )(  o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o  )(   |"
      Byte "|  =========================================================================   |"
      Byte "|  o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o   |"
      Byte "|_______                        _____    _____                          _______|"
      Byte " _______\                      /\            /\                        /_______ "
      Byte "            o o o o o o o o    ||            ||   o o o o o o o o o o           "
      Byte "           =================   ||            ||   ===================           "
      Byte " --------   o o o o o o o o    ||____________||   o o o o o o o o o o  -------- "
      Byte " _______/                      (|_|_|_|_|_|_|_)                        \_______ "
      Byte "|  o o o o o o o o o o o o                          o o o o o o o o o o o o    |"
      Byte "|  ========================   (=======||=======)    ========================   |"
      Byte "|  )(  o o o o o o o o o o            ||             o o o o o o o o o o  )(   |"
      Byte "|  =========  =========   =========   ||   =========   =========   =========   |"
      Byte "|o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|o o o|----------| o o|----------| o o o o o|----------| o  |----------| o o o |"
      Byte "|o o o|__________| o o|__________| o o o o o|__________| o  |__________| o o o |"
      Byte "|o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o |"
      Byte "|______________________________________________________________________________|"


sticker Byte" ______   _______                            ",0ah,0        
Byte"(  ___ \ (  ____ \                           ",0ah,0
Byte"| (   ) )| (    \/                           ",0ah,0
Byte"| (__/ / | (__                               ",0ah,0
Byte"|  __ (  |  __)                              ",0ah,0
Byte"| (  \ \ | (                                 ",0ah,0
Byte"| )___) )| (____/\                           ",0ah,0
Byte"|/_\___/ (_______/                           ",0ah,0
Byte" _______  _        _______  _______ _________",0ah,0
Byte"(  ___  )( \      (  ____ \(  ____ )\__   __/",0ah,0
Byte"| (   ) || (      | (    \/| (    )|   ) (   ",0ah,0
Byte"| (___) || |      | (__    | (____)|   | |   ",0ah,0
Byte"|  ___  || |      |  __)   |     __)   | |   ",0ah,0
Byte"| (   ) || |      | (      | (\ (      | |   ",0ah,0
Byte"| )   ( || (____/\| (____/\| ) \ \__   | |   ",0ah,0
Byte"|/     \|(_______/(_______/|/   \__/   )_(   ",0ah,0                                             

Levelup Byte" _        _______           _______  _       ",0ah,0
Byte"( \      (  ____ \|\     /|(  ____ \( \      ",0ah,0
Byte"| (      | (    \/| )   ( || (    \/| (      ",0ah,0
Byte"| |      | (__    | |   | || (__    | |      ",0ah,0
Byte"| |      |  __)   ( (   ) )|  __)   | |      ",0ah,0
Byte"| |      | (       \ \_/ / | (      | |      ",0ah,0
Byte"| (____/\| (____/\  \   /  | (____/\| (____/\",0ah,0
Byte"(_______/(_______/   \_/   (_______/(_______/",0ah,0
Byte"                                             ",0ah,0
Byte"                      _______                ",0ah,0
Byte"            |\     /|(  ____ )               ",0ah,0
Byte"            | )   ( || (    )|               ",0ah,0
Byte"            | |   | || (____)|               ",0ah,0
Byte"            | |   | ||  _____)               ",0ah,0
Byte"            | |   | || (                     ",0ah,0
Byte"            | (___) || )                     ",0ah,0
Byte"            (_______)|/                      ",0ah,0
                  
Won Byte"          _______                        _______  _       ",0ah,0
Byte"|\     /|(  ___  )|\     /|    |\     /|(  ___  )( (    /|",0ah,0
Byte"( \   / )| (   ) || )   ( |    | )   ( || (   ) ||  \  ( |",0ah,0
Byte" \ (_) / | |   | || |   | |    | | _ | || |   | ||   \ | |",0ah,0
Byte"  \   /  | |   | || |   | |    | |( )| || |   | || (\ \) |",0ah,0
Byte"   ) (   | |   | || |   | |    | || || || |   | || | \   |",0ah,0
Byte"   | |   | (___) || (___) |    | () () || (___) || )  \  |",0ah,0
Byte"   \_/   (_______)(_______)    (_______)(_______)|/    )_)",0ah,0
                    
Over Byte" _______  _______  _______  _______    _______           _______  _______ ",0ah,0
Byte"(  ____ \(  ___  )(       )(  ____ \  (  ___  )|\     /|(  ____ \(  ____ )",0ah,0
Byte"| (    \/| (   ) || () () || (    \/  | (   ) || )   ( || (    \/| (    )|",0ah,0
Byte"| |      | (___) || || || || (__      | |   | || |   | || (__    | (____)|",0ah,0
Byte"| | ____ |  ___  || |(_)| ||  __)     | |   | |( (   ) )|  __)   |     __)",0ah,0
Byte"| | \_  )| (   ) || |   | || (        | |   | | \ \_/ / | (      | (\ (   ",0ah,0
Byte"| (___) || )   ( || )   ( || (____/\  | (___) |  \   /  | (____/\| ) \ \__",0ah,0
Byte"(_______)|/     \||/     \|(_______/  (_______)   \_/   (_______/|/   \__/",0ah,0
                                           

paus  Byte "/$$$$$$ ",0ah,0
      Byte "/$    $\",0ah,0
      Byte "/$$$$$$\",0ah,0
      Byte "/$      ",0ah,0
      Byte "/$      ",0ah,0
      Byte "/$      ",0ah,0
page2 Byte "S T A R T              ",0ah,0
      Byte "I N S T R U C T I O N  ",0ah,0
      Byte "E X I T                ",0ah,0

sstart Byte "S T A R T              ",0
iinstruction Byte "I N S T R U C T I O N  ",0
eexit Byte "E X I T                ",0
blank2 Byte "                       ",0

yourscore Byte "Y o u r    S c o r e",0

lid Byte "~~~~",0
blank Byte "      ",0
line1 Byte "------------------------------",0ah,0
_name  Byte "Enter Name: ",0
inst1 Byte "1- Use 'w' to move up   ",0ah,0
      Byte "2- Use 's' to move down ",0ah,0
      Byte "3- Use 'd' to move right",0ah,0
      Byte "4- Use 'a' to move left ",0ah,0
      Byte "5- Use 'backspace' to back      ",0ah,0
      Byte "Die !  Before you Die ! ",0ah,0
block Byte "|",0ah,0
      Byte "|",0ah,0
      Byte "|",0ah,0
      Byte "|",0ah,0
      Byte "|",0ah,0
      Byte "|",0ah,0

_coinsLevel1_y dw 2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,6,6,6,6,6,6,6,6
    dw 7,7,7,7,7,7,7,7,18,18,18,18,18,18,18,18,19,19,19,19,19,19,19,19,20,20,20,20,20,20,20,20,21
    dw 21,21,21,21,21,21,21,22,22,22,22,22,22,22,22,23,23,23,23,23,23,23,23
_coinsLevel1_x dw 5,15,25,35,45,55,65,75,5,15,25,35,45,55,65,75,5,15,25,35,45,55,65,75
    dw 5,15,25,35,45,55,65,75,5,15,25,35,45,55,65,75,5,15,25,35,45,55,65,75,5,15,25,35,45,55,65,75
    dw 5,15,25,35,45,55,65,75,5,15,25,35,45,55,65,75,5,15,25,35,45,55,65,75,5,15,25,35,45,55,65,75
    dw 5,15,25,35,45,55,65,75
    
_coinsLevel2_y dw 38 dup(1), 38 dup(3), 38 dup(4), 38 dup(19), 38 dup(20), 38 dup(22), 6 dup(2), 6 dup(5), 6 dup(18), 6 dup(21), 6 dup(7), 6 dup(9), 6 dup(11), 6 dup(13), 6 dup(15)
_coinsLevel2_x dw 3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59
    dw 61,63,65,67,69,71,73,75,77
    dw 3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59
    dw 61,63,65,67,69,71,73,75,77
    dw 3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59
    dw 61,63,65,67,69,71,73,75,77
    dw 3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59
    dw 61,63,65,67,69,71,73,75,77
    dw 3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59
    dw 61,63,65,67,69,71,73,75,77
    dw 3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59
    dw 61,63,65,67,69,71,73,75,77
    dw 13,26,39,54,68,77,13,26,39,54,68,77,13,26,39,54,68,77,13,26,39,54,68,77
    dw 3,8,13,61,67,73,3,8,13,61,67,73,3,8,13,61,67,73,3,8,13,61,67,73,3,8,13,61,67,73


_blocksLevel1_y dw 2,2,2,2,2,2,2,3,3,3,3,3,3,3,4,4,4,4,4,4,4,5,5,5,5,5,5,5,6,6,6,6,6,6,6
    dw 7,7,7,7,7,7,7,18,18,18,18,18,18,18,19,19,19,19,19,19,19,20,20,20,20,20,20,20
    dw 21,21,21,21,21,21,21,22,22,22,22,22,22,22,23,23,23,23,23,23,23
    dw 10,10,10,10,10,10,10,11,11,11,11,11,11,11,12,12,12,12,12,12,12
    dw 13,13,13,13,13,13,13,14,14,14,14,14,14,14,15,15,15,15,15,15,15
_blocksLevel1_x dw 10,20,30,40,50,60,70,10,20,30,40,50,60,70,10,20,30,40,50,60,70
    dw 10,20,30,40,50,60,70,10,20,30,40,50,60,70,10,20,30,40,50,60,70,10,20,30,40,50,60,70
    dw 10,20,30,40,50,60,70,10,20,30,40,50,60,70,10,20,30,40,50,60,70,10,20,30,40,50,60,70
    dw 10,20,30,40,50,60,70,10,20,30,40,50,60,70,10,20,30,40,50,60,70
    dw 10,20,30,40,50,60,70,10,20,30,40,50,60,70,10,20,30,40,50,60,70,10,20,30,40,50,60,70

MAX = 80                    
playerName BYTE MAX+1 DUP (?) 

temp byte ?
temp2 byte ?

flag byte 0
flag2 byte 0
flag3 byte 0

playerletter Byte ?

strScore BYTE "Score: ",0
score BYTE "dghgh", 0
totalscore dd 0
timer Byte 0

timer1 dd 0
timer2 dd 0
timer3 dd 0

_live BYTE "Lives: ",0
lives BYTE 3

xPos BYTE 6
yPos BYTE 19

x Byte ?

g1_xPos BYTE 2
g1_yPos BYTE 8
g2_xPos BYTE 4
g2_yPos BYTE 8
g3_xPos BYTE 6
g3_yPos BYTE 8

fruit_xPos Byte 0
fruit_yPos Byte 40

fruit_color Byte 1

nextchar Byte '_'
nextcolor Byte 4

nextchar2 Byte ' '
nextcolor2 Byte 1

direction dd 4
direction2 dd 4
direction3 dd 4

t1 dd 4
t2 dd 4
t3 dd 4

xCoinPos BYTE ?
yCoinPos BYTE ?
xbuffer BYTE ?
ybuffer BYTE ?

inputChar BYTE ?

end1 Byte 1
end2 Byte 0
end3 Byte 0
end4 Byte 0

ans Byte ?

SND_FILENAME DWORD 00020000h
SND_LOOP DWORD  00000008h
SND_ASYNC DWORD 00000001h
file BYTE "music/t.wav" , 0
file2 Byte "music/t1.wav", 0
file3 Byte "music/selection.wav", 0
file4 Byte "music/select.wav", 0
file5 Byte "music/coin.wav", 0
file6 Byte "music/out.wav", 0
file7 Byte "music/complete.wav",0
file8 Byte "music/over.wav",0

numberstring db 16 DUP (0)
    numberChar DD 1
    fmt db "%d",0

filename     BYTE "output.txt",0
filehandle   HANDLE ?
stringLength DWORD ?
filedata Byte 1000 dup('\n')
index dd 0
scoresArr dd 100 dup(1000)
tempp Byte 100 dup('\n')
number dd ?
noOfPlayers Byte 0
innercond dd ?
Plevel Byte 1
_nop dd 0

.code
main PROC

    mov score, 0

    pushad
    call _PAGE1    
    popad

    exit
main ENDP

DrawPlayer PROC
    ; draw player at (xPos,yPos):
    mov eax,green ;(blue*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,playerletter
    call WriteChar
    ret
DrawPlayer ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    
    ret
UpdatePlayer ENDP

Drawg1 PROC
    mov eax, white 
    call SetTextColor
    mov dl,g1_xPos
    mov dh,g1_yPos
    call Gotoxy
    mov al,"1"
    call WriteChar
    ret
Drawg1 ENDP
Drawg2 PROC
    mov eax, white 
    call SetTextColor
    mov dl,g2_xPos
    mov dh,g2_yPos
    call Gotoxy
    mov al,"2"
    call WriteChar
    ret
Drawg2 ENDP
Drawg3 PROC
    mov eax, white 
    call SetTextColor
    mov dl,g3_xPos
    mov dh,g3_yPos
    call Gotoxy
    mov al,"3"
    call WriteChar
    ret
Drawg3 ENDP

Updateg1 PROC
    
    mov dl,g1_xPos
    mov dh,g1_yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
Updateg1 ENDP


Updateg1d PROC
    
        sub g1_yPos, 2
        movzx eax, g1_yPos
        add g1_yPos, 2
        mov ebx, 80
        mul ebx
        movzx edx, g1_xPos
        add eax, edx
        add eax, ebx
        cmp flag2, 3
        je _mmaze3
        cmp flag2, 2
        je _mmaze2
        _mmaze2:      
        mov edi, offset Maze2
        jmp okkk
        _mmaze3:
         mov edi, offset Maze3
        jmp okkk
        okkk:
        add edi, eax
        mov al, [edi]
        mov nextchar2, al
        cmp al, 'o'
        jne _yellow
        
        _yellow:
        mov nextcolor2, yellow

        done:

        movzx eax, nextcolor2
        call SetTextColor
        mov dl,g1_xPos
        mov dh,g1_yPos
        call Gotoxy
        mov al,nextchar2
        call WriteChar
        ret
Updateg1d ENDP

Updateg1l PROC
    
        sub g1_yPos, 2
        movzx eax, g1_yPos
        add g1_yPos, 2
        mov ebx, 80
        mul ebx
        
        movzx edx, g1_xPos
        
        add eax, edx
        add eax, ebx
        cmp flag2, 3
        je _mmaze3
        cmp flag2, 2
        je _mmaze2
        _mmaze2:      
        mov edi, offset Maze2
        jmp okkk
        _mmaze3:
         mov edi, offset Maze3
        jmp okkk
        okkk:
        add edi, eax
        mov al, [edi]
        mov nextchar2, al
        cmp al, 'o'
        jne _yellow
        
        _yellow:
        mov nextcolor2, yellow

        done:

        movzx eax, nextcolor2
        call SetTextColor
        mov dl,g1_xPos
        mov dh,g1_yPos
        call Gotoxy
        mov al,nextchar2
        call WriteChar
        ret
Updateg1l ENDP
Updateg2d PROC
    
        sub g2_yPos, 2
        movzx eax, g2_yPos
        add g2_yPos, 2
        mov ebx, 80
        mul ebx
        movzx edx, g2_xPos
        add eax, edx
        add eax, ebx
        cmp flag2, 3
        je _mmaze3
        cmp flag2, 2
        je _mmaze2
        _mmaze2:      
        mov edi, offset Maze2
        jmp okkk
        _mmaze3:
         mov edi, offset Maze3
        jmp okkk
        okkk:
        add edi, eax
        mov al, [edi]
        mov nextchar2, al
        cmp al, 'o'
        jne _yellow
        
        _yellow:
        mov nextcolor2, yellow

        done:

        movzx eax, nextcolor2
        call SetTextColor
        mov dl,g2_xPos
        mov dh,g2_yPos
        call Gotoxy
        mov al,nextchar2
        call WriteChar
        ret
Updateg2d ENDP

Updateg2l PROC
    
        sub g2_yPos, 2
        movzx eax, g2_yPos
        add g2_yPos, 2
        mov ebx, 80
        mul ebx
        
        movzx edx, g2_xPos
        
        add eax, edx
        add eax, ebx
        cmp flag2, 3
        je _mmaze3
        cmp flag2, 2
        je _mmaze2
        _mmaze2:      
        mov edi, offset Maze2
        jmp okkk
        _mmaze3:
         mov edi, offset Maze3
        jmp okkk
        okkk:
        add edi, eax
        mov al, [edi]
        mov nextchar2, al
        cmp al, 'o'
        jne _yellow
        
        _yellow:
        mov nextcolor2, yellow

        done:

        movzx eax, nextcolor2
        call SetTextColor
        mov dl,g2_xPos
        mov dh,g2_yPos
        call Gotoxy
        mov al,nextchar2
        call WriteChar
        ret
Updateg2l ENDP
Updateg3d PROC
    
        sub g3_yPos, 2
        movzx eax, g3_yPos
        add g3_yPos, 2
        mov ebx, 80
        mul ebx
        movzx edx, g3_xPos
        add eax, edx
        add eax, ebx
        cmp flag2, 3
        je _mmaze3
        cmp flag2, 2
        je _mmaze2
        _mmaze2:      
        mov edi, offset Maze2
        jmp okkk
        _mmaze3:
         mov edi, offset Maze3
        jmp okkk
        okkk:
        add edi, eax
        mov al, [edi]
        mov nextchar2, al
        cmp al, 'o'
        jne _yellow
        
        _yellow:
        mov nextcolor2, yellow

        done:

        movzx eax, nextcolor2
        call SetTextColor
        mov dl,g3_xPos
        mov dh,g3_yPos
        call Gotoxy
        mov al,nextchar2
        call WriteChar
        ret
Updateg3d ENDP

Updateg3l PROC
    
        sub g3_yPos, 2
        movzx eax, g3_yPos
        add g3_yPos, 2
        mov ebx, 80
        mul ebx
        
        movzx edx, g3_xPos
        
        add eax, edx
        add eax, ebx
        cmp flag2, 3
        je _mmaze3
        cmp flag2, 2
        je _mmaze2
        _mmaze2:      
        mov edi, offset Maze2
        jmp okkk
        _mmaze3:
         mov edi, offset Maze3
        jmp okkk
        okkk:
        add edi, eax
        mov al, [edi]
        mov nextchar2, al
        cmp al, 'o'
        jne _yellow
        
        _yellow:
        mov nextcolor2, yellow

        done:

        movzx eax, nextcolor2
        call SetTextColor
        mov dl,g3_xPos
        mov dh,g3_yPos
        call Gotoxy
        mov al,nextchar2
        call WriteChar
        ret
Updateg3l ENDP

Drawfruit PROC
    

    movzx eax, fruit_color
    call SetTextColor
    mov dl,fruit_xPos
    mov dh,fruit_yPos
    call Gotoxy
    mov al,"$"
    call WriteChar
    mov al, fruit_color 
    mov bl, 7
    div bl
    mov fruit_color, ah
    cmp fruit_color, 0
        jne ok1
        inc fruit_color
        ok1:
       
    ret
Drawfruit ENDP

Updatefruit PROC
    
    cmp timer, 51
    jne ok
    cmp flag3, 3
    je _not
    mov nextcolor, green
    mov nextchar, '_'
    jmp ok
    _not:
    mov nextcolor, red
    mov nextchar, '_'
    ok:
    cmp timer, 50
    jne ok2
    cmp flag3, 3
    je _not2
    mov nextcolor, green
    mov nextchar, ' '
    jmp ok2
    _not2:
    mov nextcolor, red
    mov nextchar, ' '
    ok2:
    movzx eax, nextcolor
    call SetTextColor
    mov dl,fruit_xPos
    mov dh,fruit_yPos
    call Gotoxy
    mov al,nextchar
    call WriteChar
    
    dec fruit_yPos
        movzx eax, fruit_yPos
        inc fruit_yPos
        mov ebx, 80
        mul ebx
        movzx edx, fruit_xPos
        add eax, edx
        add eax, ebx
        cmp flag3, 3
        je _mmaze3
        cmp flag3, 2
        je _mmaze2
        _mmaze2:      
        mov edi, offset Maze2
        jmp okkk
        _mmaze3:
         mov edi, offset Maze3
        jmp okkk
        okkk:
        add edi, eax
        mov al, [edi]
        mov nextchar, al
        cmp al, 'o'
        je _yellow
        cmp al, 'C'
        je _white
        jmp _green
        _yellow:
        mov nextcolor, yellow
        jmp done
        _white:
        mov nextcolor, white
        jmp done
        _green:
        cmp fruit_yPos, 1
        je let
        cmp fruit_yPos, 23
        je let
        movzx ax, fruit_xPos
        mov bl, 2
        div bl
        cmp ah, 0
        jne _white
        let:
        cmp flag3, 2
        je __green
        mov nextcolor, red
        jmp done
        __green:
        mov nextcolor, green
        done:

    ret
Updatefruit ENDP

DrawCoin PROC
    mov eax,yellow 
    call SetTextColor
    mov dl,xCoinPos
    mov dh,yCoinPos
    call Gotoxy
    mov al,"o"
    call WriteChar
    mov eax,yellow
    call SetTextColor
    ret
DrawCoin ENDP

_PAGE1 PROC
    
    begin:
    
    call Music2

    mov eax, lightgreen
    call SetTextColor

    mov temp, 3
    mov esi, offset page1
    mov ecx, 8
    start:
        mov dh,temp
        mov dl,14
        call Gotoxy
        mov edx, esi
        call writestring
        add esi, 56
        inc temp
    LOOP start

     mov eax,white 
    call SetTextColor

    mov dh, 15
    mov dl, 25
    call Gotoxy
    mov edx, offset line1
    call writestring
    mov dh, 16
    mov dl, 24
    call Gotoxy
    mov edx, offset ground2
    call writestring
    mov dh, 16
    mov dl, 55
    call Gotoxy
    mov edx, offset ground1
    call writestring
    mov dh, 17
    mov dl, 25
    call Gotoxy
    mov edx, offset line1
    call writestring
   
    mov dh, 14
    mov dl, 33
    call Gotoxy
    mov edx, offset _name
    call writestring
    mov dh, 16
    mov dl, 26
    call Gotoxy
     mov eax, green
    call SetTextColor
    mov  edx, offset playerName
    mov  ecx,MAX          
    call readstring
    mov stringLength,eax

    mov edi, offset playerName
    mov al, [edi]
    mov playerletter, al

    call _PAGE2
    call Clrscr
    jmp begin

    ret
_PAGE1 ENDP

_PAGE2 PROC
 
    invoke PlaySound, NULL, NULL, 0

 begin:
    call Clrscr
    
    call _Boundaries

  
    
    mov eax, white
    call SetTextColor

    mov temp, 3
    mov esi, offset sticker
    mov ecx, 16
    start3:
        mov dh,temp
        mov dl,4
        call Gotoxy
        movzx ax, dh
        mov bl, 2
        div bl
        cmp ah, 0
        je _even
        mov eax, red
        call SetTextColor
        jmp done
        _even:
        mov eax, white
        call SetTextColor
        done:
        mov edx, esi
        call writestring
        add esi, 47
        inc temp
    LOOP start3

    mov eax, green
    call SetTextColor

    mov temp, 10
    mov esi, offset page2
    mov ecx, 3
    start1:
        mov dh,temp
        mov dl,55
        call Gotoxy
        mov edx, esi
        call writestring
        add esi, 25
        add temp, 5
    LOOP start1
    
    mov xbuffer, 10
    mov ybuffer, 46

    start:

    mov eax, white
       call SetTextColor
       mov dh, xbuffer
       mov dl, 55
       call Gotoxy
       cmp dh, 10
       je ss1
       cmp dh, 15
       je ii
       cmp dh, 20
       je ee
       ss1:
          mov edx, offset sstart
          call writestring
          mov eax, green
          call SetTextColor
          add xbuffer, 5
          mov dh, xbuffer
          mov dl, 55
          call Gotoxy
          mov edx, offset iinstruction
          call writestring
          add xbuffer, 5
          mov dh, xbuffer
          mov dl, 55
          call Gotoxy
          mov edx, offset eexit
          call writestring
          sub xbuffer, 10
          jmp starter
       ii:
          mov edx, offset iinstruction
          call writestring
          mov eax, green
          call SetTextColor
          add xbuffer, 5
          mov dh, xbuffer
          mov dl, 55
          call Gotoxy
          mov edx, offset eexit
          call writestring
          sub xbuffer, 10
          mov dh, xbuffer
          mov dl, 55
          call Gotoxy
          mov edx, offset sstart
          call writestring
          add xbuffer, 5
          jmp starter
       ee:
          mov edx, offset eexit
          call writestring
          mov eax, green
          call SetTextColor
          sub xbuffer, 5
          mov dh, xbuffer
          mov dl, 55
          call Gotoxy
          mov edx, offset iinstruction
          call writestring
          sub xbuffer, 5
          mov dh, xbuffer
          mov dl, 55
          call Gotoxy
          mov edx, offset sstart
          call writestring
          add xbuffer, 10
          
    
    starter:

    mov eax, white
    call SetTextColor
    
    mov dl, 0
    mov dh, 0
    call gotoxy
    call ReadChar

    mov inputChar,al

    cmp inputChar,"w"
    je up
    cmp inputChar,"s"
    je down
    cmp inputChar,13
    je _enter
    jmp start
    up:
        call Selection
       cmp xbuffer, 10
       je start
       sub xbuffer, 5
       jmp start

    down:
        call Selection
       cmp xbuffer, 20
       je start
       add xbuffer, 5
       jmp start
    _enter:
        call Select
       cmp xbuffer, 10
       je _1
       cmp xbuffer, 15
       je _2
       cmp xbuffer, 20
       je _3

       _1:
       call _Level1
       jmp _3
       _2:
       call _Instruction
       jmp begin
       _3:

        ret
_PAGE2 ENDP

_Level1 PROC
    
    
    mov eax, 1000
    call delay

    mov lives, 3
    mov xPos, 9
    mov yPos, 19
    mov g1_xPos, 2
    mov g1_yPos, 8

    call Clrscr
    call _Boundaries
    call DrawPlayer
    call Drawg1
    call _Level1Maze
    call _Level1Coins 

    gameLoop:

        cmp score, 96
        je passed
        
        pushad
        call _collision
        popad

        cmp lives, 0
        jle exitGame

        pushad
        call _scoreLiveName
        popad
        
        pushad
        call _ghostMovement
        popad

        pushad
        call _collision
        popad

        start:
        call ReadKey 
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,01bh
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar,"p"
        je _pause
        pushad
        call _collision
        popad
        jmp gameLoop

    moveUp:
   
        cmp yPos, 2
        je gameLoop
        dec yPos
        pushad
        movzx ax, xPos
        movzx bx, yPos
        mov edi, offset _blocksLevel1_y
        mov esi, offset _blocksLevel1_x
        mov flag, 0
        call _collisionBlock
        popad
        cmp flag, 1
        jne noCheck
        inc yPos
        pushad
        call _collision
        popad
        jmp gameLoop
        noCheck:
            call Music
            inc yPos
            call UpdatePlayer
            dec yPos
            call DrawPlayer
        pushad
        call _collisionCoin
        call _collision
        popad
        jmp gameLoop

    moveDown:
        cmp yPos, 23
        je gameLoop
        inc yPos
        pushad
        movzx ax, xPos
        movzx bx, yPos
        mov edi, offset _blocksLevel1_y
        mov esi, offset _blocksLevel1_x
        mov flag, 0
        call _collisionBlock
        popad
        cmp flag, 1
        jne noCheck1
        dec yPos
        pushad
        call _collision
        popad
        jmp gameLoop
        noCheck1:
        call Music
            dec yPos
        call UpdatePlayer
        inc yPos
        call DrawPlayer
        pushad
        call _collisionCoin
        call _collision
        popad
        jmp gameLoop

    moveLeft:
        cmp xPos, 1
        je gameLoop
        dec xPos
        pushad
        movzx ax, xPos
        movzx bx, yPos
        mov edi, offset _blocksLevel1_y
        mov esi, offset _blocksLevel1_x
        mov flag, 0
        call _collisionBlock
        popad
        cmp flag, 1
        jne noCheck22
        inc xPos
        pushad
        call _collision
        popad
        jmp gameLoop
        noCheck22:
        call Music
            inc xPos
        call UpdatePlayer
        dec xPos
        call DrawPlayer
        pushad
        call _collisionCoin
        call _collision
        popad
        jmp gameLoop

    moveRight:
        cmp xPos, 78
        je gameLoop
        inc xPos
        pushad
        movzx ax, xPos
        movzx bx, yPos
        mov edi, offset _blocksLevel1_y
        mov esi, offset _blocksLevel1_x
        mov flag, 0
        call _collisionBlock
        popad
        cmp flag, 1
        jne noCheck23
        dec xPos
        pushad
        call _collision
        popad
        jmp gameLoop
        noCheck23:
        call Music
       
            dec xPos
        call UpdatePlayer
        inc xPos
        call DrawPlayer
        pushad
        call _collision
        call _collisionCoin
        popad
        jmp gameLoop
    
    _pause:
            mov eax,red
            call SetTextColor
            call Clrscr
            mov temp, 8
            mov esi, offset paus
            mov ecx, 6
            Startt2:
                mov dh,temp
                mov dl,37
                call Gotoxy
                mov edx, esi
                call writestring
                add esi, 10
                inc temp
            LOOP Startt2
            call Readchar
            call Clrscr
            call _Boundaries

    call DrawPlayer

    call Drawg1

    call _Level1Maze
    call _Level1Coins
            jmp gameLoop

            passed:
                movzx ebx, score
                add totalscore, ebx
                call Complete
                call Clrscr
                call _levelup
                mov eax, 5000
                call delay
                call _Level2
                jmp _exit

            exitGame:
                movzx ebx, score
                add totalscore, ebx
                call GameOver
                call Clrscr
                call _over
                mov eax, 5000
                call delay
                call Clrscr
                pushad
                call _filehandle
                popad
                call main
        _exit:
    ret
_Level1 ENDP

_Level2 PROC
    
    mov Plevel, 2

    mov xPos, 39
    mov yPos, 3
    mov fruit_xPos, 40
    mov fruit_yPos, 0
    mov g1_xPos, 4
    mov g1_yPos, 7
    mov score, 0
    
    call Clrscr
    call DrawPlayer
    call Drawg1
    call _Level2Maze

    gameLoop:
       
       cmp score, 240
       jb yess
       movzx eax, score
       add totalscore, eax
       mov score, 0
       yess:

       mov edi, offset Maze2
       mov ecx, 1920
       start2:
            mov al, [edi]
            cmp al, 'o'
            je _not2
            inc edi
       loop start2
       jmp passed
       
        cmp lives, 0
        je exitGame

       _not2:

        inc timer
        inc timer1
        
        mov flag2, 2
        call _fruitMovement 

        pushad
        call _collisionfruit
        call _collision
        popad

        cmp lives, 0
        jle exitGame

        pushad
        call _scoreLiveName
        popad
        
        call DrawPlayer
        
        mov flag2, 2
        call _ghostMovement1
       

        pushad
        call _collisionfruit
        call _collision
        popad

        start:
        call ReadKey 
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar,"p"
        je _pause
        pushad
        call _collisionfruit
        call _collision
        popad
        jmp gameLoop

    moveUp:
        
        cmp yPos, 1
        je gameLoop
        dec yPos
        movzx eax, yPos
        inc yPos
        mov ebx, 80
        mul ebx
        movzx edx, xPos
        add eax, edx
        sub eax, ebx
        mov edi, offset Maze2
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide
        cmp al, 'o'
        je nocollide
        pushad
        call _collision
        popad
        jmp gameLoop
        nocollide:
            pushad
            call UpdatePlayer
            dec yPos
            call DrawPlayer
            popad
            cmp al, "o"
            jne _not4
            mov bl, ' '
            mov [edi], bl
            inc score
            call Coin
            jmp gameLoop
            _not4:
            call Music
            jmp gameLoop


    moveDown:
        cmp yPos, 23
        je gameLoop
        dec yPos
        movzx eax, yPos
        inc yPos
        mov ebx, 80
        mul ebx
        movzx edx, xPos
        add eax, edx
        add eax, ebx
        mov edi, offset Maze2
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide1
        cmp al, 'o'
        je nocollide1
        pushad
        call _collision
        popad
        jmp gameLoop
        nocollide1:
            pushad
            call UpdatePlayer
            inc yPos
            call DrawPlayer
            popad
            cmp al, 'o'
            jne _not3
            mov bl, ' '
            mov [edi], bl
            inc score
            call Coin
            jmp gameLoop
            _not3:
            call Music
            jmp gameLoop

    moveLeft:
        cmp xPos, 1
        je gameLoop
        dec yPos
        movzx eax, yPos
        inc yPos
        mov ebx, 80
        mul ebx
        movzx edx, xPos
        add eax, edx
        sub eax, 1
        mov edi, offset Maze2
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide3
        cmp al, 'o'
        je nocollide3
        pushad
        call _collision
        popad
        jmp gameLoop
        nocollide3:
            pushad
            call UpdatePlayer
            dec xPos
            call DrawPlayer
            popad
            cmp al, 'o'
            jne _nott
            mov bl, ' '
            mov [edi], bl
            inc score
            call Coin
            jmp gameLoop
            _nott:  
            call Music
            jmp gameLoop

    moveRight:
        cmp xPos, 78
        je gameLoop
        dec yPos
        movzx eax, yPos
        inc yPos
        mov ebx, 80
        mul ebx
        movzx edx, xPos
        add eax, edx
        add eax, 1
        mov edi, offset Maze2
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide4
        cmp al, 'o'
        je nocollide4
        pushad
        call _collision
        popad
        jmp gameLoop
        nocollide4:
            pushad
            call UpdatePlayer
            inc xPos
            call DrawPlayer
            popad
            cmp al, 'o'
            jne _not
            mov bl, ' '
            mov [edi], bl
            inc score
            call Coin
            jmp gameLoop
            _not:
             call Music
            jmp gameLoop
    
    _pause:
            mov eax,red
            call SetTextColor
            call Clrscr
            mov temp, 8
            mov esi, offset paus
            mov ecx, 6
            Startt2:
                mov dh,temp
                mov dl,37
                call Gotoxy
                mov edx, esi
                call writestring
                add esi, 10
                inc temp
            LOOP Startt2
            call readchar
            
            call _Boundaries

    call DrawPlayer

    call Drawg1

    call _Level2Maze
            jmp gameLoop

            passed:
                movzx ebx, score
                add totalscore, ebx
                call Complete
                call Clrscr
                call _levelup
                mov eax, 5000
                call delay
                call _Level3
                jmp _exit

            exitGame:
                movzx ebx, score
                add totalscore, ebx
                call GameOver
                call Clrscr
                call _over
                mov eax, 5000
                call delay
                pushad
                call _filehandle
                popad
                call Clrscr
                call main
    _exit:

    ret
_Level2 ENDP

_Level3 PROC

    mov Plevel, 3
    
    mov xPos, 39
    mov yPos, 16
    mov fruit_xPos, 40
    mov fruit_yPos, 0
    mov g1_xPos, 38
    mov g1_yPos, 13
    mov g2_xPos, 40
    mov g2_yPos, 13
    mov g3_xPos, 42
    mov g3_yPos, 13
    mov score, 0
    
    call Clrscr
    call DrawPlayer
    call Drawg1
    call Drawg2
    call Drawg3
    call _Level3Maze
    call _hidden

    gameLoop:
        
       cmp score, 240
       jb yess
       movzx eax, score
       add totalscore, eax
       mov score, 0
       yess:

       mov edi, offset Maze3
       mov ecx, 1920
       start3:
            mov al, [edi]
            cmp al, 'o'
            je _not3
            inc edi
       loop start3
       jmp passed
        
        cmp lives, 0
        jle exitGame

        _not3:

        cmp g1_xPos, 47
        jl _ch
        cmp g2_xPos, 47
        jl _ch
        cmp g3_xPos, 47
        jl _ch
        mov dl, 37
        mov dh, 10
        call Gotoxy
        mov edx, offset lid
        call writeString
        mov x, 9
        movzx eax, x
        mov ebx, 80
        mul ebx
        mov x, 37
        movzx edx, x
        add eax, edx
        mov edi, offset Maze3
        add edi, eax
        mov eax, white
        call SetTextColor
        mov al, '~'
        mov [edi], al
        inc edi
        mov [edi], al
        inc edi
        mov [edi], al
        inc edi
        mov [edi], al
        _ch:
    
        inc timer
        inc timer1
        inc timer2
        inc timer3
        
        mov flag2, 3
        call _fruitMovement 

        pushad
        call _collisionfruit
        call _collision2
        popad

        cmp lives, 0
        je exitGame

        pushad
        call _scoreLiveName
        popad
        
        call DrawPlayer
        
        mov flag2, 3
        call _ghostMovement1
        mov flag2, 3
        call _ghostMovement2
        mov flag2, 3
        call _ghostMovement3
       

        pushad
        call _collisionfruit
        call _collision2
        popad

        start:
        call ReadKey 
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar,"p"
        je _pause
        pushad
        call _collisionfruit
        call _collision2
        popad
        jmp gameLoop

    moveUp:

        cmp yPos, 1
        je gameLoop
        dec yPos
        movzx eax, yPos
        inc yPos
        mov ebx, 80
        mul ebx
        movzx edx, xPos
        add eax, edx
        sub eax, ebx
        mov edi, offset Maze3
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide
        cmp al, 'o'
        je nocollide
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide:
            
            pushad
            call UpdatePlayer
            dec yPos
            call DrawPlayer
            popad
            cmp al, 'o'
            jne _not
            mov bl, ' '
            mov [edi], bl
            inc score
            call Coin
            jmp gameLoop
            _not:
             call Music
            jmp gameLoop


    moveDown:
        cmp yPos, 23
        je gameLoop
        dec yPos
        movzx eax, yPos
        inc yPos
        mov ebx, 80
        mul ebx
        movzx edx, xPos
        add eax, edx
        add eax, ebx
        mov edi, offset Maze3
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide1
        cmp al, 'o'
        je nocollide1
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide1:
            
            pushad
            call UpdatePlayer
            inc yPos
            call DrawPlayer
            popad
            cmp al, 'o'
            jne _nottt
            mov bl, ' '
            mov [edi], bl
            inc score
            call Coin
            jmp gameLoop
            _nottt:
             call Music
            jmp gameLoop

    moveLeft:
        call _hidden
        cmp yPos, 12
        je _ok
        cmp yPos, 13
        jne no
        _ok:
        cmp xPos, 1
        je l
        jmp no
        l:
            call updatePlayer
          mov xPos, 78
            call DrawPlayer
        no:
        cmp xPos, 1
        je gameLoop
        dec yPos
        movzx eax, yPos
        inc yPos
        mov ebx, 80
        mul ebx
        movzx edx, xPos
        add eax, edx
        sub eax, 1
        mov edi, offset Maze3
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide3
        cmp al, 'o'
        je nocollide3
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide3:
            
            pushad
            
            call UpdatePlayer
            dec xPos
            call DrawPlayer
            popad
            cmp al, 'o'
            jne _not2
            mov bl, ' '
            mov [edi], bl
            inc score
            call Coin
            jmp gameLoop
            _not2:
             call Music
            jmp gameLoop

    moveRight:
        call _hidden
        cmp yPos, 12
        je __ok2
        cmp yPos, 13
        jne no2
        __ok2:
        cmp xPos, 78
        je r
        jmp no2
        r:
            call updatePlayer
          mov xPos, 0
            call DrawPlayer
        no2:
        cmp xPos, 78
        je gameLoop
        dec yPos
        movzx eax, yPos
        inc yPos
        mov ebx, 80
        mul ebx
        movzx edx, xPos
        add eax, edx
        add eax, 1
        mov edi, offset Maze3
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide4
        cmp al, 'o'
        je nocollide4
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide4:
            
            pushad
            call UpdatePlayer
            inc xPos
            call DrawPlayer
            popad
            cmp al, 'o'
            jne _not1
            mov bl, ' '
            mov [edi], bl
            inc score
            call Coin
            jmp gameLoop
            _not1:
             call Music
            jmp gameLoop
    
    _pause:
            mov eax,red
            call SetTextColor
            call Clrscr
            mov temp, 8
            mov esi, offset paus
            mov ecx, 6
            Start2:
                mov dh,temp
                mov dl,37
                call Gotoxy
                mov edx, esi
                call writestring
                add esi, 10
                inc temp
            LOOP Start2
            call readchar
            
            call _Boundaries

    call DrawPlayer

    call Drawg1
    call Drawg2
    call Drawg3

    call _Level3Maze
            jmp gameLoop

            passed:
                movzx ebx, score
                add totalscore, ebx
                call Complete
                call Clrscr
                call _won
                mov eax, 5000
                call delay
                pushad
                call _filehandle
                popad
                call Clrscr
                call main
                jmp _exit

            exitGame:
                movzx ebx, score
                add totalscore, ebx
                call GameOver
                call Clrscr
                call _over
                mov eax, 5000
                call delay
                pushad
                call _filehandle
                popad
                call Clrscr
                call main
    _exit:

    ret
_Level3 ENDP

_Instruction PROC

    call Clrscr
    call _Boundaries

    mov eax,white
    call SetTextColor

    mov temp, 5
    mov esi, offset inst1
    mov ecx, 6
    start:
        mov dh,temp
        mov dl,25
        call Gotoxy
        mov edx, esi
        call writestring
        add esi, 26
        add temp, 3
    LOOP start

    start1:
    call ReadChar
    mov inputChar,al
    cmp inputChar, 8
    je ok
    jmp start1
    ok:
    call Clrscr

    ret
_Instruction ENDP

_Boundaries PROC

   mov eax, lightgreen
   call SetTextColor

    mov dl,1        ; col 
    mov dh,24       ; row 
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    
    mov dl,1
    mov dh,1
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

    mov ecx,23
    mov temp,1
    l1:
    mov dl,0
    mov dh, temp
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    inc temp
    loop l1


    mov ecx,23
    mov dh,1
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,79
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2


    ret
_Boundaries ENDP

_Level1Maze PROC

    mov eax, white
    call SetTextcolor
    mov ecx,7
    mov temp2,10
    l2:
    mov temp,18
    mov eax, 6
    l1:
    cmp eax, 0
    je ok
    mov dl,temp2
    mov dh, temp
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    inc temp 
    dec eax
    jmp l1
    ok:
    add temp2, 10
    loop l2

    mov ecx,7
    mov temp2,10
    l222:
    mov temp,10
    mov eax, 6
    l111:
    cmp eax, 0
    je ok222
    mov dl,temp2
    mov dh, temp
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    inc temp 
    dec eax
    jmp l111
    ok222:
    add temp2, 10
    loop l222

    mov ecx,7
    mov temp2,10
    l22:
    mov temp,2
    mov eax, 6
    l11:
    cmp eax, 0
    je okk
    mov dl,temp2
    mov dh, temp
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    inc temp 
    dec eax
    jmp l11
    okk:
    add temp2, 10
    loop l22

    ret
_Level1Maze ENDP

_Level2Maze PROC

    mov dl,0
    mov dh,1
    mov ecx, 24
    mov edi, offset Maze2

    start:
    mov temp2, 80
    inner:
        cmp temp2, 0
        je outer
        mov al, [edi]
        mov temp, al
        cmp dl, 0
        je _green
        cmp dh, 1
        je _green
        cmp dl, 79
        je _green
        cmp dh, 24 
        je _green
        cmp al, 'o'
        je _yellow
        mov al, dl
        mov bl, 2
        div bl
        cmp ah, 0
        je _green
        jmp _white
        jmp _set
        _yellow:
               mov eax, yellow
               jmp _set
        _white:
               mov eax, white
                jmp _set
        _green:
            mov eax, lightgreen
               jmp _set
        _set:
             call setTextColor
             call Gotoxy
             mov al, temp
             call writechar
             inc edi
             inc dl
             dec temp2
    jmp inner
    outer:
    mov dl, 0
    inc dh
    Loop start    

    ret
_Level2Maze ENDP

_Level3Maze PROC

    mov dl,0
    mov dh,1
    mov ecx, 24
    mov edi, offset Maze3

    start:
    mov temp2, 80
    inner:
        cmp temp2, 0
        je outer
        mov al, [edi]
        mov temp, al
        cmp dl, 0
        je _red
        cmp dh, 1
        je _red
        cmp dl, 79
        je _red
        cmp dh, 24 
        je _red
        cmp al, 'o'
        je _yellow
        cmp al, '\'
        je _red
        cmp al, '/'
        je _red
        mov al, dl
        mov bl, 2
        div bl
        cmp ah, 0
        je _red
        jmp _white
        _yellow:
               mov eax, yellow
               jmp _set
        _white:
               mov eax, white
                jmp _set
        _red:
            mov eax, red
               jmp _set
        _set:
             call setTextColor
             call Gotoxy
             mov al, temp
             call writechar
             inc edi
             inc dl
             dec temp2
    jmp inner
    outer:
    mov dl, 0
    inc dh
    Loop start    

    ret
_Level3Maze ENDP

_Level1Coins PROC

        mov edi, offset _coinsLevel1_y
        mov esi, offset _coinsLevel1_x
        mov ecx, 96
        
        start:
            mov al, [edi]
            cmp al, -1
            je notdraw
            mov al, [edi]
            mov bl, [esi]
            mov yCoinPos, al
            mov xCoinPos, bl
            call DrawCoin
            notdraw:
            add edi, 2
            add esi, 2
        loop start



        ret
_Level1Coins ENDP

_ghostMovement PROC

        gravity:
        cmp g1_xPos,78
        jge end22
        cmp g1_xPos,2
        jle end11
        jmp cc
        ;make player fall:
        end11:
        cmp g1_yPos,8
        jg end44
        mov end1,1
        mov end2,0
        mov end3,0
        mov end4,0
        jmp cc
        end22:
        cmp g1_yPos,17
        jge end33
        mov end2,1
        mov end1,0
        mov end3,0
        mov end4,0
        jmp cc
        end33:
        mov end3,1
        mov end1,0
        mov end2,0
        mov end4,0
        jmp cc
        end44:
        mov end4,1
        mov end1,0
        mov end2,0
        mov end3,0
        cc:
        cmp end1, 1
        je next
        cmp end2, 1
        je nichay
        cmp end3, 1
        je prev
        cmp end4, 1
        je uper
        next:
        call Updateg1
        inc g1_xPos
        call Drawg1
        mov eax,80
        call Delay
        jmp start
        prev:
        call Updateg1
        dec g1_xPos
        call Drawg1
        mov eax,80
        call Delay
        jmp start
        uper:
        call Updateg1
        dec g1_yPos
        call Drawg1
        mov eax,80
        call Delay
        jmp start
        nichay:
        call Updateg1
        inc g1_yPos
        call Drawg1
        mov eax,80
        call Delay
        start:
ret
_ghostMovement ENDP

_ghostMovement1 PROC
    
    cmp g1_yPos, 9
    jne _t11
    mov t1, 15
    _t11:
    mov eax, t1
    cmp timer1,eax
    jl con2

    mov timer1, 0

    call randomize
    mov eax, 4
    call randomrange     ; next=1 prev=2 down=3 up=4
    inc eax
    mov direction, eax

    gameLoop:
   
    inc direction
    mov eax, direction
    mov bl, 5
    div bl

    movzx eax, ah
    mov direction, eax

    con2:

    cmp direction, 1
    je moveRight
    cmp direction, 3
    je moveLeft
    cmp direction, 2
    je moveDown
    cmp direction, 4
    je moveUp
    jmp gameLoop

    moveUp:
        cmp g1_yPos, 2
        je gameLoop
        dec g1_yPos
        movzx eax, g1_yPos
        inc g1_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g1_xPos
        add eax, edx
        sub eax, ebx
        cmp flag2, 2
        je _mmaze2
        cmp flag2, 3
        je _mmaze3
        _mmaze2:
                mov edi, offset Maze2
                jmp okkk
        _mmaze3:
        mov edi, offset Maze3
        okkk:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide
        cmp al, 'o'
        je nocollide
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide:
            
            call Updateg1d
            dec g1_yPos
            call Drawg1
            mov eax,40
        call Delay
            jmp con


    moveDown:
        cmp g1_yPos, 23
        je gameLoop
        dec g1_yPos
        movzx eax, g1_yPos
        inc g1_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g1_xPos
        add eax, edx
        add eax, ebx
        cmp flag2, 2
        je _maze2
        cmp flag2, 3
        je _maze3
        _maze2:
                mov edi, offset Maze2
                jmp okk3
        _maze3:
        mov edi, offset Maze3
        okk3:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide1
        cmp al, 'o'
        je nocollide1
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide1:
    
            call Updateg1d
            inc g1_yPos
            call Drawg1
            mov eax,40
        call Delay
            jmp con

    moveLeft:
        cmp g1_xPos, 1
        je gameLoop
        dec g1_yPos
        movzx eax, g1_yPos
        inc g1_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g1_xPos
        add eax, edx
        sub eax, 1
        cmp flag2, 2
        je _aze2
        cmp flag2, 3
        je _aze3
        _aze2:
                mov edi, offset Maze2
                jmp okk2
        _aze3:
        mov edi, offset Maze3
        okk2:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide3
        cmp al, 'o'
        je nocollide3
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide3:
    
            call Updateg1l
            dec g1_xPos
            call Drawg1
            mov eax,40
        call Delay
            jmp con

    moveRight:
        cmp g1_xPos, 78
        je gameLoop
        dec g1_yPos
        movzx eax, g1_yPos
        inc g1_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g1_xPos
        add eax, edx
        add eax, 1
        cmp flag2, 2
        je _mze2
        cmp flag2, 3
        je _mze3
        _mze2:
                mov edi, offset Maze2
                jmp okk1
        _mze3:
        mov edi, offset Maze3
        okk1:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide4
        cmp al, 'o'
        je nocollide4
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide4:
    
            call Updateg1l
            inc g1_xPos
            call Drawg1
            mov eax,40
        call Delay
            jmp con

    con:

    ret
_ghostMovement1 ENDP
_ghostMovement2 PROC


    cmp g2_yPos, 9
    jne _t22
    mov t2, 15
    _t22:
    mov eax, t2
    cmp timer2,eax
    jl con2

    mov timer2, 0

    call randomize
    mov eax, 4
    call randomrange     ; next=1 prev=2 down=3 up=4
    inc eax
    mov direction2, eax

    gameLoop:
   
    inc direction2
    mov eax, direction2
    mov bl, 5
    div bl

    movzx eax, ah
    mov direction2, eax

    con2:

    cmp direction2, 1
    je moveRight
    cmp direction2, 3
    je moveLeft
    cmp direction2, 2
    je moveDown
    cmp direction2, 4
    je moveUp
    jmp gameLoop

    moveUp:
        cmp g2_yPos, 2
        je gameLoop
        dec g2_yPos
        movzx eax, g2_yPos
        inc g2_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g2_xPos
        add eax, edx
        sub eax, ebx
        cmp flag2, 2
        je _mmaze2
        cmp flag2, 3
        je _mmaze3
        _mmaze2:
                mov edi, offset Maze2
                jmp okkk
        _mmaze3:
        mov edi, offset Maze3
        okkk:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide
        cmp al, 'o'
        je nocollide
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide:
            
            call Updateg2d
            dec g2_yPos
            call Drawg2
            mov eax,40
        call Delay
            jmp con


    moveDown:
        cmp g2_yPos, 23
        je gameLoop
        dec g2_yPos
        movzx eax, g2_yPos
        inc g2_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g2_xPos
        add eax, edx
        add eax, ebx
        cmp flag2, 2
        je _maze2
        cmp flag2, 3
        je _maze3
        _maze2:
                mov edi, offset Maze2
                jmp okk3
        _maze3:
        mov edi, offset Maze3
        okk3:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide1
        cmp al, 'o'
        je nocollide1
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide1:
    
            call Updateg2d
            inc g2_yPos
            call Drawg2
            mov eax,40
        call Delay
            jmp con

    moveLeft:
        cmp g2_xPos, 1
        je gameLoop
        dec g2_yPos
        movzx eax, g2_yPos
        inc g2_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g2_xPos
        add eax, edx
        sub eax, 1
        cmp flag2, 2
        je _aze2
        cmp flag2, 3
        je _aze3
        _aze2:
                mov edi, offset Maze2
                jmp okk2
        _aze3:
        mov edi, offset Maze3
        okk2:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide3
        cmp al, 'o'
        je nocollide3
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide3:
    
            call Updateg2l
            dec g2_xPos
            call Drawg2
            mov eax,40
        call Delay
            jmp con

        moveRight:
        cmp g2_xPos, 78
        je gameLoop
        dec g2_yPos
        movzx eax, g2_yPos
        inc g2_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g2_xPos
        add eax, edx
        add eax, 1
        cmp flag2, 2
        je _mze2
        cmp flag2, 3
        je _mze3
        _mze2:
                mov edi, offset Maze2
                jmp okk1
        _mze3:
        mov edi, offset Maze3
        okk1:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide4
        cmp al, 'o'
        je nocollide4
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide4:
    
            call Updateg2l
            inc g2_xPos
            call Drawg2
            mov eax,40
        call Delay
            jmp con

    con:

    ret
_ghostMovement2 ENDP
_ghostMovement3 PROC


    cmp g3_yPos, 9
    jne _t33
    mov t3, 15
    _t33:
    mov eax, t3
    cmp timer3,eax
    jl con2

    mov timer3, 0

    call randomize
    mov eax, 4
    call randomrange     ; next=1 prev=2 down=3 up=4
    inc eax
    mov direction3, eax

    gameLoop:
   
    inc direction3
    mov eax, direction3
    mov bl, 5
    div bl

    movzx eax, ah
    mov direction3, eax

    con2:

    cmp direction3, 1
    je moveRight
    cmp direction3, 3
    je moveLeft
    cmp direction3, 2
    je moveDown
    cmp direction3, 4
    je moveUp
    jmp gameLoop

    moveUp:
        cmp g3_yPos, 2
        je gameLoop
        dec g3_yPos
        movzx eax, g3_yPos
        inc g3_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g3_xPos
        add eax, edx
        sub eax, ebx
        cmp flag2, 2
        je _mmaze2
        cmp flag2, 3
        je _mmaze3
        _mmaze2:
                mov edi, offset Maze2
                jmp okkk
        _mmaze3:
        mov edi, offset Maze3
        okkk:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide
        cmp al, 'o'
        je nocollide
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide:
            
            call Updateg3d
            dec g3_yPos
            call Drawg3
            mov eax,40
        call Delay
            jmp con


    moveDown:
        cmp g3_yPos, 23
        je gameLoop
        dec g3_yPos
        movzx eax, g3_yPos
        inc g3_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g3_xPos
        add eax, edx
        add eax, ebx
        cmp flag2, 2
        je _maze2
        cmp flag2, 3
        je _maze3
        _maze2:
                mov edi, offset Maze2
                jmp okk3
        _maze3:
        mov edi, offset Maze3
        okk3:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide1
        cmp al, 'o'
        je nocollide1
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide1:
    
            call Updateg3d
            inc g3_yPos
            call Drawg3
            mov eax,40
        call Delay
            jmp con

    moveLeft:
        cmp g3_xPos, 1
        je gameLoop
        dec g3_yPos
        movzx eax, g3_yPos
        inc g3_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g3_xPos
        add eax, edx
        sub eax, 1
        cmp flag2, 2
        je _aze2
        cmp flag2, 3
        je _aze3
        _aze2:
                mov edi, offset Maze2
                jmp okk2
        _aze3:
        mov edi, offset Maze3
        okk2:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide3
        cmp al, 'o'
        je nocollide3
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide3:
    
            call Updateg3l
            dec g3_xPos
            call Drawg3
            mov eax,40
        call Delay
            jmp con

        moveRight:
        cmp g3_xPos, 78
        je gameLoop
        dec g3_yPos
        movzx eax, g3_yPos
        inc g3_yPos
        mov ebx, 80
        mul ebx
        movzx edx, g3_xPos
        add eax, edx
        add eax, 1
        cmp flag2, 2
        je _mze2
        cmp flag2, 3
        je _mze3
        _mze2:
                mov edi, offset Maze2
                jmp okk1
        _mze3:
        mov edi, offset Maze3
        okk1:
        add edi, eax
        mov al, [edi]
        cmp al, ' '
        je nocollide4
        cmp al, 'o'
        je nocollide4
        pushad
        call _collision2
        popad
        jmp gameLoop
        nocollide4:
    
            call Updateg3l
            inc g3_xPos
            call Drawg3
            mov eax,40
        call Delay
            jmp con

    con:

    ret
_ghostMovement3 ENDP

_scoreLiveName PROC

    mov eax,white (black * 16)
        call SetTextColor

        mov dl,2
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov eax,green
        call SetTextColor
        mov al,score
        call WriteInt

         mov eax,white
        call SetTextColor
        mov dl,70
        mov dh,0
        call Gotoxy
        mov edx,OFFSET _live
        call WriteString
         mov eax,green
        call SetTextColor
        mov al, lives
        call WriteInt

        
         mov eax,white
        call SetTextColor
        mov dl,40
        mov dh,0
        call Gotoxy
        mov edx, offset playerName
        call WriteString

ret
_scoreLiveName ENDP

_collision PROC
   
        mov bl,xPos
        cmp bl,g1_xPos
        jne notCollide
        mov bl,yPos
        cmp bl,g1_yPos
        jne notCollide
        call _Out
        dec lives
        mov xPos, 38
        mov yPos, 17
        call Drawplayer
        mov eax, 500
        call delay
        notCollide:

ret
_collision ENDP

_collision2 PROC
   
        mov bl,xPos
        cmp bl,g1_xPos
        jne notCollide2
        mov bl,yPos
        cmp bl,g1_yPos
        jne notCollide2
        call _Out
        dec lives
        mov xPos, 38
        mov yPos, 6
        call Drawplayer
        mov eax, 1000
        call delay
        jmp notCollide
        notCollide2:
        mov bl,xPos
        cmp bl,g2_xPos
        jne notCollide3
        mov bl,yPos
        cmp bl,g2_yPos
        jne notCollide3
        call _Out
        dec lives
        mov xPos, 38
        mov yPos, 6
        call Drawplayer
        mov eax, 1000
        call delay
        jmp notCollide
        notCollide3:
        mov bl,xPos
        cmp bl,g3_xPos
        jne notCollide
        mov bl,yPos
        cmp bl,g3_yPos
        jne notCollide
        call _Out
        dec lives
        mov xPos, 38
        mov yPos, 6
        call Drawplayer
        mov eax, 1000
        call delay
                
notCollide:

ret
_collision2 ENDP

_collisionfruit PROC
   
        mov bl,xPos
        cmp bl,fruit_xPos
        jne notCollide
        mov bl,yPos
        cmp bl,fruit_yPos
        jne notCollide
        add score,10
        mov timer, 0
        pushad
        mov al, playerletter
        mov nextchar, al
        popad
        mov nextcolor, green
        call Updatefruit
        mov fruit_yPos, 0
        inc fruit_color
        mov eax, 76
        call randomrange
        add eax, 2
        mov ebx, eax
        mov fruit_xPos, bl
        notCollide:

ret
_collisionfruit ENDP

_collisionCoin PROC
   
        movzx ax, xPos
        movzx bx, yPos
        mov edi, offset _coinsLevel1_y
        mov esi, offset _coinsLevel1_x
        mov ecx, 96
        start:
        cmp bx,[edi]
        je collide
        jmp next
        collide:
        cmp ax, [esi]
        je collidefinal
        next:
        add edi, 2
        add esi, 2
        loop start
        jmp notCollide
        collidefinal:
        call Coin
        inc score
        mov bx, -1
        mov [edi], bx
        notCollide:

ret
_collisionCoin ENDP

_collisionBlock PROC
   
        mov ecx, 126
        start:
        mov dx, [edi]
        cmp bx,[edi]
        je collide
        jmp next
        collide:
        cmp ax, [esi]
        je collidefinal
        next:
        add edi, 2
        add esi, 2
        loop start
        jmp notCollide
        collidefinal:
        mov flag, 1
        jmp done
        notCollide:
        mov flag, 0
        done:
ret
_collisionBlock ENDP

_fruitMovement PROC
        
        cmp timer, 50
        jl done
        
        cmp flag2, 3
        je _mmaze3
        cmp flag2, 2
        je _mmaze2

        _mmaze3:
                mov flag3, 3
                jmp hj
        
        _mmaze2:
                mov flag3, 2
                jmp hj
        hj:

        call Updatefruit
        inc fruit_yPos
        call Drawfruit

        cmp fruit_yPos, 24
        jnae done
       
        mov timer, 0
        mov nextchar, '_'
        
        cmp flag2, 3
        jne _green
        mov flag3, 3
        mov nextcolor, red
        jmp good
        _green:
        mov flag3, 2
        mov nextcolor, green
        good:
        call Updatefruit
        mov fruit_yPos, 0
        inc fruit_color
        mov eax, 76
        call randomrange
        add eax, 2
        mov ebx, eax
        mov fruit_xPos, bl
        
        done:
        
ret
_fruitMovement ENDP

_levelup PROC

    mov eax, lightgreen
    call SetTextColor

    mov temp, 3
    mov esi, offset Levelup
    mov ecx, 17
    start:
        mov dh,temp
        mov dl,18
        call Gotoxy
        mov edx, esi
        call writestring
        add esi, 47
        inc temp
    LOOP start

ret
_levelup ENDP

_won PROC

    mov eax, lightgreen
    call SetTextColor

    mov temp, 3
    mov esi, offset Won
    mov ecx, 8
    start:
        mov dh,temp
        mov dl,11
        call Gotoxy
        mov edx, esi
        call writestring
        add esi, 60
        inc temp
    LOOP start
    
    mov eax, white
    call SetTextColor
    mov dl, 32
    mov dh, 15 
    call Gotoxy
    mov edx, offset yourscore
    call writestring
    mov dl, 40
    mov dh, 17
    call Gotoxy
    mov eax, totalscore
    call WriteInt
    mov dl, 0
    mov dh, 0
    call Gotoxy

ret
_won ENDP

_over PROC

    mov eax, red
    call SetTextColor

    mov temp, 3
    mov esi, offset Over
    mov ecx, 8
    start:
        mov dh, temp
        mov dl, 4
        call Gotoxy
        mov edx, esi
        call writestring
        add esi, 76
        inc temp
    LOOP start
    
    mov eax, white
    call SetTextColor
    mov dl, 30
    mov dh, 15 
    call Gotoxy
    mov edx, offset yourscore
    call writestring
    mov dl, 38
    mov dh, 17
    call Gotoxy
    mov eax, totalscore
    call WriteInt
    mov dl, 0
    mov dh, 0
    call Gotoxy

ret
_over ENDP

_hidden PROC

    cmp xPos, 2
    jne _sec
    cmp yPos, 7
    je _11
    cmp yPos, 18
    je _21
    jmp _exit
    _sec:
    cmp xPos, 73
    jne _sub
    cmp yPos, 7
    je _31
    cmp yPos, 18
    je _41
    jmp _exit
    _11:
       cmp inputChar, 'd'
       jne _exit
       call UpdatePlayer
       mov xPos, 76
       mov yPos, 18
       jmp _exit
    _21:
       cmp inputChar, 'd'
       jne _exit
       call UpdatePlayer
       mov xPos, 76
       mov yPos, 7
       jmp _exit
    _31:
       cmp inputChar, 'd'
       jne _exit
       call UpdatePlayer
       mov xPos, 5
       mov yPos, 18
       jmp _exit
    _41:
       cmp inputChar, 'd'
       jne _exit
       call UpdatePlayer
       mov xPos, 5
       mov yPos, 7
       jmp _exit
    
_sub:
    cmp xPos, 5
    jne _sec2
    cmp yPos, 7
    je _12
    cmp yPos, 18
    je _22
    jmp _exit
    _sec2:
    cmp xPos, 76
    jne _exit
    cmp yPos, 7
    je _32
    cmp yPos, 18
    je _42
    jmp _exit
    _12:
       cmp inputChar, 'a'
       jne _exit
       call UpdatePlayer
       mov xPos, 73
       mov yPos, 18
       jmp _exit
    _22:
       cmp inputChar, 'a'
       jne _exit
       call UpdatePlayer
       mov xPos, 73
       mov yPos, 7
       jmp _exit
    _32:
       cmp inputChar, 'a'
       jne _exit
       call UpdatePlayer
       mov xPos, 2
       mov yPos, 18
       jmp _exit
    _42:
       cmp inputChar, 'a'
       jne _exit
       call UpdatePlayer
       mov xPos, 2
       mov yPos, 7
       jmp _exit

_exit:

ret
_hidden ENDP

Music PROC
    
    mov eax, SND_FILENAME  ;; pszSound is a file name
    
    or eax, SND_ASYNC      ;; Play in the background
    invoke PlaySound, addr file, 0, eax
ret
Music ENDP

Music2 PROC
    
    mov eax, SND_FILENAME  ;; pszSound is a file name
    or eax, SND_LOOP
    or eax, SND_ASYNC      ;; Play in the background
    invoke PlaySound, addr file2, 0, eax
ret
Music2 ENDP

Selection PROC
    
    mov eax, SND_FILENAME  ;; pszSound is a file name
    or eax, SND_ASYNC      ;; Play in the background
    invoke PlaySound, addr file3, 0, eax
ret
Selection ENDP

Select PROC
    
    mov eax, SND_FILENAME  ;; pszSound is a file name
    or eax, SND_ASYNC      ;; Play in the background
    invoke PlaySound, addr file4, 0, eax
ret
Select ENDP

Coin PROC
    
    mov eax, SND_FILENAME  ;; pszSound is a file name
    or eax, SND_ASYNC      ;; Play in the background
    invoke PlaySound, addr file5, 0, eax
ret
Coin ENDP

_Out PROC
    
    mov eax, SND_FILENAME  ;; pszSound is a file name
    or eax, SND_ASYNC      ;; Play in the background
    invoke PlaySound, addr file6, 0, eax
ret
_Out ENDP

Complete PROC
    
    mov eax, SND_FILENAME  ;; pszSound is a file name
    or eax, SND_ASYNC      ;; Play in the background
    invoke PlaySound, addr file7, 0, eax
ret
Complete ENDP
GameOver PROC
    
    mov eax, SND_FILENAME  ;; pszSound is a file name
    or eax, SND_ASYNC      ;; Play in the background
    invoke PlaySound, addr file8, 0, eax
ret
GameOver ENDP

_filehandle PROC

    mov edx,OFFSET filename
call OpenInputFile
mov filehandle,eax

      mov  eax,filehandle
      mov  edx,OFFSET filedata
      mov  ecx,1000
      call ReadFromFile
      mov index, eax
      mov eax, filehandle
call CloseFile
;convert number to string
    push totalscore                     ; Argument for format string
    push offset fmt                 ; Pointer to format string ("%d")
    push offset numberstring        ; Pointer to buffer for output
    call wsprintf                   ; Irvine32.inc / SmallWin.inc / User32.lib / User32.dll
    mov numberChar, eax             ; Length of the stored string
    add esp, (3*4)                  ; CCALL calling function! Adjust the stack.

      mov  edx,OFFSET filename
      call CreateOutputFile
      mov  filehandle, EAX

mov edi, offset filedata
add edi, index
    mov al, '*'
mov [edi], al
inc index
inc edi

    mov ecx, stringLength
    mov edi, offset playerName
    mov esi, offset filedata
    add esi, index
    start:
        mov al, [edi]
        mov [esi], al
        inc esi
        inc edi
        inc index
    loop start

mov edi, offset filedata
add edi, index
    mov al, ' '
mov [edi], al
inc index
inc edi

mov edi, offset filedata
add edi, index
mov al, Plevel
add al, 48
mov [edi], al
inc index
inc edi

mov edi, offset filedata
add edi, index
    mov al, ' '
mov [edi], al
inc index
inc edi

mov edi, offset filedata
add edi, index
    mov al, '='
mov [edi], al
inc index
inc edi

mov edi, offset filedata
add edi, index
    mov al, '>'
mov [edi], al
inc index
inc edi

mov edi, offset filedata
add edi, index
mov al, ' '
mov [edi], al
inc index
inc edi

    mov ecx, numberChar
    mov esi, offset numberstring
    mov edi, offset filedata
    add edi, index
    start2:
        mov al, [esi]
        mov [edi], al
        inc esi
        inc edi
        inc index
    loop start2

mov edi, offset filedata
add edi, index
    mov al, 10
mov [edi], al
inc index
inc edi
        
        mov noOfPlayers, 0
        mov edi, offset filedata
        mov esi, offset scoresArr
        mov ecx, index
        start3:
        mov al, [edi]
        cmp al, 10
        je _wait
        
        cont:
        inc edi
     loop start3
        jmp _end
    _wait:
        call stringToNumber
        mov eax, number
        mov [esi], eax
        add esi, 4
        inc noOfPlayers
        jmp cont
_end:

mov esi, offset scoresArr
movzx ecx, noOfPlayers
cmp ecx, 1
jle goon
call _sorting

goon:

call _fillingfinal

mov eax,filehandle
mov edx,OFFSET tempp
mov ecx,index
call WriteToFile

mov eax, filehandle
call CloseFile
call Crlf

ret
_filehandle ENDP

_sorting PROC
        
        mov edx, 0
        outer:
            movzx eax, noOfPlayers
            cmp edx, eax
            jge _end
            mov esi, offset scoresArr
            mov ecx, 0
        inner:
            movzx eax, noOfPlayers
            sub eax, edx
            cmp ecx, eax
            jge _end2
            mov eax,[esi] 
            mov ebx,[esi+4]
            cmp eax,ebx
            jb _skip

            mov [esi],ebx 
            mov [esi+4],eax

        _skip:
            add esi,4 
            inc ecx
            jmp inner

        _end2:
            inc edx
        jmp outer

_end:
    
movzx ecx, noOfPlayers
mov edi, offset scoresArr
start:
    push [edi]
    add edi, 4
loop start

movzx ecx, noOfPlayers
mov edi, offset scoresArr
start2:
    pop eax
    mov [edi], eax
    add edi, 4
loop start2

ret
_sorting ENDP

_fillingfinal PROC

     mov edx, offset scoresArr
     mov esi, offset tempp
     movzx ecx, noofPlayers
     

     start:
        mov edi, offset filedata
        
        movzx eax, noOfPlayers
        mov _nop, eax
        inc _nop
       
     inner:
        dec _nop
        cmp _nop, 0
        jle _end2
     inner2:
        mov al, [edi]
        cmp al, 10
        jne go
        pushad
        call stringToNumber
        popad
        jmp outer
        go:
        inc edi
        jmp inner2
        prev:
        dec edi
        mov al, [edi]
        cmp al, '*'
        je outer2
        jmp prev

        outer:
            mov eax, [edx]
            cmp eax, number
            je prev
            inc edi
            jmp inner
        outer2:
            mov al, [edi]
            cmp al, 10
            je done
            mov [esi], al
            inc esi
            inc edi
        jmp outer2

    done:
        mov al, 10
        mov [esi], al
        inc esi
        inc edi
        jmp inner
    _end2:
        mov eax, [edx]
        
        ff:
            cmp ecx, 0
            jle gg
            add edx, 4
            mov ebx, [edx]
            cmp eax, ebx
            jne okkk
            dec ecx
        jmp ff            
        okkk:
                        

     loop start
        
gg:

ret
_fillingfinal ENDP

stringToNumber PROC

    
        dec edi
        mov dl, [edi]
        sub dl, 48
        movzx eax, dl
        mov number, eax
        dec edi
        mov al, [edi]
        add edi, 2
        cmp al, ' '
        je cont2
        mov bl, 10
        sub al, 48
        mul bl
        movzx bx, dl
        add ax, bx
        mov dx, ax
        movzx ebx, ax
        mov number, ebx
        sub edi, 3
        mov al, [edi]
        add edi, 3
        cmp al, ' '
        je cont2
        sub al, 48
        movzx ebx, al
        mov eax, ebx
        mov ebx, 100
        mul ebx
        movzx ebx, dx
        add eax, ebx
        mov number, eax        
        jmp cont2
    cont2:
        
       
ret
stringToNumber ENDP

	END main