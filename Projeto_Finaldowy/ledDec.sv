module ledDec(
	input logic [2:0]num,
	output logic [6:0]lds
);
	always_comb begin
	case (num)
		0: lds = 0;
		1: lds = 1;
		2: lds = 3;
		3: lds = 7;
		4: lds = 15;
		5: lds = 31;
		6: lds = 63;
		7: lds = 127;
		default: lds = 0;
	endcase
	end
endmodule