`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 20:06:27
// Design Name: 
// Module Name: tb_alubit
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


module tb_alubit;

logic [15:0] A;
logic [15:0] B;
logic [2:0] opcode;

logic [15:0] result;
logic carry;
logic zero;

alubit dut(
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry(carry),
    .zero(zero)
);

initial begin

    A = 16'd10;
    B = 16'd5;

    opcode = 3'b000; #10;
    opcode = 3'b001; #10;
    opcode = 3'b010; #10;
    opcode = 3'b011; #10;
    opcode = 3'b100; #10;
    opcode = 3'b101; #10;
    opcode = 3'b110; #10;
    opcode = 3'b111; #10;

    A = 16'hFFFF;
    B = 16'h0001;
    opcode = 3'b000; #10;

    A = 16'd5;
    B = 16'd5;
    opcode = 3'b001; #10;

    A = 16'd4;
    B = 16'd8;
    opcode = 3'b111; #10;

    $finish;

end

endmodule