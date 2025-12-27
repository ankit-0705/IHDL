module tb_mux;

reg i0,i1,i2,i3,s0,s1;
wire y;

mux uut(
    .i0(i0),.i1(i1),.i2(i2),.i3(i3),
    .s0(s0),.s1(s1),
    .y(y)
);

initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0,tb_mux);

    i0=0;i1=1;i2=0;i3=0;
    for (integer i=0; i<4;i=i+1) begin
        {s1,s0}=i; #10;
    end
end
endmodule