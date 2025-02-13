module comp7(
	input logic [6:0]ans,
	input logic [6:0]usr,
	output logic eq
);
	assign eq = (ans == usr);
endmodule