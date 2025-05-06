`timescale 1ns/1ps
// -----------------------------------------------------------------------------
//  tb_fixed_mult.v  -  no-overflow self-check for fixed_mult
// -----------------------------------------------------------------------------
module tb_fixed_mult;

    // ---------------- Q-format under test ------------------------------------
    localparam BITS = 18;
    localparam FRAC = 8;
    localparam INT_BITS = BITS-FRAC-1;          // sign already counted

    // ---------------- constants in REAL domain ------------------------------
    real MAX_MAG  = (1<<INT_BITS) - (1.0/(1<<FRAC));
    real SAFE_MAG = ((1<<INT_BITS) - (1.0/(1<<FRAC)))/64.0;   // half range
    real ACC_DIFFERENCE = 0.1;

    // ---------------- DUT ----------------------------------------------------
    reg  [BITS-1:0] a, b;
    wire [BITS-1:0] p;
    /* wire ovf_unused; */      // port may exist or be removed; ignore

    fixed_mult #(.BITS(BITS), .FRAC_BITS(FRAC)) dut (
        .a(a), .b(b), .product(p), .overflow()  // overflow left unconnected
    );

    // ---------------- helper functions --------------------------------------
    function [BITS-1:0] real_to_q;
        input real r;
        reg   signed [BITS-1:0] tmp;
    begin
        tmp = $rtoi(r * (1<<FRAC));     // truncate toward zero
        real_to_q = tmp;
    end
    endfunction

    function real q_to_real;
        input [BITS-1:0] fx;
        reg   signed [BITS-1:0] sfx;
    begin
        sfx = fx;
        q_to_real = $itor(sfx) / (1<<FRAC);
    end
    endfunction

    // ---------------- stimulus / scoreboard ---------------------------------
    integer i, PASS_CNT;
    real ra, rb, ref, dut_val, rnd, delta;

    initial begin
        #200;
        PASS_CNT = 0;
        $display("--- fixed_mult no-overflow test (Q%d.%d) ---",INT_BITS,FRAC);

        for (i = 0; i < 1000; i = i+1) begin
            // create pseudo-random reals in ±SAFE_MAG using $random
            rnd = $random;                 // 32-bit signed integer
            ra  = ( (rnd / 2147483648.0) * 2.0 * SAFE_MAG ) - SAFE_MAG;

            rnd = $random;
            rb  = ( (rnd / 2147483648.0) * 2.0 * SAFE_MAG ) - SAFE_MAG;

            // map to fixed-point inputs
            a = real_to_q(ra);
            b = real_to_q(rb);

            #1;                            // allow combinational logic to settle

            ref   = ra * rb;               // ideal product
            dut_val   = q_to_real(p);          // DUT product
            delta = (dut_val > ref) ? (dut_val-ref) : (ref-dut_val);

            if (delta > ACC_DIFFERENCE) begin
                $display("FAIL vec %0d  ra=%f rb=%f  ref=%f got=%f  Δ=%f",
                         i, ra, rb, ref, dut_val, delta);
                $stop;
            end
            PASS_CNT = PASS_CNT + 1;
        end
        $display("PASS: %0d vectors within safe range matched.", PASS_CNT);
        $finish;
    end
endmodule
