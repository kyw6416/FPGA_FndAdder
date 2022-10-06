`timescale 1ns / 1ps

module FullAddersub_4bit(
    input [3:0] i_a, i_b,
    input i_mode,
    output [3:0] o_sum,
    output o_carry
    );

    wire [3:0] w_b;

    assign w_b = {4{i_mode}} ^ i_b;     // 4는 반복 수

   FullAdder_4bit AdderSub(
    .i_a(i_a),
    .i_b(w_b),
    .i_carry_in(i_mode),
    .o_sum(o_sum),
    .o_carry(o_carry)

    );

endmodule
