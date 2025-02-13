module countmin(
		input logic clk,
		input logic reset,
		output out,
		output logic [3:0]num
);

always_ff @ (posedge clk, posedge reset)
	if(reset)
		begin
			num <= 4;
			out <= 1;
		end
	else
		if(num==0)
			begin
				num<=0;
				out <=0;
			end
		else
			begin
				num <= num-1;
				out <= 1;
			end

endmodule