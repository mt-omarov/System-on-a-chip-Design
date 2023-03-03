`timescale 1 ns / 100 ps

module testbench;

    reg  j, k, clk;
    wire q, q_n;

    JK-trigger JK-trigger (j, k, clk, q, n_q);
    
    initial $dumpvars;

    initial
    begin
        
        
        $monitor ("%0d j %b k %b clk %b q %b n_q %b", $time, j, j, clk, q, n_q);

        # 10;   j = 0; k = 0; clk = 1;
        # 10;   j = 1; k = 0; clk = 1;
        # 10;   j = 0; k = 0; clk = 1;
        # 10;   j = 0; k = 1; clk = 1;
        # 10;   j = 1; k = 1; clk = 1;
        # 10;   j = 0; k = 0; clk = 1;
        # 10;

        $finish;
    end

endmodule
