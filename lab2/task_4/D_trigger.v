// task_4_D_trigger
module D_trigger (
	input CLK, 
	input D, 
	output reg Q
);
	always @ (CLK or D)
	if (~CLK)	
		Q <= D;
endmodule

