module ai
	(output reg a_button, b_button, c_button, 
					d_button, e_button, f_button, 
					g_button, h_button, i_button,
	input	a, b, c, d, e, f, g, h, i, ai_turn, reset, vcc);
	
	initial begin
		a_button = 0;
		b_button = 0;
		c_button = 0;
		d_button = 0;
		e_button = 0;
		f_button = 0;
		g_button = 0;
		h_button = 0;
		i_button = 0;
	end

	always @(negedge reset, posedge ai_turn) begin
		if (ai_turn) e_button = vcc;
		else e_button = !vcc;
	end

endmodule


// module ai (
// 	input a_switch_out, b_switch_out, c_switch_out, d_switch_out, e_switch_out, f_switch_out, g_switch_out, h_switch_out, i_switch_out, computerTurn, 
// 	output a_button_pressed, b_button_pressed, c_button_pressed, d_button_pressed, e_button_pressed, f_button_pressed, g_button_pressed, h_button_pressed, i_button_pressed
	
// );

// reg a_button_pressed, b_button_pressed, c_button_pressed, d_button_pressed, e_button_pressed, f_button_pressed, g_button_pressed, h_button_pressed, i_button_pressed;
// always @(posedge computerTurn) 
// begin
// 		if(a_switch_out ==0)
// 		begin
// 		a_button_pressed = 1;
// 		end
// 		else if (b_switch_out == 0)
// 		begin
// 		b_button_pressed = 1;
// 	    end
// 	    else if (c_switch_out == 0)
// 		begin
// 		c_button_pressed = 1;
// 	    end
// 	    else if (d_switch_out == 0)
// 		begin
// 		d_button_pressed = 1;
// 	    end
// 	    else if (e_switch_out == 0)
// 		begin
// 		e_button_pressed = 1;
// 	    end
// 	    else if (f_switch_out == 0)
// 		begin
// 		f_button_pressed = 1;
// 	    end
// 	    else if (g_switch_out == 0)
// 		begin
// 		g_button_pressed = 1;
// 	    end
// 	    else if (h_switch_out == 0)
// 		begin
// 		h_button_pressed = 1;
// 	    end
// 	    else if (i_switch_out == 0)
// 		begin
// 		i_button_pressed = 1;
// 	    end

// end
// // always @(*) begin
// // 		$display(" a_button_pressed = %b, time: %1d", a_button_pressed, $time);
// // 	end

// endmodule
