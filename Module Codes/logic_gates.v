module logic_gates (
    input A,
    input B,

    output AND_Y,
    output OR_Y,
    output NOT_Y,
    output NAND_Y,
    output NOR_Y,
    output XOR_Y
);

    assign AND_Y  = A & B;
    assign OR_Y   = A | B;
    assign NOT_Y  = ~A;
    assign NAND_Y = ~(A & B);
    assign NOR_Y  = ~(A | B);
    assign XOR_Y  = A ^ B;

endmodule