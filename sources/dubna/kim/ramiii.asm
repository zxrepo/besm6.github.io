	NAME RAMii
code segment at 3000h
assume	cs:code
START:
	MOV	CX,100
	MOV	DX,100H
	MOV	AX,800H
	XOR BX,BX
C1:
	OUT 	DX,AX
	ADD	DX,2
	INC AX
	NOP
	LOOP	C1
	MOV	DX,01FEH
	MOV	AX,87FH
	OUT	DX,AX
	NOP
	NOP
	NOP
	CLI
	OUT	0AAH,AX
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	AX,0
	MOV	ES,AX
	CLD
	MOV	AX,0AAAAH
	MOV	DI,1000H
	MOV	CX,4000H
	REP	STOSW
	INC	BX
	INC	BX
	MOV	AX,0
	OUT	0AAH,AX
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	INT 3
;	JMP	START
;	int	3
code	ends
	end
