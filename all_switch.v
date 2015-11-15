

module all_switch (
	input switchA,    
	input switchB,     
	input switchC,     
	input switchD,     
	input switchE,     
	input switchF,     
	input switchG,     
	input switchH,     
	input switchI, 
	output all_pressed 
);

			wire out1;
			wire out2;
			wire out3;
			wire out4;
			wire out5;
			wire out6;
			wire out7;

			and(out1, switchA, switchB);
			and(out2, switchC, switchD);
			and(out3, switchE, switchF);
			and(out4, switchG, switchH);

			and(out5, out1, out2);
			and(out6, out3, out4);

			and(out7, out5, out6);

			and(all_pressed, out7, switchI);





endmodule