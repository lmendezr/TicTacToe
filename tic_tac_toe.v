`include "all_switch.v"
`include "d_flip_flop.v"
`include "done.v"
`include "playerProfile.v"
`include "switch.v"
`include "win_detect.v"

module tic_tac_toe
	(output p1_turn_led, p2_turn_led, p1_win_led, p2_win_led, tie_led,
	 output [1:0] a_out, b_out, c_out, d_out, e_out, f_out, g_out, h_out, i_out,
	 input  a_button, b_button, c_button, d_button, e_button, f_button, g_button, h_button, i_button, reset);

	wire a_switch_out, b_switch_out, c_switch_out, d_switch_out, e_switch_out, f_switch_out, g_switch_out, h_switch_out, i_switch_out;
	wire a_switch_p1, b_switch_p1, c_switch_p1, d_switch_p1, e_switch_p1, f_switch_p1, g_switch_p1, h_switch_p1, i_switch_p1;
	wire a_switch_p2, b_switch_p2, c_switch_p2, d_switch_p2, e_switch_p2, f_switch_p2, g_switch_p2, h_switch_p2, i_switch_p2;
	wire p1_profile, p2_profile, p1_win, p2_win, grid_full;

	assign a_out = {!a_switch_p1, !a_switch_p2};
	assign b_out = {!b_switch_p1, !b_switch_p2};
	assign c_out = {!c_switch_p1, !c_switch_p2};
	assign d_out = {!d_switch_p1, !d_switch_p2};
	assign e_out = {!e_switch_p1, !e_switch_p2};
	assign f_out = {!f_switch_p1, !f_switch_p2};
	assign g_out = {!g_switch_p1, !g_switch_p2};
	assign h_out = {!h_switch_p1, !h_switch_p2};
	assign i_out = {!i_switch_p1, !i_switch_p2};

	nand (p1_turn_led, p1_profile, !grid_full, !p1_win, !p2_win);
	nand (p2_turn_led, p2_profile, !grid_full, !p1_win, !p2_win);
	not  (p1_win_led, p1_win);
	not  (p2_win_led, p2_win);
	nand (tie_led, grid_full, !p1_win, !p2_win);

	switch a_switch (a_switch_out, a_switch_p1, a_switch_p2, a_button, p1_profile, p2_profile, p1_win, p2_win, reset);
	switch b_switch (b_switch_out, b_switch_p1, b_switch_p2, b_button, p1_profile, p2_profile, p1_win, p2_win, reset);
	switch c_switch (c_switch_out, c_switch_p1, c_switch_p2, c_button, p1_profile, p2_profile, p1_win, p2_win, reset);
	switch d_switch (d_switch_out, d_switch_p1, d_switch_p2, d_button, p1_profile, p2_profile, p1_win, p2_win, reset);
	switch e_switch (e_switch_out, e_switch_p1, e_switch_p2, e_button, p1_profile, p2_profile, p1_win, p2_win, reset);
	switch f_switch (f_switch_out, f_switch_p1, f_switch_p2, f_button, p1_profile, p2_profile, p1_win, p2_win, reset);
	switch g_switch (g_switch_out, g_switch_p1, g_switch_p2, g_button, p1_profile, p2_profile, p1_win, p2_win, reset);
	switch h_switch (h_switch_out, h_switch_p1, h_switch_p2, h_button, p1_profile, p2_profile, p1_win, p2_win, reset);
	switch i_switch (i_switch_out, i_switch_p1, i_switch_p2, i_button, p1_profile, p2_profile, p1_win, p2_win, reset);

	all_switch all_switch (grid_full, a_switch_out, b_switch_out, c_switch_out, d_switch_out, e_switch_out, f_switch_out, g_switch_out, h_switch_out, i_switch_out);
	
	playerProfile playerProfile (p1_profile, p2_profile, a_switch_out, b_switch_out, c_switch_out, d_switch_out, e_switch_out, f_switch_out, g_switch_out, h_switch_out, i_switch_out);

	win_detect p1_win_detect (p1_win_status, a_switch_p1, b_switch_p1, c_switch_p1, d_switch_p1, e_switch_p1, f_switch_p1, g_switch_p1, h_switch_p1, i_switch_p1);
	win_detect p2_win_detect (p2_win_status, a_switch_p2, b_switch_p2, c_switch_p2, d_switch_p2, e_switch_p2, f_switch_p2, g_switch_p2, h_switch_p2, i_switch_p2);

	done done (p1_win, p2_win, p1_win_status, p2_win_status, reset);

	// always @(*) begin
	// 	$display("buttonA = %b, buttonB = %b, buttonC = %b, buttonD = %b, buttonE = %b, buttonF = %b, buttonG = %b, buttonH = %b, switchI = %b, time: %1d", 
	// 		a_button, b_button, c_button, d_button, e_button, f_button, g_button, h_button, i_button, $time);
	// 	 	$display("a_switch_out = %b, b_switch_out = %b, c_switch_out = %b, d_switch_out = %b, e_switch_out = %b, f_switch_out = %b, g_switch_out = %b, h_switch_out = %b,i _switch_out = %b, time: %1d", 
	//  		a_switch_out, b_switch_out, c_switch_out, d_switch_out, e_switch_out, f_switch_out, g_switch_out, h_switch_out, i_switch_out, $time);
	// end

endmodule