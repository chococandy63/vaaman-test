module top_module (
    input clk,
    input i1,
    input i2,
    output reg out
);
    
    always @(posedge clk) begin
      out <= i1 & i2;
    end
    
endmodule