ORG 00H
	MOV R1, #16
	HERE:
	MOV P0, R1
	DJNZ R1, HERE
END
	