module decoder(
    input i0,i1,i2,
    output o0,o1,o2,o3,o4,o5,o6,o7
);

    assign o0 = ~i2 & ~i1 & ~i0;
    assign o1 = ~i2 & ~i1 & i0;
    assign o2 = ~i2 & i1 & ~i0;
    assign o3 = ~i2 & i1 & i0;
    assign o4 = i2 & ~i1 & ~i0;
    assign o5 = i2 & ~i1 & i0;
    assign o6 = i2 & i1 & ~i0;
    assign o7 = i2 & i1 & i0;

endmodule