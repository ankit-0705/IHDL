module demux(
    input i,
    input s0,s1,
    output o0,o1,o2,o3
);

    assign o0 = i & ~s1 & ~s0; 
    assign o1 = i & ~s1 & s0; 
    assign o2 = i & s1 & ~s0; 
    assign o3 = i & s1 & s0;
endmodule 