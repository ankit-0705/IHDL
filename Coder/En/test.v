module tb_encoder;

reg i0,i1,i2,i3,i4,i5,i6,i7;
wire o0,o1,o2;

encoder uut(
    .i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),
    .o0(o0),.o1(o1),.o2(o2)
);

initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(0,tb_encoder);

    i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;
    for (integer j=0;j<8;j=j+1) begin
        {i7,i6,i5,i4,i3,i2,i1,i0}=(1<<j); #10;
    end
    $finish;    
end
endmodule