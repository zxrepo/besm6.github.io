	NAME DPM
BOOT	SEGMENT AT 0FFFFH
STR	LABEL	WORD
BOOT	ENDS
code segment at 01000h
assume	cs:code
START:
	MOV	DX,4096
	MOV	AX,0E000H
	MOV	ES,AX
	MOV	CX,DX
	CLD
	MOV	SI,0H
	MOV	DI,0H
C123:
	XOR	BX,BX
	MOV	AX,SI
	ADD	SI,2
	MOV	ES:[DI],AX
	ADD	DI,2
	LOOP C123
	INT 3
code	ends
	end
