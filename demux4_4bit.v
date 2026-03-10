module demux4_4bit(
    input [3:0] in,
    input [1:0] sel,
    input enable,
    output [3:0] local_lib,
    output [3:0] fire,
    output [3:0] school,
    output [3:0] rib
);

assign local_lib = (enable && sel == 2'b00) ? in : 4'b0000;
assign fire      = (enable && sel == 2'b01) ? in : 4'b0000;
assign school    = (enable && sel == 2'b10) ? in : 4'b0000;
assign rib       = (enable && sel == 2'b11) ? in : 4'b0000;

endmodule
