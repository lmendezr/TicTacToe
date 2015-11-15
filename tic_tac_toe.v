`include "all_switch.v"
`include "d_flip_flop.v"
`include "done.v"
`include "playerProfile.v"
`include "switch.v"
`include "win_detect.v"

module tic_tac_toe
	(output p1_turn, p2_turn, p1_win, p2_win, grid_full,
	 output a_switch_p2, b_switch_p2, c_switch_p2, d_switch_p2, e_switch_p2, f_switch_p2, g_switch_p2, h_switch_p2, i_switch_p2,
	 input  a_button, b_button, c_button, d_button, e_button, f_button, g_button, h_button, i_button, reset);

	switch a_switch (a_switch_out, a_switch_p1, a_switch_p2, a_button, p1_profile_out, p2_profile_out, reset);
	switch b_switch (b_switch_out, b_switch_p1, b_switch_p2, b_button, p1_profile_out, p2_profile_out, reset);
	switch c_switch (c_switch_out, c_switch_p1, c_switch_p2, c_button, p1_profile_out, p2_profile_out, reset);
	switch d_switch (d_switch_out, d_switch_p1, d_switch_p2, d_button, p1_profile_out, p2_profile_out, reset);
	switch e_switch (e_switch_out, e_switch_p1, e_switch_p2, e_button, p1_profile_out, p2_profile_out, reset);
	switch f_switch (f_switch_out, f_switch_p1, f_switch_p2, f_button, p1_profile_out, p2_profile_out, reset);
	switch g_switch (g_switch_out, g_switch_p1, g_switch_p2, g_button, p1_profile_out, p2_profile_out, reset);
	switch h_switch (h_switch_out, h_switch_p1, h_switch_p2, h_button, p1_profile_out, p2_profile_out, reset);
	switch i_switch (i_switch_out, i_switch_p1, i_switch_p2, i_button, p1_profile_out, p2_profile_out, reset);

	all_switch all_switch (all_pressed, a_switch_out, b_switch_out, c_switch_out, d_switch_out, e_switch_out, f_switch_out, g_switch_out, h_switch_out, i_switch_out);
	
	playerProfile playerProfile (p1_profile_out, p2_profile_out, a_switch_out, b_switch_out, c_switch_out, d_switch_out, e_switch_out, f_switch_out, g_switch_out, h_switch_out, i_switch_out);

	win_detect p1_win_detect (p1_win_status, a_switch_p1, b_switch_p1, c_switch_p1, d_switch_p1, e_switch_p1, f_switch_p1, g_switch_p1, h_switch_p1, i_switch_p1);
	win_detect p2_win_detect (p2_win_status, a_switch_p2, b_switch_p2, c_switch_p2, d_switch_p2, e_switch_p2, f_switch_p2, g_switch_p2, h_switch_p2, i_switch_p2);

	done done (p1_win, p2_win, p1_win_status, p2_win_status, reset);

endmodule