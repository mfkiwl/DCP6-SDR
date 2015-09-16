//
//											16 kW RAM for CPU
//
//							(C) Copyright 2010-2011 John B. Stephensen
//
// This Verilog source file and all explicitly and implicitly referenced files and all of their
// derivatives are licensed only for personal non-profit educational use in the Amateur Radio
// Service with the DCP-3 PCB and the license is not transferrable. The information is provided
// as-is for experimental purposes and the author does not warranty its freedom from defects or
// its suitability for any specific application.
//
// This module implements a 16,384 x 16-bit dual-port memory using 16 block RAMs.
//
module ram16kx16dp(
    input [13:0] aa,		// address input
    input [13:0] ab,
    input [15:0] dia,	// data input
    input [15:0] dib,
    output [15:0] doa,	// data output
    output [15:0] dob,
	 input cea,				// enable
	 input ceb,
    input wea,				// write enable
    input web,
    input clk,				// master clock and reset
    input rst
    );
// internal signals
wire [31:0] doa0,doa1,doa2,doa3,doa4,doa5,doa6,doa7,doa8,doa9,doa10,doa11,doa12,doa13,doa14,doa15;
wire [31:0] dob0,dob1,dob2,dob3,dob4,dob5,dob6,dob7,dob8,dob9,dob10,dob11,dob12,dob13,dob14,dob15;
// RAM
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("SR"),
	.RST_PRIORITY_B("SR"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram0 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[0]}),
	.DIPA(4'hF),
	.DOA(doa0),
	.DOPA(),
	.DIB({31'h00000000,dib[0]}),
	.DIPB(4'hF),
	.DOB(dob0),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram1 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[1]}),
	.DIPA(4'hF),
	.DOA(doa1),
	.DOPA(),
	.DIB({31'h00000000,dib[1]}),
	.DIPB(4'hF),
	.DOB(dob1),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram2 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[2]}),
	.DIPA(4'hF),
	.DOA(doa2),
	.DOPA(),
	.DIB({31'h00000000,dib[2]}),
	.DIPB(4'hF),
	.DOB(dob2),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram3 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[3]}),
	.DIPA(4'hF),
	.DOA(doa3),
	.DOPA(),
	.DIB({31'h00000000,dib[3]}),
	.DIPB(4'hF),
	.DOB(dob3),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram4 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[4]}),
	.DIPA(4'hF),
	.DOA(doa4),
	.DOPA(),
	.DIB({31'h00000000,dib[4]}),
	.DIPB(4'hF),
	.DOB(dob4),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram5 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[5]}),
	.DIPA(4'hF),
	.DOA(doa5),
	.DOPA(),
	.DIB({31'h00000000,dib[5]}),
	.DIPB(4'hF),
	.DOB(dob5),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram6 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[6]}),
	.DIPA(4'hF),
	.DOA(doa6),
	.DOPA(),
	.DIB({31'h00000000,dib[6]}),
	.DIPB(4'hF),
	.DOB(dob6),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram7 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[7]}),
	.DIPA(4'hF),
	.DOA(doa7),
	.DOPA(),
	.DIB({31'h00000000,dib[7]}),
	.DIPB(4'hF),
	.DOB(dob7),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram8 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[8]}),
	.DIPA(4'hF),
	.DOA(doa8),
	.DOPA(),
	.DIB({31'h00000000,dib[8]}),
	.DIPB(4'hF),
	.DOB(dob8),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram9 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[9]}),
	.DIPA(4'hF),
	.DOA(doa9),
	.DOPA(),
	.DIB({31'h00000000,dib[9]}),
	.DIPB(4'hF),
	.DOB(dob9),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram10 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[10]}),
	.DIPA(4'hF),
	.DOA(doa10),
	.DOPA(),
	.DIB({31'h00000000,dib[10]}),
	.DIPB(4'hF),
	.DOB(dob10),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram11 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[11]}),
	.DIPA(4'hF),
	.DOA(doa11),
	.DOPA(),
	.DIB({31'h00000000,dib[11]}),
	.DIPB(4'hF),
	.DOB(dob11),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram12 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[12]}),
	.DIPA(4'hF),
	.DOA(doa12),
	.DOPA(),
	.DIB({31'h00000000,dib[12]}),
	.DIPB(4'hF),
	.DOB(dob12),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram13 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[13]}),
	.DIPA(4'hF),
	.DOA(doa13),
	.DOPA(),
	.DIB({31'h00000000,dib[13]}),
	.DIPB(4'hF),
	.DOB(dob13),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram14 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[14]}),
	.DIPA(4'hF),
	.DOA(doa14),
	.DOPA(),
	.DIB({31'h00000000,dib[14]}),
	.DIPB(4'hF),
	.DOB(dob14),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
RAMB16BWER #(
	.DATA_WIDTH_A(1),
	.DATA_WIDTH_B(1),
	.DOA_REG(0),
	.DOB_REG(0),
	.EN_RSTRAM_A("TRUE"),
	.EN_RSTRAM_B("TRUE"),
	.INIT_A(1'b0),
	.INIT_B(1'b0),
	.INIT_FILE("NONE"),
	.RSTTYPE("SYNC"),
	.RST_PRIORITY_A("CE"),
	.RST_PRIORITY_B("CE"),
	.SRVAL_A(1'b0),
	.SRVAL_B(1'b0),
	.WRITE_MODE_A("READ_FIRST"),
	.WRITE_MODE_B("READ_FIRST")
	) ram15 (
	.ADDRA(aa),
	.ADDRB(ab),
	.DIA({31'h00000000,dia[15]}),
	.DIPA(4'hF),
	.DOA(doa15),
	.DOPA(),
	.DIB({31'h00000000,dib[15]}),
	.DIPB(4'hF),
	.DOB(dob15),
	.DOPB(),
	.CLKA(clk),
	.CLKB(clk),
	.WEA({wea,wea,wea,wea}),
	.WEB({web,web,web,web}),
	.ENA(cea),
	.ENB(ceb),
	.REGCEA(1'b1),
	.REGCEB(1'b1),
	.RSTA(rst),
	.RSTB(rst)
	);
// connect output
assign doa = {doa15[0],doa14[0],doa13[0],doa12[0],doa11[0],doa10[0],doa9[0],doa8[0],doa7[0],doa6[0],doa5[0],doa4[0],doa3[0],doa2[0],doa1[0],doa0[0]};
assign dob = {dob15[0],dob14[0],dob13[0],dob12[0],dob11[0],dob10[0],dob9[0],dob8[0],dob7[0],dob6[0],dob5[0],dob4[0],dob3[0],dob2[0],dob1[0],dob0[0]};
endmodule