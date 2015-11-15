// `include "d_flip_flop.v"

module done 
	(output player1_win_indicate, player2_win_indicate,
	input player1_win, player2_win, reset);
	
	supply0 ground;
	wire out1, out2;

	d_flip_flop d1(player1_win_indicate, out2, reset, ground, player1_win);
	not(out1, player1_win_indicate); //q negado a d2
	d_flip_flop d2(player2_win_indicate, out1, reset, ground, player2_win);
	not(out2, player2_win_indicate); 
		
endmodule