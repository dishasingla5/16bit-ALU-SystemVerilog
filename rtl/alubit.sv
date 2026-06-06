`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 20:05:56
// Design Name: 
// Module Name: alubit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module alubit(
    input  logic [15:0] A,
    input  logic [15:0] B,
    input  logic [2:0] opcode,

    output logic [15:0] result,
    output logic carry,
    output logic zero
);

always_comb begin
    carry = 0;

    case(opcode)

        3'b000: {carry, result} = A + B;                 // ADD

        3'b001: {carry, result} = A - B;                 // SUB

        3'b010: result = A & B;                          // AND

        3'b011: result = A | B;                          // OR

        3'b100: result = A ^ B;                          // XOR

        3'b101: result = A << 1;                         // LEFT SHIFT

        3'b110: result = A >> 1;                         // RIGHT SHIFT

        3'b111: result = (A > B) ? 16'd1 : 16'd0;       // COMPARE

        default: result = 16'd0;

    endcase
end

assign zero = (result == 16'd0);

endmodule