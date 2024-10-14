
//
// Verific Verilog Description of module top_module
//

module top_module (clk, i1, i2, out);
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.1/project/test_project/top_module.v(2)
    input i1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.1/project/test_project/top_module.v(3)
    input i2 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.1/project/test_project/top_module.v(4)
    output out /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/trinity/Downloads/efinity/2024.1/project/test_project/top_module.v(5)
    
    wire n5_2;
    
    wire \clk~O ;
    
    EFX_LUT4 LUT__12 (.I0(i1), .I1(i2), .O(n5_2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__12.LUTMASK = 16'h8888;
    EFX_FF \out~FF  (.D(n5_2), .CE(1'b1), .CLK(\clk~O ), .SR(1'b0), 
           .Q(out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/trinity/Downloads/efinity/2024.1/project/test_project/top_module.v(10)
    defparam \out~FF .CLK_POLARITY = 1'b1;
    defparam \out~FF .CE_POLARITY = 1'b1;
    defparam \out~FF .SR_POLARITY = 1'b1;
    defparam \out~FF .D_POLARITY = 1'b1;
    defparam \out~FF .SR_SYNC = 1'b1;
    defparam \out~FF .SR_VALUE = 1'b0;
    defparam \out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clk), .O(\clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_45edcde5_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_45edcde5_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_45edcde5_0
// module not written out since it is a black box. 
//

