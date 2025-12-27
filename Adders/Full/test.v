module tb_full_adder;

reg a,b,c;
wire sum,carry;

full_adder uut(
    .a(a),.b(b),.c(c),
    .sum(sum),.carry(carry)
);

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,tb_full_adder);

    a=0;b=0;c=0; #10;
    a=0;b=0;c=1; #10;
    a=0;b=1;c=0; #10;
    a=0;b=1;c=1; #10;
    a=1;b=0;c=0; #10;
    a=1;b=0;c=1; #10;
    a=1;b=1;c=0; #10;
    a=1;b=1;c=1; #10;
    $finish;
end
endmodule