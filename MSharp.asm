TITLE M-Sharp; (C) 2005 By Munir Usman

INCLUDE Irvine32.inc


CR = 0Dh		; carriage return
LF = 0Ah		; line feed

.data
strNext   BYTE "Next:  ",0
wrong BYTE "Sorry, Wrong answer", CR,LF,0
nums BYTE "Number ",0
numsi BYTE "Please enter number ",0
brak BYTE ":  ", 0
gameover BYTE "GAME OVER !",CR,LF,"Your score is: ",0


toguess dword 50 dup(0)
NC dword 00
curr dword 00


mem1 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem2 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem3 BYTE "888b                                                                       88888", 0, CR, LF
mem4 BYTE "8888            __            ____             ___      __                 88888", 0, CR, LF
mem5 BYTE "8888           d88b____     _d8888b           d888b    d88b                88888", 0, CR, LF
mem6 BYTE "8888           88888888b_ _d8888888     ______88888___d8888____            88888", 0, CR, LF
mem7 BYTE "8888           88888888888888888888    d88888888888888888888888b           88888", 0, CR, LF
mem8 BYTE "8888           8888 Y888888888P8888    Y88888888888888888888888P           88888", 0, CR, LF
mem9 BYTE "8888           8888   Y88888P  8888    ______8888____88888___              88888", 0, CR, LF
mem10 BYTE "8888           8888    Y88P    8888   d8888888888888888888888b             88888", 0, CR, LF
mem11 BYTE "8888           8888            8888   Y8888888888888888888888P             88888", 0, CR, LF
mem12 BYTE "8888           8888            8888        8888P  d8888P                   88888", 0, CR, LF
mem13 BYTE "8888           Y88P            Y88P        Y88P   Y888P                    88888", 0, CR, LF
mem14 BYTE "8888                                                                       88888", 0, CR, LF
mem15 BYTE "8888                     Mem Sharp, A Memory Sharper Game.                 88888", 0, CR, LF
mem16 BYTE "8888                                                                       88888", 0, CR, LF
mem17 BYTE "8888                                                                       88888", 0, CR, LF
mem18 BYTE "8888   .---.                   .            .-,--.                   .     88888", 0, CR, LF
mem19 BYTE "8888   \___  ,-. ,-,-. ,-. ,-. |- ,-. ,-.    '|__/ ,-. ,-. . ,-. ,-. |-    88888", 0, CR, LF
mem20 BYTE "8888       \ |-' | | | |-' `-. |  |-' |      .|    |   | | | |-' |   |     88888", 0, CR, LF
mem21 BYTE "8888   `---' `-' ' ' ' `-' `-' `' `-' '      `'    '   `-' | `-' `-' `'    88888", 0, CR, LF
mem22 BYTE "8888                                                       |               88888", 0, CR, LF
mem23 BYTE "8888                                 By                   `'               88888", 0, CR, LF
mem24 BYTE "8888                                                                       88888", 0, CR, LF
mem25 BYTE "8888                                   Munir Usman                         88888", 0, CR, LF
mem26 BYTE "8888                                                                       88888", 0, CR, LF
mem27 BYTE "8888                                                                       88888", 0, CR, LF
mem28 BYTE "8888                                                                       88888", 0, CR, LF
mem29 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem30 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF

mem31 BYTE "8888                                                                       88888", 0, CR, LF
mem32 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem33 BYTE "8888           |:Guess # ::::::::::::::::::::::::::::::::::::::|           88888", 0, CR, LF
mem34 BYTE "8888           |::::::::::::::::::::::'##::::::::::::::::::::::|           88888", 0, CR, LF
mem35 BYTE "8888           |:::::::::::::::::::::####::::::::::::::::::::::|           88888", 0, CR, LF
mem36 BYTE "8888           |:::::::::::::::::::::. ##::::::::::::::::::::::|           88888", 0, CR, LF
mem37 BYTE "8888           |:::::::::::::::::::::: ##::::::::::::::::::::::|           88888", 0, CR, LF
mem38 BYTE "8888           |:::::::::::::::::::::: ##::::::::::::::::::::::|           88888", 0, CR, LF
mem39 BYTE "8888           |:::::::::::::::::::::: ##::::::::::::::::::::::|           88888", 0, CR, LF
mem40 BYTE "8888           |::::::::::::::::::::'######::::::::::::::::::::|           88888", 0, CR, LF
mem41 BYTE "8888           |::::::::::::::::::::......:::::::::::::::::::::|           88888", 0, CR, LF
mem42 BYTE "8888           |:::::::::::::::::::::::::::::::::::::::::::::::|           88888", 0, CR, LF
mem43 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem44 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem45 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF

mem46 BYTE "8888                                                                       88888", 0, CR, LF
mem47 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem48 BYTE "8888           |:Guess # ::::::::::::::::::::::::::::::::::::::|           88888", 0, CR, LF
mem49 BYTE "8888           |:::::::::::::::::::'#######::::::::::::::::::::|           88888", 0, CR, LF
mem50 BYTE "8888           |::::::::::::::::::'##.... ##:::::::::::::::::::|           88888", 0, CR, LF
mem51 BYTE "8888           |::::::::::::::::::..::::: ##:::::::::::::::::::|           88888", 0, CR, LF
mem52 BYTE "8888           |:::::::::::::::::::'#######::::::::::::::::::::|           88888", 0, CR, LF
mem53 BYTE "8888           |::::::::::::::::::'##::::::::::::::::::::::::::|           88888", 0, CR, LF
mem54 BYTE "8888           |:::::::::::::::::: ##::::::::::::::::::::::::::|           88888", 0, CR, LF
mem55 BYTE "8888           |:::::::::::::::::: #########:::::::::::::::::::|           88888", 0, CR, LF
mem56 BYTE "8888           |::::::::::::::::::.........::::::::::::::::::::|           88888", 0, CR, LF
mem57 BYTE "8888           |:::::::::::::::::::::::::::::::::::::::::::::::|           88888", 0, CR, LF
mem58 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem59 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem60 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF

mem61 BYTE "8888                                                                       88888", 0, CR, LF
mem62 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem63 BYTE "8888           |:Guess # ::::::::::::::::::::::::::::::::::::::|           88888", 0, CR, LF
mem64 BYTE "8888           |:::::::::::::::::::'#######::::::::::::::::::::|           88888", 0, CR, LF
mem65 BYTE "8888           |::::::::::::::::::'##.... ##:::::::::::::::::::|           88888", 0, CR, LF
mem66 BYTE "8888           |::::::::::::::::::..::::: ##:::::::::::::::::::|           88888", 0, CR, LF
mem67 BYTE "8888           |:::::::::::::::::::'#######::::::::::::::::::::|           88888", 0, CR, LF
mem68 BYTE "8888           |:::::::::::::::::::...... ##:::::::::::::::::::|           88888", 0, CR, LF
mem69 BYTE "8888           |::::::::::::::::::'##:::: ##:::::::::::::::::::|           88888", 0, CR, LF
mem70 BYTE "8888           |::::::::::::::::::. #######::::::::::::::::::::|           88888", 0, CR, LF
mem71 BYTE "8888           |:::::::::::::::::::.......:::::::::::::::::::::|           88888", 0, CR, LF
mem72 BYTE "8888           |:::::::::::::::::::::::::::::::::::::::::::::::|           88888", 0, CR, LF
mem73 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem74 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem75 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF

mem76 BYTE "8888                                                                       88888", 0, CR, LF
mem77 BYTE "8888           +-Guess # --------------------------------------+           88888", 0, CR, LF
mem78 BYTE "8888           |                                               |           88888", 0, CR, LF
mem79 BYTE "8888           |                    d888                       |           88888", 0, CR, LF
mem80 BYTE "8888           |                   d8888                       |           88888", 0, CR, LF
mem81 BYTE "8888           |                     888                       |           88888", 0, CR, LF
mem82 BYTE "8888           |                     888                       |           88888", 0, CR, LF
mem83 BYTE "8888           |                     888                       |           88888", 0, CR, LF
mem84 BYTE "8888           |                     888                       |           88888", 0, CR, LF
mem85 BYTE "8888           |                     888                       |           88888", 0, CR, LF
mem86 BYTE "8888           |                   8888888                     |           88888", 0, CR, LF
mem87 BYTE "8888           |                                               |           88888", 0, CR, LF
mem88 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem89 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem90 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF

mem91 BYTE "8888                                                                       88888", 0, CR, LF
mem92 BYTE "8888           +-Guess # --------------------------------------+           88888", 0, CR, LF
mem93 BYTE "8888           |                                               |           88888", 0, CR, LF
mem94 BYTE "8888           |                   .d8888b.                    |           88888", 0, CR, LF
mem95 BYTE "8888           |                  d88P  Y88b                   |           88888", 0, CR, LF
mem96 BYTE "8888           |                         888                   |           88888", 0, CR, LF
mem97 BYTE "8888           |                       .d88P                   |           88888", 0, CR, LF
mem98 BYTE "8888           |                   .od888P~                    |           88888", 0, CR, LF
mem99 BYTE "8888           |                  d88P~                        |           88888", 0, CR, LF
mem100 BYTE "8888           |                  888~                         |           88888", 0, CR, LF
mem101 BYTE "8888           |                  888888888                    |           88888", 0, CR, LF
mem102 BYTE "8888           |                                               |           88888", 0, CR, LF
mem103 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem104 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem105 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF

mem106 BYTE "8888                                                                       88888", 0, CR, LF
mem107 BYTE "8888           +-Guess # --------------------------------------+           88888", 0, CR, LF
mem108 BYTE "8888           |                                               |           88888", 0, CR, LF
mem109 BYTE "8888           |                    .d8888b.                   |           88888", 0, CR, LF
mem110 BYTE "8888           |                   d88P  Y88b                  |           88888", 0, CR, LF
mem111 BYTE "8888           |                        .d88P                  |           88888", 0, CR, LF
mem112 BYTE "8888           |                       8888~                   |           88888", 0, CR, LF
mem113 BYTE "8888           |                        ~Y8b.                  |           88888", 0, CR, LF
mem114 BYTE "8888           |                   888    888                  |           88888", 0, CR, LF
mem115 BYTE "8888           |                   Y88b  d88P                  |           88888", 0, CR, LF
mem116 BYTE "8888           |                    ~Y8888P~                   |           88888", 0, CR, LF
mem117 BYTE "8888           |                                               |           88888", 0, CR, LF
mem118 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem119 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem120 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF

mem121 BYTE "8888                                                                       88888", 0, CR, LF
mem122 BYTE "8888           +-Guess # --------------------------------------+           88888", 0, CR, LF
mem123 BYTE "8888           |                                               |           88888", 0, CR, LF
mem124 BYTE "8888           |                 Y88b   d88P                   |           88888", 0, CR, LF
mem125 BYTE "8888           |                  Y88b d88P                    |           88888", 0, CR, LF
mem126 BYTE "8888           |                   Y88o88P                     |           88888", 0, CR, LF
mem127 BYTE "8888           |                    Y888P                      |           88888", 0, CR, LF
mem128 BYTE "8888           |                    d888b                      |           88888", 0, CR, LF
mem129 BYTE "8888           |                   d88888b                     |           88888", 0, CR, LF
mem130 BYTE "8888           |                  d88P Y88b                    |           88888", 0, CR, LF
mem131 BYTE "8888           |                 d88P   Y88b                   |           88888", 0, CR, LF
mem132 BYTE "8888           |                                               |           88888", 0, CR, LF
mem133 BYTE "8888           +-----------------------------------------------+           88888", 0, CR, LF
mem134 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF
mem135 BYTE "88888888888888888888888888888888888888888888888888888888888888888888888888888888", 0, CR, LF

.code
main PROC	


	call clrscr
	call Randomize
	
	mov esi, offset toguess
	mov  ecx,50
	
	;call DumpRegs
		


	push  esi		; save ESI, ECX
	push  ecx
	mov   eax,0		; set the sum to zero

L1:
	mov  eax,3		; indicate top of range + 1
	call RandomRange		; EAX = random integer
	
	inc eax
	
	
	mov   [esi],eax		; add each integer to sum
	
	;call DumpRegs
	add   esi,4		; point to next integer
	loop  L1		; repeat for array size


L2:
	pop   ecx		; restore ECX, ESI
	pop   esi
	




	push  esi		; save ESI, ECX
	push  ecx
	mov   eax,0		; set the sum to zero

L3:
	
	mov   eax,[esi]		; add each integer to sum
	
	;call DumpRegs
	add   esi,4		; point to next integer
	loop  L3		; repeat for array size

L4:
	pop   ecx		; restore ECX, ESI
	pop   esi
	
	
	
	call start

	exit
main ENDP



start proc

pushad

	call showmain
	
	mov eax, 3000
	call delay
	
	call clrscr

	mov eax,1

l9:	
	mov edi, offset curr
	mov [edi],eax
	call showNext	
	call crlf
	call asknext
	call crlf
	call crlf
	
	inc eax
	jmp l9

popad
ret
start endp





showNext PROC
pushad
mov eax, offset curr
mov edx,[eax]
mov eax, 1
inc edx

;call DumpRegs

;call WriteDec
;call crlf

	;call WriteString
	
		push  esi		; save ESI, ECX
		push eax
		
		mov esi, offset toguess		
		;call DumpRegs
	
l5:
		mov bl,4
		mul bl
		sub eax,4
		add esi,eax		; point to next integer

		;call DumpRegs
		;call WriteDec
		;call crlf
		
		
		
		pop eax
		mov ebx, eax
		;CALL 	writedec
		push eax
		push edx
		mov edx, offset brak
		;call writestring
		pop edx
		


		mov eax, [esi]
		;call WriteDec
		pushad
		call showBIG
		popad
		
		push edx

		mov dh, 17
		mov dl, 25
		call gotoxy
		
		mov eax, ebx
		call writeDEC
		
		mov dh, 30
		mov dl, 0
		call gotoxy
		
		pop edx

		mov eax,1000
		call delay

		call clrscr
		
		
		pop eax
		inc eax
		push eax
		cmp eax,edx
		jne l5
				
		
		pop eax
		pop esi
		popad
		ret

showNext ENDP
		


askNext PROC
pushad

mov eax, offset curr
mov edx,[eax]
mov eax, 1
inc edx

	
		push  esi		; save ESI, ECX
		push eax
		
		mov esi, offset toguess		
		;call DumpRegs
	
l6:

		pushad
		call showXi
		popad

		mov bl,4
		mul bl
		sub eax,4
		add esi,eax		; point to next integer

		;call DumpRegs
		;call WriteDec
		
		push edx
		
		mov dh, 20
		mov dl, 0
		call gotoxy

		mov edx, offset numsi
		call writestring
		pop edx

		
		pop eax
		CALL 	writedec
		push eax
		push edx
		mov edx, offset brak
		call writestring
		pop edx
		

		push edx
		
		call readpad
		call crlf
		call clrscr
		
		pop edx

		mov ebx, [esi]
		cmp ebx,eax
		jne l7
		
		
		pop eax
		inc eax
		push eax
		cmp eax,edx
		jne l6
		je l8
		
l7:
		mov edx, offset wrong
		call crlf
		call WriteString
		call crlf
		call over

				
		
l8:
		pop eax
		pop esi
		popad
		ret

askNext ENDP





over proc

mov edx, offset gameover
call WriteString
mov edx, offset curr
mov eax, [edx]
dec eax
call writedec
exit
over endp

readpad proc


	pad:
		
		
		mov eax, 00
		
		mov dx, 379h
		in al, dx	
		
		push eax
		mov eax, 250
		call delay
		pop eax
		
		call pushed
		
		cmp eax, 0
		je pad
		cmp eax,4
		je ret3
		jne pad2
		
pad2:
	mov ebx, eax
	jmp pad

ret3:
	mov eax, ebx
	ret
readpad endp

pushed proc

push edx

		mov dh, 20
		mov dl, 25
		call gotoxy
		
pop edx

	and al, 11110000b


cmp al, 30h
je right
cmp al, 60h
je left
cmp al, 50h
je down
cmp al, 0f0h
je up

mov eax, 0
jmp rett


left:
	mov eax, 1
	;call writedec
	pushad
	call showBIGi
	popad
	jmp rett

	
up:
	mov eax, 2
	;call writedec
	pushad
	call showBIGi
	popad
	jmp rett	
	
right:
	mov eax,3
	;call writedec
	pushad
	call showBIGi
	popad
	jmp rett
	
down:
	mov eax,4
	jmp rett


rett:
	ret

pushed endp



showhead PROC

call clrscr

mov edx, offset mem1
call writestring

mov edx, offset mem2
call writestring

mov edx, offset mem3
call writestring

mov edx, offset mem4
call writestring

mov edx, offset mem5
call writestring

mov edx, offset mem6
call writestring

mov edx, offset mem7
call writestring

mov edx, offset mem8
call writestring

mov edx, offset mem9
call writestring

mov edx, offset mem10
call writestring

mov edx, offset mem11
call writestring

mov edx, offset mem12
call writestring

mov edx, offset mem13
call writestring

mov edx, offset mem14
call writestring

mov edx, offset mem15
call writestring

ret
showhead endp



showmain PROC

call showhead

mov edx, offset mem16
call writestring

mov edx, offset mem17
call writestring

mov edx, offset mem18
call writestring

mov edx, offset mem19
call writestring

mov edx, offset mem20
call writestring

mov edx, offset mem21
call writestring

mov edx, offset mem22
call writestring

mov edx, offset mem23
call writestring

mov edx, offset mem24
call writestring

mov edx, offset mem25
call writestring

mov edx, offset mem26
call writestring

mov edx, offset mem27
call writestring

mov edx, offset mem28
call writestring

mov edx, offset mem29
call writestring

mov edx, offset mem30
call writestring

RET
showmain endp

showone PROC

call showhead
mov edx, offset mem31
call writestring

mov edx, offset mem32
call writestring

mov edx, offset mem33
call writestring

mov edx, offset mem34
call writestring

mov edx, offset mem35
call writestring

mov edx, offset mem36
call writestring

mov edx, offset mem37
call writestring

mov edx, offset mem38
call writestring

mov edx, offset mem39
call writestring

mov edx, offset mem40
call writestring

mov edx, offset mem41
call writestring

mov edx, offset mem42
call writestring

mov edx, offset mem43
call writestring

mov edx, offset mem44
call writestring

mov edx, offset mem45
call writestring

RET
showone endp




showtwo PROC

call showhead
mov edx, offset mem46
call writestring

mov edx, offset mem47
call writestring

mov edx, offset mem48
call writestring

mov edx, offset mem49
call writestring

mov edx, offset mem50
call writestring

mov edx, offset mem51
call writestring

mov edx, offset mem52
call writestring

mov edx, offset mem53
call writestring

mov edx, offset mem54
call writestring

mov edx, offset mem55
call writestring

mov edx, offset mem56
call writestring

mov edx, offset mem57
call writestring

mov edx, offset mem58
call writestring

mov edx, offset mem59
call writestring

mov edx, offset mem60
call writestring

RET
showtwo endp


showthree PROC

call showhead
mov edx, offset mem61
call writestring

mov edx, offset mem62
call writestring

mov edx, offset mem63
call writestring

mov edx, offset mem64
call writestring

mov edx, offset mem65
call writestring

mov edx, offset mem66
call writestring

mov edx, offset mem67
call writestring

mov edx, offset mem68
call writestring

mov edx, offset mem69
call writestring

mov edx, offset mem70
call writestring

mov edx, offset mem71
call writestring

mov edx, offset mem72
call writestring

mov edx, offset mem73
call writestring

mov edx, offset mem74
call writestring

mov edx, offset mem75
call writestring

RET
showthree endp

showBIG PROC

	cmp eax, 1
	je SHB1
	cmp eax, 2
	je SHB2
	cmp eax, 3
	je SHB3
	RET

	SHB1:
		call showone
		RET

	SHB2:
		call showtwo
		RET


	SHB3:
		call showthree
		RET

RET
showBIG ENDP
	
showBIGi PROC

	cmp eax, 1
	je SHBi1
	cmp eax, 2
	je SHBi2
	cmp eax, 3
	je SHBi3
	RET

	SHBi1:
		call showonei
		RET

	SHBi2:
		call showtwoi
		RET


	SHBi3:
		call showthreei
		RET

RET
showBIGi ENDP
	
showonei PROC

call showhead
mov edx, offset mem76
call writestring

mov edx, offset mem77
call writestring

mov edx, offset mem78
call writestring

mov edx, offset mem79
call writestring

mov edx, offset mem80
call writestring

mov edx, offset mem81
call writestring

mov edx, offset mem82
call writestring

mov edx, offset mem83
call writestring

mov edx, offset mem84
call writestring

mov edx, offset mem85
call writestring

mov edx, offset mem86
call writestring

mov edx, offset mem87
call writestring

mov edx, offset mem88
call writestring

mov edx, offset mem89
call writestring

mov edx, offset mem90
call writestring

RET
showonei endp



showtwoi PROC

call showhead
mov edx, offset mem91
call writestring

mov edx, offset mem92
call writestring

mov edx, offset mem93
call writestring

mov edx, offset mem94
call writestring

mov edx, offset mem95
call writestring

mov edx, offset mem96
call writestring

mov edx, offset mem97
call writestring

mov edx, offset mem98
call writestring

mov edx, offset mem99
call writestring

mov edx, offset mem100
call writestring

mov edx, offset mem101
call writestring

mov edx, offset mem102
call writestring

mov edx, offset mem103
call writestring

mov edx, offset mem104
call writestring

mov edx, offset mem105
call writestring

RET
showtwoi endp



showthreei PROC

call showhead
mov edx, offset mem106
call writestring

mov edx, offset mem107
call writestring

mov edx, offset mem108
call writestring

mov edx, offset mem109
call writestring

mov edx, offset mem110
call writestring

mov edx, offset mem111
call writestring

mov edx, offset mem112
call writestring

mov edx, offset mem113
call writestring

mov edx, offset mem114
call writestring

mov edx, offset mem115
call writestring

mov edx, offset mem116
call writestring

mov edx, offset mem117
call writestring

mov edx, offset mem118
call writestring

mov edx, offset mem119
call writestring

mov edx, offset mem120
call writestring

RET
showthreei endp


showXi PROC

call showhead
mov edx, offset mem121
call writestring

mov edx, offset mem122
call writestring

mov edx, offset mem123
call writestring

mov edx, offset mem124
call writestring

mov edx, offset mem125
call writestring

mov edx, offset mem126
call writestring

mov edx, offset mem127
call writestring

mov edx, offset mem128
call writestring

mov edx, offset mem129
call writestring

mov edx, offset mem130
call writestring

mov edx, offset mem131
call writestring

mov edx, offset mem132
call writestring

mov edx, offset mem133
call writestring

mov edx, offset mem134
call writestring

mov edx, offset mem135
call writestring

RET
showXi endp



END main

