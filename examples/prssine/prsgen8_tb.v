module prsgen8_tb;
    reg reset = 0;
    reg clk = 0;
    wire out;

    /* Make a reset pulse and specify dump file */
    initial begin
        $dumpfile("prsgen8_tb.vcd");
        $dumpvars(0, prsgen8_tb);

        # 0 reset = 1;
        # 2 reset = 0;
        # 1024 $finish;
    end

    /* Make a regular pulsing clock. */
    always #1 clk = !clk;

    prsgen8 prs(clk, reset, 8'h80, out);
endmodule
