/*
;CODE FOR 50% DUTY CYCLE WITH 1000US OR 1MS APPROX
ORG 0000H
			MOV TMOD, #001H
	Here:	MOV TH0, #0FCH
			MOV TL0, #018H
			CPL P1.5
			ACALL DELAY
			SJMP Here
			
	DELAY:	SETB TR0
	AGAIN:	JNB TF0, AGAIN
			CLR TR0
			CLR TF0
			RET
END*/

;TCON -> TF1	TR1		TF0		TR0		IE1		IT1		IE0		IT0
;TMOD -> GATE	C/T		M1		M0		GATE	C/T		M1		M0
;					FOR TIMER 1		|			FOR TIMER0

/*ORG 0000H
			MOV TMOD, #00H
	AGAIN:	MOV TL1, #00H
			MOV TH0, #00FH
			SETB TR1
		D:	JNB TF1, D
			CPL P0.6
			CLR TF1
			CLR TR1
END*/

/*
ORG 000H
	MOV TMOD, #001H
	AGAIN: MOV TL0, #00H
			MOV TH0, #0EEH
			SETB TR0
			SETB P2.3
			LOOP:	JNB TF1, LOOP
			CLR TF0
			CLR TR0
			CLR P2.3
END*/
																																																																																																																																																									
/*ORG 000H
MOV TMOD, #001H
MAIN:	MOV TH0, #0FF
		MOV TL0, #0F6
		SETB TR0
		SETB P2.3
		LOOP: JNB TF0, LOOP
				CLR P2.3
				CLR TF0
				CLR TR0
				SJMP MAIN
END
*/
/*
ORG 0000H
	MOV TMOD, #001H
	M1:	MOV TL0, #08AH
		MOV TH0, #0EAH ;3MS UPTIME
		MOV P0, #0FFH
		ACALL DELAY
		MOV TL0, #075H
		MOV TH0, #0B8H	;10MS DOWNTIME
		CPL P0
		
		
	ORG 0300H
	DELAY: 		SETB TR0
			CH:	JNB TF0, CH
				CLR TR0
				CLR TF0
				RET
END
*/
/*
ORG 0000H
	MOV TMOD #010
	LOOP:	MOV R2, #28
			CPL P2.4
	BACK:	MOV TL1, #00H
			MOV TH1, #00H
			SETB TR1
	AGAIN:	JNB TF1, AGAIN
			CLR TR1
			CLR TF1
			DJNZ R2, AGAIN
			SJMP LOOP
END
	*/
	/*
ORG 0000H
	START: 	MOV R0, #2
			SETB P1.5
			MOV TMOD, #001H
	BACK:	MOV R1, #5
	RPT:	MOV TH0, #08A
			MOV TL0, #0EA	;10MS FOR 5X LOW AND 5X HIGH
			SETB TR0
	AGAIN:	JNB TF0, AGAIN
			CLR TF0
			CLR TR0
			DJNZ R1, RPT
			CPL P1.5
			DJNZ R0, BACK
			SETB P1.5
	BACK1:	MOV R1, #10
			MOV TH0, #08A
			MOV TL0, #0EA	;10MS 1X LOW AND 1X HIGH
			SETB TR0
	AGAIN1:	JNB TF0, AGAIN1	
			CLR TF0
			CLR TR0
			CPL P1.5			
			DJNZ R0, BACK1
			SJMP START
END


		*/																																																																																																																																																									
																																																																																																																																																											
																																																																																																																																																												
																																																																																																																																																													
																																																																																																																																																														
																																																																																																																																																															
																																																																																																																																																																
																																																																																																																																																																	
																																																																																																																																																																		
																																																																																																																																																																			
																																																																																																																																																																				
																																																																																																																																																																					
																																																																																																																																																																						
																																																																																																																																																																							
																																																																																																																																																																								
																																																																																																																																																																									
																																																																																																																																																																										
																																																																																																																																																																											
																																																																																																																																																																												
																																																																																																																																																																													
																																																																																																																																																																														
																																																																																																																																																																														
																																																																																																																																																																															
																																																																																																																																																																																
																																																																																																																																																																																	
																																																																																																																																																																																		
																																																																																																																																																																																			
																																																																																																																																																																																				
																																																																																																																																																																																					
																																																																																																																																																																																						
																																																																																																																																																																																							
																																																																																																																																																																																								
																																																																																																																																																																																								
																																																																																																																																																																																									
																																																																																																																																																																																										
																																																																																																																																																																																											
																																																																																																																																																																																												
																																																																																																																																																																																													
																																																																																																																																																																																														
																																																																																																																																																																																															
																																																																																																																																																																																																
																																																																																																																																																																																																	
																																																																																																																																																																																																		
																																																																																																																																																																																																			
																																																																																																																																																																																																				
																																																																																																																																																																																																					
																																																																																																																																																																																																						
																																																																																																																																																																																																						
																																																																																																																																																																																																							
																																																																																																																																																																																																									
																																																																																																																																																																																																										
																																																																																																																																																																																																											
																																																																																																																																																																																																												
																																																																																																																																																																																																													
																																																																																																																																																																																																														
																																																																																																																																																																																																															
																																																																																																																																																																																																																
																																																																																																																																																																																																																	
																																																																																																																																																																																																																		
																																																																																																																																																																																																																			
																																																																																																																																																																																																																				
																																																																																																																																																																																																																				
																																																																																																																																																																																																																					
																																																																																																																																																																																																																						
																																																																																																																																																																																																																							
																																																																																																																																																																																																																								
																																																																																																																																																																																																																									
																																																																																																																																																																																																																										
																																																																																																																																																																																																																											
																																																																																																																																																																																																																												
																																																																																																																																																																																																																												
																																																																																																																																																																																																																													
																																																																																																																																																																																																																														
																																																																																																																																																																																																																															
																																																																																																																																																																																																																																
																																																																																																																																																																																																																																	
																																																																																																																																																																																																																																		
																																																																																																																																																																																																																																		
																																																																																																																																																																																																																																			
																																																																																																																																																																																																																																				
																																																																																																																																																																																																																																					
																																																																																																																																																																																																																																						
																																																																																																																																																																																																																																							
																																																																																																																																																																																																																																								
																																																																																																																																																																																																																																									
																																																																																																																																																					
			
