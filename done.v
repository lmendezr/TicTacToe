`include "d_flip_flop.v"

module done (
	input player1_win,
	input player2_win, 
	input reset,  
	output player1_win_indicate,
	output player2_win_indicate
);
supply0 ground;
		wire out1, out2;
		d_flip_flop d1(player1_win_indicate, out2, reset, ground, player1_win);
		not(out1, player1_win_indicate); //q negado a d2
		d_flip_flop d2(player2_win_indicate, out1, reset, ground, player2_win);
		not(out2, player2_win_indicate); 
		
endmodule