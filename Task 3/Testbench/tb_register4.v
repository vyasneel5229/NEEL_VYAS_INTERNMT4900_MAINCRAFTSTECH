module tb_register4;

    reg CLK;
    reg [3:0] D;
    wire [3:0] Q;

    // Instantiate 4-bit Register
    register4 uut (
        .CLK(CLK),
        .D(D),
        .Q(Q)
    );

    // Generate VCD file
    initial begin
        $dumpfile("register4.vcd");
        $dumpvars(0, tb_register4);
    end

    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Test cases
    initial begin
        D = 4'b0000; #10;
        D = 4'b1010; #10;
        D = 4'b1100; #10;
        D = 4'b1111; #10;
        D = 4'b0011; #10;

        $finish;
    end

endmodule