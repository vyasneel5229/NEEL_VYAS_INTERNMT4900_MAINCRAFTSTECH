module tb_jk_flipflop;

    reg J, K, CLK;
    wire Q;

    // Instantiate JK Flip-Flop
    jk_flipflop uut (
        .J(J),
        .K(K),
        .CLK(CLK),
        .Q(Q)
    );

    // Generate VCD file for GTKWave
    initial begin
        $dumpfile("jk_flipflop.vcd");
        $dumpvars(0, tb_jk_flipflop);
    end

    // Clock generation (10 ns period)
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Test cases
    initial begin
        J = 0; K = 0;   // No Change
        #10;

        J = 0; K = 1;   // Reset
        #10;

        J = 1; K = 0;   // Set
        #10;

        J = 1; K = 1;   // Toggle
        #10;

        J = 1; K = 1;   // Toggle again
        #10;

        J = 0; K = 0;   // No Change
        #10;

        $finish;
    end

endmodule