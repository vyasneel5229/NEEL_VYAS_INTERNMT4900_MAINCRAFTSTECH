module tb_counter4;

    reg CLK;
    wire [3:0] Q;

    // Instantiate Counter
    counter4 uut (
        .CLK(CLK),
        .Q(Q)
    );

    // Generate VCD file
    initial begin
        $dumpfile("counter4.vcd");
        $dumpvars(0, tb_counter4);
    end

    // Clock generation (10 ns period)
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Run simulation
    initial begin
        #160;
        $finish;
    end

endmodule