`timescale 1 ns / 1 ps
module iob_static #
(
) (
  input wire  perst_n_in,
  output wire perst_n_out,
  input wire  init_calib_complete_in,
  output wire init_calib_complete_out,
  input wire  led_0_in,
  output wire led_0_out,
  input wire  emc_clk_in,
  output wire emc_clk_out,
  input wire  ss_o,
  input wire  ss_t,
  inout wire  ss,
  input wire [3:0] flash_DQ_I,
  output wire io0_i,
  input wire  io0_o,
  input wire  io0_t,
  inout wire  io0,
  output wire io1_i,
  input wire  io1_o,
  input wire  io1_t,
  inout wire  io1,
  output wire io2_i,
  input wire  io2_o,
  input wire  io2_t,
  inout wire  io2,
  output wire io3_i,
  input wire  io3_o,
  input wire  io3_t,
  inout wire  io3
);
  IBUF perst_n_ibuf (
    .O(perst_n_out), // 1-bit output: Buffer output
    .I(perst_n_in) // 1-bit input: Buffer input
  );
  OBUF led_0_obuf (
    .O(led_0_out), // 1-bit output: Buffer output (connect directly to top-level port)
    .I(led_0_in) // 1-bit input: Buffer input
  );
  OBUF init_calib_complete_obuf (
    .O(init_calib_complete_out), // 1-bit output: Buffer output (connect directly to top-level port)
    .I(init_calib_complete_in) // 1-bit input: Buffer input
  );
  wire emc_clk_int;
  IBUF emc_clk_ibuf (
    .O (emc_clk_int),
    .I (emc_clk_in)
  );
  BUFG emc_clk_bufg (
    .O (emc_clk_out),
    .I (emc_clk_int)
  );
   IOBUF ss_iobuf(
       .IO(ss),
       .I(ss_o),
       .O(ss_i),
       .T(ss_t)
       );
  IOBUF io0_iobuf(
      .IO(io0),
      .I(io0_o),
      .O(qspi1_io0_i),
      .T(io0_t)
      );
  IOBUF io1_iobuf(
      .IO(io1),
      .I(io1_o),
      .O(qspi1_io1_i),
      .T(io1_t)
      );
  IOBUF io2_iobuf(
      .IO(io2),
      .I(io2_o),
      .O(qspi1_io2_i),
      .T(io2_t)
      );
  IOBUF io3_iobuf(
      .IO(io3),
      .I(io3_o),
      .O(qspi1_io3_i),
      .T(io3_t)
      );
   assign io0_i = !ss_o ? qspi1_io0_i : flash_DQ_I[0];
   assign io1_i = !ss_o ? qspi1_io1_i : flash_DQ_I[1];
   assign io2_i = !ss_o ? qspi1_io2_i : flash_DQ_I[2];
   assign io3_i = !ss_o ? qspi1_io3_i : flash_DQ_I[3];
endmodule