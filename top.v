module top(
    input [15:0] sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR,
    input btnC,
    output [15:0] led
);

wire [1:0] mux_sel;
wire [1:0] demux_sel;
wire [3:0] internet_line;

wire [3:0] local_lib;
wire [3:0] fire;
wire [3:0] school;
wire [3:0] rib;

// Combine buttons into selector signals
assign mux_sel   = {btnU, btnL};
assign demux_sel = {btnR, btnD};

// Multiplexer
mux4_4bit my_mux(
    .ceo(sw[3:0]),
    .you(sw[7:4]),
    .fred(sw[11:8]),
    .jill(sw[15:12]),
    .sel(mux_sel),
    .enable(btnC),
    .y(internet_line)
);

// Demultiplexer
demux4_4bit my_demux(
    .in(internet_line),
    .sel(demux_sel),
    .enable(btnC),
    .local_lib(local_lib),
    .fire(fire),
    .school(school),
    .rib(rib)
);

// Connect to LEDs
assign led[3:0]   = local_lib;
assign led[7:4]   = fire;
assign led[11:8]  = school;
assign led[15:12] = rib;

endmodule
