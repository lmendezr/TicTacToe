module ai
	(output reg [8:0] ai_out,
	input	a, b, c, d, e, f, g, h, i, ai_turn, reset, vcc);
	
	initial begin
		ai_out = 0;
	end

	integer x;

	always @(negedge reset, posedge ai_turn) begin
		if (ai_turn) begin
			if (!a) ai_out = 9'b000_000_000;
			if (!b) ai_out = 9'b010_000_000;
			if (!c) ai_out = 9'b001_000_000;
			if (!d) ai_out = 9'b000_100_000;
			if (!e) ai_out = 9'b000_010_000;
			if (!f) ai_out = 9'b000_001_000;
			if (!g) ai_out = 9'b000_000_100;
			if (!h) ai_out = 9'b000_000_010;
			if (!i) ai_out = 9'b000_000_001;
		end
		else ai_out = 0;
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
