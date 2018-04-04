module pwm(clk, rst, compare, out);
    input clk, rst;
    input [8:1] compare;
    output reg out;
    
    reg [8:1] sr;
        
    always @(posedge clk)
    begin
        if (rst) begin
            sr  <= 0;
            out <= 0;
        end
        else begin
            sr <= sr + 1;
            out <= (compare > sr);
        end
    end
endmodule
