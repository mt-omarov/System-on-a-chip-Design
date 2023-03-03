// task_7_JK_trigger
module JK_trigger_With_Posedge(
	input J, 
	input K,
	input CLK, 
	output reg Q
);
	always @(posedge CLK)
	begin
		if (J && K) 
			Q <= ~ Q; 
		else 
		if (J && ~K) 
			Q <= 1; 
		else 
		if (~J && K) 
			Q <= 0;
		end
endmodule
