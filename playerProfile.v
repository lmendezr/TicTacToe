
module playerProfile (
	input switchA,    
	input switchB,     
	input switchC,     
	input switchD,     
	input switchE,     
	input switchF,     
	input switchG,     
	input switchH,     
	input switchI, 
	output player_one,
	output player_two
	
);
	
			wire out1;
			wire out2;
			wire out3;
			wire out4;
			wire out5;
			wire out6;
			wire out7;

			xor(out1, switchA, switchB);
			xor(out2, switchC, switchD);
			xor(out3, switchE, switchF);
			xor(out4, switchG, switchH);

			xor(out5, out1, out2);
			xor(out6, out3, out4);

			xor(out7, out5, out6);

			xor(player_two, switchI, out7);

			not(player_one, player_two);


endmodule