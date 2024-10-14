module KS_left_shift(input [5:1] level, input [28:1] in, output [28:1] out);
  assign out = (level == 1 || level == 2 || level == 9 || level == 16) ?
                {in[27:1], in[28]} : {in[26:1], in[28:27]};
endmodule