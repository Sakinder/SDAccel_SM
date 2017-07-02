`timescale 1 ns / 1 ps
module startup_wrapper # (
) (
   // Flash Interface Pins
    output wire [3:0] flash_DQ_I,
    input wire [3:0]  flash_DQ_O,
    input wire [3:0]  flash_DQ_tri_ctrl,
    input wire      flash_CS_N,
    input wire      flash_CS_N_tri_ctrl,
    input wire      flash_clk,
    output wire     startup_eos);
   // STARTUPE3: STARTUP Block
   // Kintex UltraScale
   // Xilinx HDL Language Template, version 2014.4
   STARTUPE3 #(
    .PROG_USR("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
    .SIM_CCLK_FREQ(0.0)) // Set the Configuration Clock Frequency(ns) for simulation
   STARTUPE3_inst (
    .CFGCLK(),           // 1-bit output: Configuration main clock output
    .CFGMCLK(),          // 1-bit output: Configuration internal oscillator clock output
    .DI(flash_DQ_I[3:0]),// 4-bit output: Allow receiving on the D input pin
    .EOS(startup_eos),   // 1-bit output: Active-High output signal indicating the End Of Startup
    .PREQ(),             // 1-bit output: PROGRAM request to fabric output
    .DO(flash_DQ_O[3:0]),           // 4-bit input: Allows control of the D pin output
    .DTS(flash_DQ_tri_ctrl[3:0]),         // 4-bit input: Allows tristate of the D pin
    .FCSBO(flash_CS_N),       // 1-bit input: Contols the FCS_B pin for flash access
    .FCSBTS(flash_CS_N_tri_ctrl),     // 1-bit input: Tristate the FCS_B pin
    .GSR(1'b0),         // 1-bit input: Global Set/Reset input (GSR cannot be used for the port)
    .GTS(1'b0),         // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
    .KEYCLEARB(1'b1), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
    .PACK(1'b0),         // 1-bit input: PROGRAM acknowledge input
    .USRCCLKO(flash_clk),   // 1-bit input: User CCLK input
    .USRCCLKTS(1'b0), // 1-bit input: User CCLK 3-state enable input
    .USRDONEO(1'b0),   // 1-bit input: User DONE pin output control
    .USRDONETS(1'b0));  // 1-bit input: User DONE 3-state enable output
endmodule