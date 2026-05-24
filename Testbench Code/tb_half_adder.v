module tb_half_adder;

    reg A, B;
    wire Sum, Carry;

    // Instantiate Half Adder
    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin

        // GTKWave dump file
        $dumpfile("half_adder.vcd");
        $dumpvars(0, tb_half_adder);

        // Test case 1
        A = 0;
        B = 0;
        #10;

        // Test case 2
        A = 0;
        B = 1;
        #10;

        // Test case 3
        A = 1;
        B = 0;
        #10;

        // Test case 4
        A = 1;
        B = 1;
        #10;

        $finish;
    end

endmodule