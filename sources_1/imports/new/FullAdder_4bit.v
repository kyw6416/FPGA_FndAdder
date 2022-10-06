`timescale 1ns / 1ps

module FullAdder_4bit(
    //input i_a0, i_b0, i_a1, i_b1, i_a2, i_b2, i_a3, i_b3, i_carry_in,
    input [3:0] i_a, i_b,       // i_a[0], i_a[1], i_a[2] ...
    input i_carry_in,
    output [3:0] o_sum,
    output o_carry
    );

    wire w_carry_0, w_carry_1, w_carry_2;

    FullAdder FA0(
    .i_a(i_a[0]),
    .i_b(i_b[0]),
    .i_c(i_carry_in),
    .o_sum(o_sum[0]),
    .o_carry(w_carry_0)
    );

    FullAdder FA1(
    .i_a(i_a[1]),
    .i_b(i_b[1]),
    .i_c(w_carry_0),
    .o_sum(o_sum[1]),
    .o_carry(w_carry_1)
    );

    FullAdder FA2(
    .i_a(i_a[2]),
    .i_b(i_b[2]),
    .i_c(w_carry_1),
    .o_sum(o_sum[2]),
    .o_carry(w_carry_2)
    );

    FullAdder FA3(
    .i_a(i_a[3]),
    .i_b(i_b[3]),
    .i_c(w_carry_2),
    .o_sum(o_sum[3]),
    .o_carry(o_carry)
    );

endmodule


