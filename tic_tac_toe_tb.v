`include "tic_tac_toe.v"

module tic_tac_toe_tb();
	
	wire p1_turn, p2_turn, p1_win, p2_win, grid_full;
	wire a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led;
	reg  a_button, b_button, c_button, d_button, e_button, f_button, g_button, h_button, i_button, reset;

	tic_tac_toe the_toe (p1_turn, p2_turn, p1_win, p2_win, grid_full,
						a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led,
	 					a_button, b_button, c_button, d_button, e_button, f_button, g_button, h_button, i_button, reset);

	initial begin
		reset <= 0;
		a_button <= 0;
		b_button <= 0;
		c_button <= 0;
		d_button <= 0;
		e_button <= 0;
		f_button <= 0;
		g_button <= 0;
		h_button <= 0;
		i_button <= 0;
	end

	initial begin
		#10 reset = 1;
		#10 reset = 0;

		#10 a_button = 1;
		#10 a_button = 0;

		#10 d_button = 1;
		#10 d_button = 0;

		#10 b_button = 1;
		#10 b_button = 0;

		#10 f_button = 1;
		#10 f_button = 0;

		#10 c_button = 1;
		#10 c_button = 0;

		#10 e_button = 1;
		#10 e_button = 0;

		#10 g_button = 1;
		#10 g_button = 0;

		#10 h_button = 1;
		#10 h_button = 0;

		#10 i_button = 1;
		#10 i_button = 0;
	end

	initial begin
		$monitor("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		$monitor(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);
	end

endmodule