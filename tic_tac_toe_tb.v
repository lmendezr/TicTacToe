`include "tic_tac_toe.v"

module tic_tac_toe_tb();
	
	wire p1_turn, p2_turn, p1_win, p2_win, grid_full, game_mode_led;
	wire [1:0] a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led;
	reg  a, b, c, d, e, f, g, h, i, reset;
	reg	 game_mode = 1;

	tic_tac_toe the_toe (p1_turn, p2_turn, p1_win, p2_win, grid_full, game_mode_led,
						a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led,
	 					a, b, c, d, e, f, g, h, i, reset, game_mode);

	initial begin
	$display("IM HERE");
		reset = 0;
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;
		g = 0;
		h = 0;
		i = 0;
		$display("DONE INTIAL");
	end

	initial begin
		// $display("a = %b,b = %b,c = %b,d = %b,e = %b,f = %b,g = %b,h = %b,i = %b",a,b,c,d,e,f,g,h,i);

		#1 reset = 1;
		#1 reset = 0;

		$display("e_mux_in: %b | e_mux_out: %b", the_toe.e_mux.in, the_toe.e_mux_out);
		#5
		$display("e_mux_in: %b | e_mux_out: %b", the_toe.e_mux.in, the_toe.e_mux_out);


		#20
		$display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		$display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

		
		// #10 a = 1;
		// #10 a = 0;

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);
		
		// #10 b = 1;
		// #10 b = 0;

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

		// #10 c = 1;
		// #10 c = 0;

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

		// #10 d = 1;
		// #10 d = 0;

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

		// #10 e = 1;
		// #10 e = 0;

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

		// #10 f = 1;
		// #10 f = 0;

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);


		// #10 g = 1;
		// #10 g = 0;


		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

		// #10 h = 1;
		// #10 h = 0;

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

		// #10 i = 1;
		// #10 i = 0;

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);


		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);
	end

	// initial begin
	// 	$monitor("Done FFs: P1= %b, P2= %b | Time: %1d", the_toe.done.d1.Q, the_toe.done.d2.Q, $time);
	// end

		// $display("p1_turn: %b, p2_turn: %b, p1_win: %b, p2_win: %b, grid_full: %b", p1_turn, p2_turn, p1_win, p2_win, grid_full);
		// $display(" %b %b %b\n %b %b %b\n %b %b %b", a_led, b_led, c_led, d_led, e_led, f_led, g_led, h_led, i_led);

endmodule