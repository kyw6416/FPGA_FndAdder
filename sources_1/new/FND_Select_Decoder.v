`timescale 1ns / 1ps

// input, output wire 타입이 디폴트
// wire타입은 저장이 안 됨

module FND_Select_Decoder(
    input [1:0] i_DigitSelect,
    input i_en,
    output [3:0] o_digit
    );

    reg [3:0] r_digit;                           // reg는 메모리 기능

    assign o_digit = r_digit;                    // 메모리에 저장해 놓고 선에 연결

    always @(i_DigitSelect or i_en) begin        // 항상 (입력)안을 보고 있다
        if (i_en) begin                          // 1이면 항상 참 -> 동작X
            r_digit = 4'b1111;                   // 4비트 2진수 1111
        end
                                                 // if, case 문은 always 안에서만 사용 가능
        else begin                               // i_en = 0
            case (i_DigitSelect)                 // case (입력)
                2'h0 : r_digit = 4'b1110;        // 입력 : 출력
                2'h1 : r_digit = 4'b1101;        // 입력이 ~이면 출력 ~이다
                2'h2 : r_digit = 4'b1011;
                2'h3 : r_digit = 4'b0111;
            endcase
        end
    end
endmodule
