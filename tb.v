module tb;
	parameter CODE_LENGTH=3;
	reg rst;
	reg [CODE_LENGTH-1:0] binary;
	wire [CODE_LENGTH-1:0] gray;

	bin_2_gray#(.CODE_LENGTH(CODE_LENGTH)) dut(
												.rst(rst),
												.binary(binary),
												.gray(gray)
												);

	initial begin
		rst=0;
		binary=0;
		#5;
		rst=1;
		repeat(10)begin
			binary=$random;
			#1 $display("binary=%b gray=%b", binary, gray);
		end
	end

	initial 
endmodule
