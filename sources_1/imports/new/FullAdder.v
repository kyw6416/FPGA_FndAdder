`timescale 1ns / 1ps

module FullAdder(
    input i_a, i_b, i_c,

    output o_sum, o_carry
    );

    wire w_sum_A, w_carry_A, w_carry_B;

    HalfAdder HA0(
    .i_a(i_a),              // .매개변수(입력값)
    .i_b(i_b),
    .o_sum(w_sum_A),          // 선으로 연결  
    .o_carry(w_carry_A)
    );

    HalfAdder HA1(
    .i_a(w_sum_A),
    .i_b(i_c),
    .o_sum(o_sum),
    .o_carry(w_carry_B)
    );

    assign o_carry = w_carry_A | w_carry_B;
endmodule
