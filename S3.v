`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 21:42:42
// Design Name: 
// Module Name: S3
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


module S3(
    output reg [1:4] out,
    input [1:6] in
    );
    always @* case (in)
    0 : out = 10;
    1 : out = 13;
    2 : out = 0;
    3 : out = 7;
    4 : out = 9;
    5 : out = 0;
    6 : out = 14;
    7 : out = 9;
    8 : out = 6;
    9 : out = 3;
    10 : out = 3;
    11 : out = 4;
    12 : out = 15;
    13 : out = 6;
    14 : out = 5;
    15 : out = 10;
    16 : out = 1;
    17 : out = 2;
    18 : out = 13;
    19 : out = 8;
    20 : out = 12;
    21 : out = 5;
    22 : out = 7;
    23 : out = 14;
    24 : out = 11;
    25 : out = 12;
    26 : out = 4;
    27 : out = 11;
    28 : out = 2;
    29 : out = 15;
    30 : out = 8;
    31 : out = 1;
    32 : out = 13;
    33 : out = 1;
    34 : out = 6;
    35 : out = 10;
    36 : out = 4;
    37 : out = 13;
    38 : out = 9;
    39 : out = 0;
    40 : out = 8;
    41 : out = 6;
    42 : out = 15;
    43 : out = 9;
    44 : out = 3;
    45 : out = 8;
    46 : out = 0;
    47 : out = 7;
    48 : out = 11;
    49 : out = 4;
    50 : out = 1;
    51 : out = 15;
    52 : out = 2;
    53 : out = 14;
    54 : out = 12;
    55 : out = 3;
    56 : out = 5;
    57 : out = 11;
    58 : out = 10;
    59 : out = 5;
    60 : out = 14;
    61 : out = 2;
    62 : out = 7;
    63 : out = 12;
  endcase
endmodule