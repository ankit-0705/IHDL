module tb_decoder;

reg i0,i1,i2;
wire o0,o1,o2,o3,o4,o5,o6,o7;

decoder uut(
    .i0(i0),.i1(i1),.i2(i2),
    .o0(o0),.o1(o1),.o2(o2),.o3(o3),.o4(o4),.o5(o5),.o6(o6),.o7(o7)
);

initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0,tb_decoder);

    for (integer i=0;i<8;i=i+1) begin
        {i2,i1,i0}=i;  #10;
    end
    $finish;
end
endmodule