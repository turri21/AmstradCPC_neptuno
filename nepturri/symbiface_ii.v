////////////////////////////////////////////////////////////////////////////////
//
//  SYMBiFACE II RTC & IDE interface (mouse already in symbiface_mouse)
//  (C) 2022 Gyorgy Szombathelyi
//
//  This program is free software; you can redistribute it and/or modify it
//  under the terms of the GNU General Public License as published by the Free
//  Software Foundation; either version 2 of the License, or (at your option)
//  any later version.
//
//  This program is distributed in the hope that it will be useful, but WITHOUT
//  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
//  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
//  more details.
//
//  You should have received a copy of the GNU General Public License along
//  with this program; if not, write to the Free Software Foundation, Inc.,
//  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
//
////////////////////////////////////////////////////////////////////////////////

module symbiface_II
(
	input        clk_sys,
	input        reset,
	input        ena,
	input [63:0] rtc, //sec, min, hour, date, month, year, day (BCD)

	// CPC expansion port
	input        io_rd,
	input        io_wr,
	input [15:0] addr,
	input  [7:0] din,
	output [7:0] dout,

	// IDE interface
	output       ide_cs,
	output [2:0] ide_addr,
	input [15:0] ide_dout,
	output[15:0] ide_din
);

wire        sel = ena && addr[15:5] == {8'hFD, 3'b000};

assign      dout = (sel && io_rd && addr[4:0] == 5'b10100) ? rtc_dout :
                   (sel && io_rd && !addr[4]) ? internal_ide_dout : 8'hff;

///// IDE /////
reg         io_rd_old;
reg         io_wr_old;
reg         word;
reg   [7:0] data_latch;
wire        data_ready = addr[4:0] != 5'h8 || (io_rd & !word) || (io_wr & word);
wire  [7:0] internal_ide_dout = word ? data_latch : ide_dout[15:8];
assign      ide_addr = addr[4:0] == 5'd6 ? 3'd7 : addr[2:0];
assign      ide_cs = sel & (io_rd | io_wr) & data_ready & (addr[4:3] == 2'b01 || addr[4:0] == 5'd6);
assign      ide_din = {ide_addr == 3'd0 ? data_latch : din, din};

always @(posedge clk_sys) begin
	io_rd_old <= io_rd;
	io_wr_old <= io_wr;
	if (reset) begin
		word <= 0;
	end else if (sel && addr[4:0] == 5'd8) begin
		if ((~io_rd & io_rd_old) | (~io_wr & io_wr_old))
			word <= ~word;
		if (!word & (io_rd | io_wr))
			data_latch <= io_wr ? din : ide_dout[7:0];
	end
end

///// RTC /////
reg   [5:0] rtc_reg;
reg   [7:0] rtc_dout;
reg   [7:0] rtc_regs[64];
reg         bcdhex;

function [7:0] bcd2bin;
        input [7:0] bcd;
        begin
                bcd2bin = 4'd10*bcd[7:4] + bcd[3:0];
        end
endfunction

always @(*) begin
	case (rtc_reg)
		6'h00: rtc_dout = bcdhex ? bcd2bin(rtc[7:0]) : rtc[7:0];   // sec
		6'h02: rtc_dout = bcdhex ? bcd2bin(rtc[15:8]) : rtc[15:8];  // min
		6'h04: rtc_dout = bcdhex ? bcd2bin(rtc[23:16]) : rtc[23:16]; // hour
		6'h06: rtc_dout = bcdhex ? bcd2bin(rtc[55:48]) : rtc[55:48]; // day
		6'h07: rtc_dout = bcdhex ? bcd2bin(rtc[31:24]) : rtc[31:24]; // date
		6'h08: rtc_dout = bcdhex ? bcd2bin(rtc[39:32]) : rtc[39:32]; // month
		6'h09: rtc_dout = bcdhex ? bcd2bin(rtc[47:40]) : rtc[47:40]; // year
		default: rtc_dout = rtc_regs[rtc_reg];
	endcase
end

always @(posedge clk_sys) begin
	if (reset) begin
		rtc_reg <= 0;
		bcdhex <= 0;
	end else if (sel && io_wr && addr[4:0] == 5'b10101) begin
		rtc_reg <= din[5:0];
	end else if (sel && io_wr && addr[4:0] == 5'b10100) begin
		rtc_regs[rtc_reg] <= din;
		if(rtc_reg == 6'h0b) bcdhex <= din[2];
	end
end

endmodule
