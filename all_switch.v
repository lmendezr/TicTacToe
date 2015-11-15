module all_switch
	(output all_pressed,
	 input switchA, switchB, switchC, switchD, switchE, switchF, switchG, switchH, switchI);

	wire out1, out2, out3, out4, out5, out6, out7;

	and(out1, switchA, switchB);
	and(out2, switchC, switchD);
	and(out3, switchE, switchF);
	and(out4, switchG, switchH);

	and(out5, out1, out2);
	and(out6, out3, out4);

	and(out7, out5, out6);

	and(all_pressed, out7, switchI);

	// always @(*) begin
	// 	$display("all_pressed = %b, switchA = %b, switchB = %b, switchC = %b, switchD = %b, switchE = %b, switchF = %b, switchG = %b, switchH = %b, switchI = %b, time: %1d", 
	// 		all_pressed, switchA, switchB, switchC, switchD, switchE, switchF, switchG, switchH, switchI, $time);
	// end

endmodule