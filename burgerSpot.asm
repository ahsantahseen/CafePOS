;Burger Stop  
  
org 100h

.model small
.stack 100h
.data

s1 dw 10,13, "---------------------------------------------------------------$"
s2 dw 10,13, "______                             _____ _                     $"
s3 dw 10,13, "| ___ \                           /  ___| |                    $ "
s4 dw 10,13, "| |_/ /_   _ _ __ __ _  ___ _ __  \ `--.| |_ ___  _ __         $ "
s5 dw 10,13, "| ___ \ | | | '__/ _` |/ _ \ '__|  `--. \ __/ _ \| '_ \        $ "
s6 dw 10,13, "| |_/ / |_| | | | (_| |  __/ |    /\__/ / || (_) | |_) |       $ "
s7 dw 10,13, "\____/ \__,_|_|  \__, |\___|_|    \____/ \__\___/| .__/        $ "
s8 dw 10,13, "                  __/ |                          | |           $ "
s9 dw 10,13, "                 |___/                           |_|           $"

s10 dw 10,13, "-------------------------------------------------------------$"
s11 dw 10,13, "|                                                           |$"
s12 dw 10,13, "| 1.Order Bugers                                            |$"
s13 dw 10,13, "| 2.Order Shakes                                            |$"
s14 dw 10,13, "| 3.Order Fries                                             |$"
es15 dw 10,13,"| 4.Exclusive Discounted Combos                             |$"
s15 dw 10,13, "| 5.Exit                                                    |$"
s16 dw 10,13, "|                                                           |$"
s17 dw 10,13, "-------------------------------------------------------------$"
s18 dw 10,13, "|Enter Option:$"
s19 dw "                                                         |$"
s20 dw 10,13, "--------------------------------------------------------------------------$"
g1 dw 10,13,"______                                  _       ___  ___                    $"
g2 dw 10,13,"| ___ \                                ( )      |  \/  |                    $"
g3 dw 10,13,"| |_/ / _   _  _ __   __ _   ___  _ __ |/  ___  | .  . |  ___  _ __   _   _ $"
g4 dw 10,13,"| ___ \| | | || '__| / _` | / _ \| '__|   / __| | |\/| | / _ \| '_ \ | | | |$"
g5 dw 10,13,"| |_/ /| |_| || |   | (_| ||  __/| |      \__ \ | |  | ||  __/| | | || |_| |$"
g6 dw 10,13,"\____/  \__,_||_|    \__, | \___||_|      |___/ \_|  |_/ \___||_| |_| \__,_|$"
g7 dw 10,13,"                      __/ |                                                 $"
g8 dw 10,13,"                     |___/                                                  $"   
gl11 dw 10,13, "-------------------------------------------------------------------------$"
gl12 dw 10,13, "|                                                                        |$"
gl13 dw 10,13, "| 1.Kentunky Burger                                                      |$"
gl14 dw 10,13, "| 2.Crunchos                                                             |$"
gl15 dw 10,13, "| 3.Messy Meat                                                           |$"
gl16 dw 10,13, "| 4.Lava Dip                                                             |$"
gl17 dw 10,13, "| 5.Exit                                                                 |$"
gl18 dw 10,13, "|                                                                        |$"
gl19 dw 10,13, "|Enter Option:$"                                                         
gl20 dw "                                                         |$"
gl21 dw 10,13, "-------------------------------------------------------------------------$"

gl22 dw 10,13, "Your Total is:$"
sm1 dw 10,13," _____  _             _           _       ___  ___                   $"
sm2 dw 10,13,"/  ___|| |           | |         ( )      |  \/  |                    $"
sm3 dw 10,13,"\ `--. | |__    __ _ | | __  ___ |/  ___  | .  . |  ___  _ __   _   _ $"
sm4 dw 10,13," `--. \| '_ \  / _` || |/ / / _ \   / __| | |\/| | / _ \| '_ \ | | | |$"
sm5 dw 10,13,"/\__/ /| | | || (_| ||   < |  __/   \__ \ | |  | ||  __/| | | || |_| |$"
sm6 dw 10,13,"\____/ |_| |_| \__,_||_|\_\ \___|   |___/ \_|  |_/ \___||_| |_| \__,_|$"         
sm11 dw 10,13, "-------------------------------------------------------------------------$"
sm12 dw 10,13, "|                                                                        |$"
sm13 dw 10,13, "| 1.KitKat Shake                                                         |$"
sm14 dw 10,13, "| 2.Oreo Shake                                                           |$"
sm15 dw 10,13, "| 3.Messy Chocolate Shake                                                |$"
sm16 dw 10,13, "| 4.Strawberry Shake                                                     |$"
sm17 dw 10,13, "| 5.Exit                                                                 |$"
sm18 dw 10,13, "|                                                                        |$"
sm19 dw 10,13, "|Enter Option:$"                                                         
sm20 dw "                                                         |$"
sm21 dw 10,13, "-------------------------------------------------------------------------$"
fm1 dw 10,13,"______        _             _       ___  ___                               $"
fm2 dw 10,13,"|  ___|      (_)           ( )      |  \/  |                               $"
fm3 dw 10,13,"| |_    _ __  _   ___  ___ |/  ___  | .  . |  ___  _ __   _   _            $"
fm4 dw 10,13,"|  _|  | '__|| | / _ \/ __|   / __| | |\/| | / _ \| '_ \ | | | |           $"
fm5 dw 10,13,"| |    | |   | ||  __/\__ \   \__ \ | |  | ||  __/| | | || |_| |           $"
fm6 dw 10,13,"\_|    |_|   |_| \___||___/   |___/ \_|  |_/ \___||_| |_| \__,_|           $"         
fm11 dw 10,13, "-------------------------------------------------------------------------$"
fm12 dw 10,13, "|                                                                        |$"
fm13 dw 10,13, "| 1.Classic Fries                                                        |$"
fm14 dw 10,13, "| 2.Masala Fries                                                         |$"
fm15 dw 10,13, "| 3.Nacho Cheese Fries                                                   |$"
fm16 dw 10,13, "| 4.Pizza Fries                                                          |$"
fm17 dw 10,13, "| 5.Exit                                                                 |$"
fm18 dw 10,13, "|                                                                        |$"
fm19 dw 10,13, "|Enter Option:$"                                                         
fm20 dw "                                                         |$"
fm21 dw 10,13, "-------------------------------------------------------------------------$"

esm21 dw 10,13, "-------------------------------------------------------------------------$"

edc1 dw 10,13,"  ____                _               $"
edc2 dw 10,13," / ___|___  _ __ ___ | |__   ___  ___ $"
edc3 dw 10,13,"| |   / _ \| '_ ` _ \| '_ \ / _ \/ __|$"
edc4 dw 10,13,"| |__| (_) | | | | | | |_) | (_) \__ \$"
edc5 dw 10,13," \____\___/|_| |_| |_|_.__/ \___/|___/$"

edc11 dw 10,13, "-------------------------------------------------------------------------$"
edc12 dw 10,13, "|                                                                        |$"
edc13 dw 10,13, "| 1.The Shack Pack (2 Crunchos and 2 Shakes)                             |$"
edc14 dw 10,13, "| 2.Party on! (4 Classic Fries and 2 Shakes)                             |$"
edc15 dw 10,13, "| 3.See ya later (1 Burger any and 1 shake any)                          |$"
edc16 dw 10,13, "| 4.Peeza (3 Pizza Fries and 1 classic fries)                            |$"
edc17 dw 10,13, "| 5.Exit                                                                 |$"
edc18 dw 10,13, "|                                                                        |$"
edc19 dw 10,13, "|Enter Option:$"                                                         
edc20 dw "                                                         |$"
edc21 dw 10,13, "-------------------------------------------------------------------------$"


NUM1 DB ?
NUM2 DB ?
TOTAL DB ?,"$"


str1 dw 10,13,"You have selected Kentunky Burger$"
str2 dw 10,13,"You have selected Crunchos$"
str3 dw 10,13,"You have selected Messy Meat$"
str4 dw 10,13,"You have selected Lava Dip$"
            

str5 dw 10,13,"You have selected Oreo Shake$"
str6 dw 10,13,"You have selected Kitkat Shake$"
str7 dw 10,13,"You have selected Messy Chocolate Shake$"
str8 dw 10,13,"You have selected Strawberry Shake$"


str9 dw 10,13,"You have selected Classic Fries$"
str10 dw 10,13,"You have selected Masala Fries$"
str11 dw 10,13,"You have selected Nacho Cheese Fries$"
str12 dw 10,13,"You have selected Pizza Fries$"


str13 dw 10,13,"You have selected The Shack Pack (2 Crunchos and 2 Shakes)$"
str14 dw 10,13,"You have selected Party on! (4 Classic Fries and 2 Shakes)$"
str15 dw 10,13,"You have selected See ya later (1 Burger any and 1 shake any)$"
str16 dw 10,13,"You have selected Peeza (3 Pizza Fries and 1 classic fries)$"

str17 dw 10,13,"Exiting Menu....$"
            
.code                  
                                                                      
Main Proc
mov ax,@data
call mainMenu
mov ah,4ch
int 21h

Main EndP

mainMenu Proc


lea dx,s1
mov ah,9
int 21h
lea dx,s2
mov ah,9
int 21h
lea dx,s3
mov ah,9
int 21h
lea dx,s4
mov ah,9
int 21h
lea dx,s5
mov ah,9
int 21h
lea dx,s6
mov ah,9
int 21h
lea dx,s7
mov ah,9
int 21h 
lea dx,s8
mov ah,9
int 21h 
lea dx,s9
mov ah,9
int 21h

lea dx,s10
mov ah,9
int 21h
lea dx,s11
mov ah,9
int 21h 
lea dx,s12
mov ah,9
int 21h
lea dx,s13
mov ah,9
int 21h 

lea dx,s14
mov ah,9
int 21h 

lea dx,es15
mov ah,9
int 21h 


lea dx,s15
mov ah,9
int 21h 

lea dx,s16
mov ah,9
int 21h 

lea dx,s17
mov ah,9
int 21h  

lea dx,s18
mov ah,9
int 21h   
call MMInput
        
 
ret
       mainMenu EndP

MMinput Proc
    mov ah,1
    int 21h  
    cmp al,'1'
    je BurgerMenu 
    cmp al,'2'
    je ShakeMenu
    cmp al,'3'
    je FriesMenu
    cmp al,'4'
    je ComboMenu
    cmp al,'5' 
        lea dx,str17
    mov ah,9
    int 21h
    je ExitProg
    ret
    MMinput EndP



P1input Proc
    mov ah,1
    int 21h 
    cmp al,'1'
    je AddBurger1 
    cmp al,'2'
    je AddBurger2
    cmp al,'3'
    je AddBurger3
    cmp al,'4'
    je AddBurger4
    cmp al,'5' 
     lea dx,str17
    mov ah,9   
    int 21h
    je mainMenu

    ret 
    P1input EndP
BurgerMenu Proc 

lea dx,s20
mov ah,9
int 21h 
    
lea dx,g1
mov ah,9
int 21h
lea dx,g2
mov ah,9
int 21h
lea dx,g3
mov ah,9
int 21h

lea dx,g4
mov ah,9
int 21h
lea dx,g5
mov ah,9
int 21h
lea dx,g6
mov ah,9
int 21h
lea dx,g7
mov ah,9
int 21h  
lea dx,g8
mov ah,9
int 21h
lea dx,gl11
mov ah,9
int 21h  
lea dx,gl12
mov ah,9
int 21h
  
lea dx,gl13
mov ah,9
int 21h
  
lea dx,gl14
mov ah,9
int 21h
  
lea dx,gl15
mov ah,9
int 21h
  
lea dx,gl16
mov ah,9
int 21h 
lea dx,gl17
mov ah,9
int 21h
  
lea dx,gl18
mov ah,9
int 21h
lea dx,gl19
mov ah,9
int 21h 
call P1input 
 
    ret
    BurgerMenu EndP


Proc ShakeMenu

lea dx,sm1
mov ah,9
int 21h
lea dx,sm2
mov ah,9
int 21h
lea dx,sm3
mov ah,9
int 21h
lea dx,sm4
mov ah,9
int 21h
lea dx,sm5
mov ah,9
int 21h
lea dx,sm6
mov ah,9
int 21h
lea dx,sm11
mov ah,9
int 21h
lea dx,sm12
mov ah,9
int 21h
lea dx,sm13
mov ah,9
int 21h
lea dx,sm14
mov ah,9
int 21h
lea dx,sm15
mov ah,9
int 21h
lea dx,sm16
mov ah,9
int 21h
lea dx,sm17
mov ah,9
int 21h
lea dx,sm18
mov ah,9
int 21h
lea dx,sm19
mov ah,9
int 21h
call P2input
lea dx,sm20
mov ah,9
int 21h
lea dx,sm21
mov ah,9
int 21h

ret



    
    
    ShakeMenu EndP
    
Proc P2input
    mov ah,1
    int 21h 
    cmp al,'1'
    je AddShake1 
    cmp al,'2'
    je AddShake2
    cmp al,'3'
    je AddShake3
    cmp al,'4'
    je AddShake4
    cmp al,'5'
    lea dx,str17
    mov ah,9
    int 21h
    je mainMenu

    ret
    P2input EndP    

 Proc FriesMenu

lea dx,fm1
mov ah,9
int 21h
lea dx,fm2
mov ah,9
int 21h
lea dx,fm3
mov ah,9
int 21h
lea dx,fm4
mov ah,9
int 21h
lea dx,fm5
mov ah,9
int 21h
lea dx,fm6
mov ah,9
int 21h
lea dx,fm11
mov ah,9
int 21h
lea dx,fm12
mov ah,9
int 21h
lea dx,fm13
mov ah,9
int 21h
lea dx,fm14
mov ah,9
int 21h
lea dx,fm15
mov ah,9
int 21h
lea dx,fm16
mov ah,9
int 21h
lea dx,fm17
mov ah,9
int 21h
lea dx,fm18
mov ah,9
int 21h
lea dx,fm19
mov ah,9
int 21h
call P3input
lea dx,fm20
mov ah,9
int 21h
lea dx,fm21
mov ah,9
int 21h

ret



    
    
    FriesMenu EndP  
 
Proc P3input
    mov ah,1
    int 21h 
    cmp al,'1'
    je AddFries1 
    cmp al,'2'
    je AddFries2
    cmp al,'3'
    je AddFries3
    cmp al,'4'
    je AddFries4
    cmp al,'5'
    lea dx,str17
    mov ah,9
    int 21h
    je mainMenu

    ret
    P3input EndP


ComboMenu Proc
    lea dx,esm21
    mov ah,9
    int 21h
    lea dx,edc1
    mov ah,9
    int 21h
    lea dx,edc2
    mov ah,9
    int 21h
    lea dx,edc3
    mov ah,9
    int 21h
lea dx,edc4
    mov ah,9
    int 21h
lea dx,edc5
    mov ah,9
    int 21h
lea dx,edc11
mov ah,9
int 21h
lea dx,edc12
mov ah,9
int 21h
lea dx,edc13
mov ah,9
int 21h
lea dx,edc14
mov ah,9
int 21h
lea dx,edc15
mov ah,9
int 21h
lea dx,edc16
mov ah,9
int 21h
lea dx,edc17
mov ah,9
int 21h
lea dx,edc18
mov ah,9
int 21h
lea dx,edc19
mov ah,9
int 21h
call P4input
lea dx,edc20
mov ah,9
int 21h
lea dx,edc21
mov ah,9
int 21h

ret

ComboMenu EndP


P4input Proc
    mov ah,1
    int 21h 
    cmp al,'1'
    je AddCombo1 
    cmp al,'2'
    je AddCombo2
    cmp al,'3'
    je AddCombo3
    cmp al,'4'
    je AddCombo4
    cmp al,'5'
    lea dx,str17
    mov ah,9   
    int 21h
    je mainMenu

    ret 
    P4input EndP



AddBurger1 Proc
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h
    
    MOV AL,5 ; Price
    
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX

    
 
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h
mov dl,10
mov ah,2
int 21h
mov dl,13
mov ah,2
int 21h 
lea dx,str1
mov ah,9
int 21h



 
jmp BurgerMenu
    ret
    AddBurger1 EndP

AddBurger2 Proc
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,2 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str2
mov ah,9
int 21h
 
jmp BurgerMenu
    ret
    AddBurger2 EndP

AddBurger3 Proc  
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,4 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str3
mov ah,9
int 21h
 
jmp BurgerMenu
    ret
    AddBurger3 EndP

AddBurger4 Proc  
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,6 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str4
mov ah,9
int 21h
 
jmp BurgerMenu
    ret

    AddBurger4 EndP

AddShake1 Proc
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,5 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str5
mov ah,9
int 21h
 
jmp ShakeMenu
    ret
    AddShake1 EndP

AddShake2 Proc
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,5 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str6
mov ah,9
int 21h
 
jmp ShakeMenu
    ret
        AddShake2 EndP

AddShake3 Proc  
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

   MOV AL,5 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h
 
lea dx,str7
mov ah,9
int 21h
 
jmp ShakeMenu
    ret
        AddShake3 EndP

AddShake4 Proc  
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,5 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h
 
lea dx,str8
mov ah,9
int 21h
 
jmp ShakeMenu
    ret
        AddShake4 EndP

AddFries1 Proc
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,5 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str9
mov ah,9
int 21h
 
jmp FriesMenu
    ret
        AddFries1 EndP

AddFries2 Proc
lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,5 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str10
mov ah,9
int 21h
 
jmp FriesMenu
    ret
 AddFries2 EndP

AddFries3 Proc  
lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,15 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str11
mov ah,9
int 21h
 
jmp FriesMenu
    ret    
    AddFries3 EndP

AddFries4 Proc  
lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,4 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str12
mov ah,9
int 21h
 
jmp FriesMenu                                                      
    ret
        AddFries4 EndP


AddCombo1 Proc
        lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,3 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str13
mov ah,9
int 21h
 
jmp ComboMenu
    ret
        AddCombo1 EndP

AddCombo2 Proc
lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,5 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str14
mov ah,9
int 21h
 
jmp ComboMenu
    ret
 AddCombo2 EndP

AddCombo3 Proc  
lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,5 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str15
mov ah,9
int 21h
 
jmp ComboMenu
    ret    
    AddCombo3 EndP

AddCombo4 Proc  
lea dx,gl20
mov ah,9
int 21h
lea dx,gl21
mov ah,9
int 21h

    MOV AL,4 ; Price
    MOV NUM1,AL
    MOV AL,TOTAL
    ADD AL,NUM1
    MOV TOTAL,AL
    MOV AH,0
    AAA
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    
  
    lea dx,gl22
mov ah,9
int 21h

MOV AH,2
MOV DL,BH
INT 21H
MOV AH,2
MOV DL,BL
INT 21H 
mov dx,36
mov ah,2
int 21h 
lea dx,str16
mov ah,9
int 21h
 
jmp ComboMenu                                                      
    ret
        AddCombo4 EndP




Proc ExitProg
     mov ah,4ch
     int 21h
     ExitProg EndP
End Main

