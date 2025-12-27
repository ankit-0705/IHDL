module tb_basic_gates;

reg a,b;
wire and_out, or_out, not_out, xor_out;

basic_gates uut(
    .a(a),.b(b),
    .and_out(and_out),.or_out(or_out),
    .not_out(not_out),.xor_out(xor_out)
);

initial begin
    $dumpfile("basic_gates.vcd");
    $dumpvars(0,tb_basic_gates);

    a=0;b=0; #10;
    a=1;b=0; #10;
    a=0;b=1; #10;
    a=1;b=1; #10;
    $finish;
end
endmodule