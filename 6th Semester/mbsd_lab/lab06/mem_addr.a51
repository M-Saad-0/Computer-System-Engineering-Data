ORG 00H 


	MOV DPTR, #ROM_Sentence
	MOV R0, #30H
COPY_LOOP:
	
	CLR A
	MOV A, P1
    MOVC A, @A+DPTR            
    MOV @R0, A    
	JZ EXIT
    INC DPTR                
    INC R0     
	
    EXIT:	SJMP $

ORG 300H
ROM_Sentence:
    DB "Hello, world! This is a sample sentence.", 0 
          



END
