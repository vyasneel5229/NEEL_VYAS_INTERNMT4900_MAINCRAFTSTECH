module tb_logic_gates;

    reg A, B;

    wire AND_Y;
    wire OR_Y;
    wire NOT_Y;
    wire NAND_Y;
    wire NOR_Y;
    wire XOR_Y;

    // Instantiate Logic Gates Module
    logic_gates uut (
        .A(A),
        .B(B),
        .AND_Y(AND_Y),
        .OR_Y(OR_Y),
        .NOT_Y(NOT_Y),
        .NAND_Y(NAND_Y),
        .NOR_Y(NOR_Y),
        .XOR_Y(XOR_Y)
    );

    initial begin

        // GTKWave dump file
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, tb_logic_gates);

        // Test case 1
        A = 0; B = 0; #10;

        // Test case 2
        A = 0; B = 1; #10;

        // Test case 3
        A = 1; B = 0; #10;

        // Test case 4
        A = 1; B = 1; #10;

        $finish;
    end

endmodule