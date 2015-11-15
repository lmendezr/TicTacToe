module win_status
	(output out,
	 input A, B, C, D, E, F, G, H, I);

	and(first_row, A, B, C);
	and(second_row, D, E, F);
	and(third_row, G, H, I);
	and(first_column, A, D, G);
	and(second_column, B, E, H);
	and(third_column, C, F, I);
	and(first_diagonal, A, E, I);
	and(second_diagonal, C, E, G);

	or(out, first_row, second_row, third_row, first_column, second_column, third_column, first_diagonal, second_diagonal);

endmodule