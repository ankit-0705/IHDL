module basic_gates(
    input a,b,
    output and_out, or_out, not_out, xor_out
);

    assign and_out=a&b;
    assign or_out=a|b;
    assign not_out=~a;
    assign xor_out=a^b;
endmodule