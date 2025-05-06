`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 12:04:34 AM
// Design Name: 
// Module Name: tb_fixed_to_int
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_fixed_to_int();


    // fixed point format
    localparam TOTAL_BITS = 18;
    localparam FRAC_BITS = 9;
    localparam OUT_W = 12;
    real INT_MAX =  (1<<(OUT_W-1)) - (1.0/(1<<FRAC_BITS));
    real INT_MIN = -(1<<(OUT_W-1));

    
    // instantiate DUT
    reg [TOTAL_BITS-1:0] fx;
    wire signed [OUT_W-1:0]     out;
    
    
    fixed_to_int #(.TOTAL_BITS(TOTAL_BITS),
                   .FRAC_BITS (FRAC_BITS ),
                   .OUT_WIDTH (OUT_W    )) dut (
        .fixed_val    (fx),
        .int_fixed_val(out)
    );
    
    function [TOTAL_BITS-1:0] real_to_q;
        input real r;
        reg   signed [TOTAL_BITS-1:0] tmp;
    begin
        tmp = $rtoi(r * (1<<FRAC_BITS));
        real_to_q = tmp;
    end
    endfunction
    
    integer id; 
    initial begin
        id = 0;

        // in-range positive
        fx = real_to_q(3.75);  #1;


        // in-range positive
        fx = real_to_q(16.9);  #1;

        // in-range positive
        fx = real_to_q(42.42);  #1;

        // in-range positive
        fx = real_to_q(123.0);  #1;

        // in-range positive
        fx = real_to_q(3.75);  #1;

        
        
        // in-range negative
        // in-range positive
        fx = real_to_q(-3.75);  #1;


        // in-range positive
        fx = real_to_q(-16.9);  #1;

        // in-range positive
        fx = real_to_q(-42.42);  #1;

        // in-range positive
        fx = real_to_q(-123.0);  #1;

        // in-range positive
        fx = real_to_q(-1.75);  #1;


        // exactly max
        fx = real_to_q(INT_MAX); #1;

        // exactly min
        fx = real_to_q(INT_MIN); #1;

        // overflow positive → saturate
        fx = real_to_q(INT_MAX*2.0); #1;

        // overflow negative → saturate
        fx = real_to_q(INT_MIN*2.0); #1;

        $display("PASS: all %0d fixed_to_int cases OK", id);
        $finish;
    end


endmodule
