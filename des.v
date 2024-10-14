module des(input [64:1] in, input [64:1] key, output [64:1] out);
  wire [64:1] in_ip;
  IP ip_inst(in, in_ip);

  wire [32:1] l [0:16];
  wire [32:1] r [0:16];
  wire [32:1] f_val [1:16];
  assign {l[0], r[0]} = in_ip;

  wire [48:1] k [1:16];
  KS ks_inst(key, k[1], k[2], k[3], k[4], k[5], k[6], k[7], k[8], k[9],
                  k[10], k[11], k[12], k[13], k[14], k[15], k[16]);

  genvar i;
  generate
    for (i = 1; i <= 16; i = i + 1) begin : blk
      assign l[i] = r[i - 1];
      f f_inst(r[i - 1], k[i], f_val[i]);
      assign r[i] = l[i - 1] ^ f_val[i];
    end
  endgenerate

  IP_inv ip_inv_inst({r[16], l[16]}, out);
endmodule
