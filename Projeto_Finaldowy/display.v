module display(
		input wire clock,
		input wire reset,
		output reg [6:0] lfsr
);

wire feedback = lfsr[6] ^ lfsr[5];

always @ (posedge clock) begin
	if(reset)
		begin
			lfsr <= 7'h1;
		end
	else
		begin
			lfsr <= {lfsr[5:0], feedback};
		end
end

endmodule