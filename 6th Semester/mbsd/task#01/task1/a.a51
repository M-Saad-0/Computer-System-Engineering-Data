ORG 00
	HERE: 
	SETB P1.0
	ACALL DELAY
	CLR P1.0
	ACALL DELAY
	LJMP HERE
	
	
DELAY:
    MOV R2, #18  ;1MC
ODELAY:
    MOV R1, #255	;18MC
IDELAY:
    DJNZ R1, IDELAY 	;9000MC
    DJNZ R2, ODELAY		;36MC
    RET            


END
	
	;1+18+9180+36 = 9235 * 1.082e-6
	; = 0.00999227e-6 =~10ms