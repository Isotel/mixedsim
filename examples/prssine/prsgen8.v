module prsgen8 (clk, rst, compare, out);
    input clk, rst;
    input [8:1] compare;
    output reg out;
    
    reg [8:1] sr;
        
    always @(posedge clk)
    begin
        if (rst) begin
            sr  <= 8'b10101010;
            out <= 0;
        end
        else begin
            sr[8:2] <= sr[7:1];
            sr[1]   <= sr[4] ^ sr[5] ^ sr[6] ^ sr[8];            
            out     <= (compare >= sr);
        end
    end
endmodule
