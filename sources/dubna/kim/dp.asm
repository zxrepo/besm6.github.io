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
	MOV	AX,0FC00H
	MOV	DS,AX
	MOV	CX,DX
	CLD
	MOV	SI,0H
	MOV	DI,0H
C123:
	XOR	BX,BX
	MOV	AX,SI
	SUB	SI,2
	MOV	ES:[DI],AX
	SUB	DI,2
;	MOVSW
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	LOOP C123
	INT 3
code	ends
	end
