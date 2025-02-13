module bitsIguais(
	input logic [6:0]ans,
	input logic [6:0]usr,
	output logic [6:0]iguais
);
	assign iguais = ~(ans ^ usr);
endmodule