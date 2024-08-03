// Modelling a shift register with vectors

module d_ff8(clk, din, qout);

    input clk;
    input [7:0] din;
    output reg [7:0] qout;

    always @(posedge clk) begin

        assign qout = din;

    end

endmodule

module top_module(clk, din, sel, qout);

    input clk;
    input [7:0] din;
    input [1:0] sel;
    output [7:0] qout;

    wire [7:0] w1, w2, w3;

    d_ff8 dff1(clk, din, w1);
    d_ff8 dff2(clk, w1, w2);
    d_ff8 dff3(clk, w2, w3);

    always @(*) begin

        case(sel)

            2'b00: qout = din;
            2'b01: qout = w1;
            2'b10: qout = w2;
            2'b11: qout = w3;

        endcase

    end

endmodule