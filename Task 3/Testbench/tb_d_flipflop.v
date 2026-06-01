module tb_d_flipflop;

    reg D;
    reg CLK;
    wire Q;

    d_flipflop uut (
        .D(D),
        .CLK(CLK),
        .Q(Q)
    );

    initial begin
        $dumpfile("d_flipflop.vcd");
        $dumpvars(0, tb_d_flipflop);
    end

    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Stimulus
    initial begin
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        $finish;
    end

endmodule