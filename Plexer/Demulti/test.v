module tb_demux;

reg i,s0,s1;
wire o0,o1,o2,o3;

demux uut(
    .i(i),.s0(s0),.s1(s1),
    .o0(o0),.o1(o1),.o2(o2),.o3(o3)
);

initial begin
    $dumpfile("demux.vcd");
    $dumpvars(0,tb_demux);

    i=0;
    for (integer j=0;j<4;j=j+1) begin
        {s1,s0}=j; #10;
    end
end
endmodule