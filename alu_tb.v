module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [1:0] sel;

wire [3:0] Y;

alu uut(
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y)
);

initial begin

    A = 4'b0011;
    B = 4'b0001;

    $monitor("sel=%b Y=%d", sel, Y);

    sel = 2'b00;
    #10;

    sel = 2'b01;
    #10;

    sel = 2'b10;
    #10;

    sel = 2'b11;
    #10;

end

endmodule