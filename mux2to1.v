module mux2to1
	(output out,
	 input [1:0] in,
	 input sel);
	assign out = in[sel];
endmodule

// module mux2to1_tb();
// 	reg [1:0] in = 2'b10;
// 	reg sel;
// 	wire out;

// 	mux2to1 mux(out, in, sel);

// 	initial begin
// 		sel = 0;
// 		#10 $display("%b", out);
// 		sel = 1;
// 		#10 $display("%b", out);
// 	end

// endmodule