`timescale 1ns / 1ps

module FND_Adder(
    input [3:0] i_a, i_b,
    input i_mode,
    output o_carry,

    input [1:0] i_DigitSelect,
    input i_en,
    output [3:0] o_digit,
    output [7:0] o_fndFont
    );

    reg [3:0] r_value;
    assign o_value = r_value;

    reg [3:0] r_sum;
    assign o_sum = r_sum;

    wire [3:0] w_ADDtoFND;
    assign w_ADDtoFND = r_sum;

    BCDtoFND fndDecoder(
    .i_DigitSelect(i_DigitSelect),
    .i_value(w_ADDtoFND),
    .i_en(i_en),
    .o_digit(o_digit),
    .o_fndFont(o_fndFont)
    );

    FullAddersub_4bit AdderSub(
    .i_a(i_a),
    .i_b(i_b),
    .i_mode(i_mode),
    .o_sum(w_ADDtoFND),
    .o_carry(o_carry)
    );

endmodule
