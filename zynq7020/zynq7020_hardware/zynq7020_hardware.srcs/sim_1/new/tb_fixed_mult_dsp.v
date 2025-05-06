`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 10:38:25 AM
// Design Name: 
// Module Name: tb_fixed_mult_dsp
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


module tb_fixed_mult_dsp();

    // DUT parameters 
    localparam BITS = 18;
    localparam FRAC = 8;
    localparam INT_BITS = BITS - FRAC - 1;
    localparam THRESH = 0.1;
    
    // sim parameters
    localparam CLK_T = 10;      // 100 MHz
    
    real INT_MAX = 10;
    real INT_MIN = -10;


    // signals
    reg clk = 1'b0;
    reg [BITS-1:0] a, b;
    wire [BITS-1:0] p;
    wire overflow;
    
    fixed_mult_dsp #(.BITS(BITS), .FRAC_BITS(FRAC)) dut (
        .clk(clk), .a(a), .b(b), .product(p), .overflow(overflow)
    );

    
    // clock 
    always #(CLK_T / 2) clk = ~clk;
    
    
    // some helper functions 
    function [BITS-1:0] real_to_q;
        input real r;
        reg   signed [BITS-1:0] tmp;
    begin
        tmp = $rtoi(r * (1<<FRAC));
        real_to_q = tmp;
    end
    endfunction

    function real q_to_real;
        input [BITS-1:0] q;
        reg   signed [BITS-1:0] s;
    begin
        s = q;
        q_to_real = $itor(s) / (1<<FRAC);
    end
    endfunction
    
    
    // actual stimulus
    integer i, pass_cnt;
    real ra, rb, rprod, lsb, delta;
    
    // I/O
    integer fd;
    
    
    
    initial
    begin
        pass_cnt = 0;
        lsb = 1.0 / (1 << FRAC);
        fd = $fopen("fixed_mult_dsp.txt");
        $display("\n--- fixed_mult_dsp Q%d.%d test ---", INT_BITS, FRAC);
        
        
        // apply 1 000 random vectors
        for (i = 0; i < 1000; i = i + 1)
        begin
            // random operands in full range
            ra <= ($random/2147483648.0) * (INT_MAX-INT_MIN) + INT_MIN;
            rb <= ($random/2147483648.0) * (INT_MAX-INT_MIN) + INT_MIN;
            
            a <= real_to_q(ra);
            b <= real_to_q(rb);
            
            @(posedge clk); // pipeline: stage-0 register
            @(posedge clk); // pipeline outputs a valid here
            
            rprod <= ra * rb;
            delta = (q_to_real(p) > rprod) ? q_to_real(p)-rprod
                                           : rprod-q_to_real(p);
           
           $fdisplay(fd, "a=%f (%f), b = %f (%f), a * b = %f (%f), Δ=%f", q_to_real(a), ra, q_to_real(b), rb, q_to_real(p), rprod, delta);
           $display("a=%f (%f), b = %f (%f), a * b = %f (%f), Δ=%f", q_to_real(a), ra, q_to_real(b), rb, q_to_real(p), rprod, delta);

            // should be no overflow
            
            if (delta > THRESH) 
            begin
                $display("FAIL value mismatch  exp=%f  got=%f  Δ=%f",rprod,q_to_real(p),delta);
                $stop;
            end
             
            pass_cnt = pass_cnt + 1;
        end

        
        $fclose(fd);
        $display("PASS: %0d random vectors checked OK.", pass_cnt);
        $finish;
    end
    
        
endmodule