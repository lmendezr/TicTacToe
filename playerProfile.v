module playerProfile 
	(output p1_out, p2_out,
	 input switchA, switchB, switchC, switchD, switchE, switchF, switchG, switchH, switchI);
	
	wire out1, out2, out3, out4, out5, out6, out7;

	xor(out1, switchA, switchB);
	xor(out2, switchC, switchD);
	xor(out3, switchE, switchF);
	xor(out4, switchG, switchH);

	xor(out5, out1, out2);
	xor(out6, out3, out4);

	xor(out7, out5, out6);

	xor(p2_out, switchI, out7);

	not(p1_out, p2_out);

	// always @(*) begin
	// 	$display("p1_out = %b, p2_out = %b, switchA = %b, switchB = %b, switchC = %b, switchD = %b, switchE = %b, switchF = %b, switchG = %b, switchH = %b, switchI = %b, time: %1d",
	// 			p1_out, p2_out, switchA, switchB, switchC, switchD, switchE, switchF, switchG, switchH, switchI, $time);
	// end

endmodule