module f(input [32:1] R, input [48:1] K, output [32:1] OUT);
  wire [48:1] R_E;
  E E_inst(R, R_E);

  wire [48:1] T = R_E ^ K;

  wire [6:1] S1_in, S2_in, S3_in, S4_in, S5_in, S6_in, S7_in, S8_in;
  assign {S1_in, S2_in, S3_in, S4_in, S5_in, S6_in, S7_in, S8_in} = T;

  wire [4:1] S1_out, S2_out, S3_out, S4_out, S5_out, S6_out, S7_out, S8_out;
  S1 S1_inst(S1_out, S1_in);
  S2 S2_inst(S2_out, S2_in);
  S3 S3_inst(S3_out, S3_in);
  S4 S4_inst(S4_out, S4_in);
  S5 S5_inst(S5_out, S5_in);
  S6 S6_inst(S6_out, S6_in);
  S7 S7_inst(S7_out, S7_in);
  S8 S8_inst(S8_out, S8_in);

  wire [32:1] S_out = {S1_out, S2_out, S3_out, S4_out, S5_out, S6_out, S7_out, S8_out};
  P P_inst(S_out, OUT);
endmodule