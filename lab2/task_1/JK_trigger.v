// task_1_JK_trigger
module JK_trigger (
	input J,
	input K, 
	input CLK,
	output Q,
	output n_Q
);
	assign Q = ~(n_Q & ~(J & CLK & n_Q));
	assign n_Q = ~(Q & ~(J & CLK & Q));
endmodule
