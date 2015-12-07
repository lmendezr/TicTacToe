module mux2to1 (In1,In2,Sel,Out);
	input In1, In2;           
	input Sel; 				 
	output reg  Out; 			 
	always @(Sel,In2,In1)
		case (Sel) 					
			0: Out =  In1;			
			1: Out =  In2;			
		endcase
endmodule