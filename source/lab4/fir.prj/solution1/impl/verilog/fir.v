// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.702000,HLS_SYN_LAT=62,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=267,HLS_SYN_LUT=287,HLS_VERSION=2018_2}" *)

module fir (
        ap_clk,
        ap_rst_n,
        s_axi_fir_io_AWVALID,
        s_axi_fir_io_AWREADY,
        s_axi_fir_io_AWADDR,
        s_axi_fir_io_WVALID,
        s_axi_fir_io_WREADY,
        s_axi_fir_io_WDATA,
        s_axi_fir_io_WSTRB,
        s_axi_fir_io_ARVALID,
        s_axi_fir_io_ARREADY,
        s_axi_fir_io_ARADDR,
        s_axi_fir_io_RVALID,
        s_axi_fir_io_RREADY,
        s_axi_fir_io_RDATA,
        s_axi_fir_io_RRESP,
        s_axi_fir_io_BVALID,
        s_axi_fir_io_BREADY,
        s_axi_fir_io_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_pp0_stage0 = 5'd8;
parameter    ap_ST_fsm_state7 = 5'd16;
parameter    C_S_AXI_FIR_IO_DATA_WIDTH = 32;
parameter    C_S_AXI_FIR_IO_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_FIR_IO_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_fir_io_AWVALID;
output   s_axi_fir_io_AWREADY;
input  [C_S_AXI_FIR_IO_ADDR_WIDTH - 1:0] s_axi_fir_io_AWADDR;
input   s_axi_fir_io_WVALID;
output   s_axi_fir_io_WREADY;
input  [C_S_AXI_FIR_IO_DATA_WIDTH - 1:0] s_axi_fir_io_WDATA;
input  [C_S_AXI_FIR_IO_WSTRB_WIDTH - 1:0] s_axi_fir_io_WSTRB;
input   s_axi_fir_io_ARVALID;
output   s_axi_fir_io_ARREADY;
input  [C_S_AXI_FIR_IO_ADDR_WIDTH - 1:0] s_axi_fir_io_ARADDR;
output   s_axi_fir_io_RVALID;
input   s_axi_fir_io_RREADY;
output  [C_S_AXI_FIR_IO_DATA_WIDTH - 1:0] s_axi_fir_io_RDATA;
output  [1:0] s_axi_fir_io_RRESP;
output   s_axi_fir_io_BVALID;
input   s_axi_fir_io_BREADY;
output  [1:0] s_axi_fir_io_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [15:0] y;
reg    y_ap_vld;
wire   [15:0] x;
reg   [5:0] shift_reg_address0;
reg    shift_reg_ce0;
wire  signed [15:0] shift_reg_q0;
reg   [5:0] shift_reg_address1;
reg    shift_reg_ce1;
reg    shift_reg_we1;
reg   [15:0] shift_reg_d1;
wire   [5:0] c_address0;
reg    c_ce0;
wire   [15:0] c_q0;
reg   [36:0] acc1_reg_120;
reg   [5:0] i_reg_130;
wire  signed [25:0] acc_fu_193_p2;
reg  signed [25:0] acc_reg_216;
wire    ap_CS_fsm_state2;
reg  signed [15:0] x_read_reg_221;
wire    ap_CS_fsm_state3;
wire  signed [36:0] acc_cast_fu_145_p1;
wire   [0:0] tmp_3_fu_148_p2;
reg   [0:0] tmp_3_reg_232;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state6_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_3_reg_232_pp0_iter1_reg;
wire   [5:0] i_1_fu_154_p2;
reg   [5:0] i_1_reg_236;
reg    ap_enable_reg_pp0_iter0;
wire   [63:0] tmp_6_fu_165_p1;
reg   [63:0] tmp_6_reg_246;
reg  signed [15:0] shift_reg_load_1_reg_256;
reg    ap_enable_reg_pp0_iter1;
reg  signed [15:0] c_load_reg_261;
wire  signed [36:0] grp_fu_199_p3;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
reg   [5:0] ap_phi_mux_i_phi_fu_134_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_s_fu_160_p1;
wire    ap_CS_fsm_state7;
wire  signed [30:0] grp_fu_207_p3;
wire  signed [9:0] acc_fu_193_p1;
wire  signed [9:0] grp_fu_207_p0;
wire   [30:0] grp_fu_207_p2;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

fir_shift_reg #(
    .DataWidth( 16 ),
    .AddressRange( 58 ),
    .AddressWidth( 6 ))
shift_reg_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(shift_reg_address0),
    .ce0(shift_reg_ce0),
    .q0(shift_reg_q0),
    .address1(shift_reg_address1),
    .ce1(shift_reg_ce1),
    .we1(shift_reg_we1),
    .d1(shift_reg_d1)
);

fir_c #(
    .DataWidth( 16 ),
    .AddressRange( 59 ),
    .AddressWidth( 6 ))
c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c_address0),
    .ce0(c_ce0),
    .q0(c_q0)
);

fir_fir_io_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_FIR_IO_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_FIR_IO_DATA_WIDTH ))
fir_fir_io_s_axi_U(
    .AWVALID(s_axi_fir_io_AWVALID),
    .AWREADY(s_axi_fir_io_AWREADY),
    .AWADDR(s_axi_fir_io_AWADDR),
    .WVALID(s_axi_fir_io_WVALID),
    .WREADY(s_axi_fir_io_WREADY),
    .WDATA(s_axi_fir_io_WDATA),
    .WSTRB(s_axi_fir_io_WSTRB),
    .ARVALID(s_axi_fir_io_ARVALID),
    .ARREADY(s_axi_fir_io_ARREADY),
    .ARADDR(s_axi_fir_io_ARADDR),
    .RVALID(s_axi_fir_io_RVALID),
    .RREADY(s_axi_fir_io_RREADY),
    .RDATA(s_axi_fir_io_RDATA),
    .RRESP(s_axi_fir_io_RRESP),
    .BVALID(s_axi_fir_io_BVALID),
    .BREADY(s_axi_fir_io_BREADY),
    .BRESP(s_axi_fir_io_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .y(y),
    .y_ap_vld(y_ap_vld),
    .x(x)
);

fir_mul_mul_16s_1bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 26 ))
fir_mul_mul_16s_1bkb_U1(
    .din0(shift_reg_q0),
    .din1(acc_fu_193_p1),
    .dout(acc_fu_193_p2)
);

fir_mac_muladd_16cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 37 ),
    .dout_WIDTH( 37 ))
fir_mac_muladd_16cud_U2(
    .din0(shift_reg_load_1_reg_256),
    .din1(c_load_reg_261),
    .din2(acc1_reg_120),
    .dout(grp_fu_199_p3)
);

fir_mac_muladd_10dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 31 ),
    .dout_WIDTH( 31 ))
fir_mac_muladd_10dEe_U3(
    .din0(grp_fu_207_p0),
    .din1(x_read_reg_221),
    .din2(grp_fu_207_p2),
    .dout(grp_fu_207_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state4)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state4);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (tmp_3_reg_232_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc1_reg_120 <= grp_fu_199_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        acc1_reg_120 <= acc_cast_fu_145_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_232 == 1'd0))) begin
        i_reg_130 <= i_1_reg_236;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_130 <= 6'd57;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_reg_216 <= acc_fu_193_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_232 == 1'd0))) begin
        c_load_reg_261 <= c_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_fu_148_p2 == 1'd0))) begin
        i_1_reg_236 <= i_1_fu_154_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_232 == 1'd0))) begin
        shift_reg_load_1_reg_256 <= shift_reg_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_3_reg_232 <= tmp_3_fu_148_p2;
        tmp_3_reg_232_pp0_iter1_reg <= tmp_3_reg_232;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_fu_148_p2 == 1'd0))) begin
        tmp_6_reg_246[5 : 0] <= tmp_6_fu_165_p1[5 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        x_read_reg_221 <= x;
    end
end

always @ (*) begin
    if ((tmp_3_fu_148_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (tmp_3_reg_232 == 1'd0))) begin
        ap_phi_mux_i_phi_fu_134_p4 = i_1_reg_236;
    end else begin
        ap_phi_mux_i_phi_fu_134_p4 = i_reg_130;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        shift_reg_address0 = tmp_s_fu_160_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        shift_reg_address0 = 6'd57;
    end else begin
        shift_reg_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        shift_reg_address1 = 6'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        shift_reg_address1 = tmp_6_reg_246;
    end else begin
        shift_reg_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        shift_reg_ce0 = 1'b1;
    end else begin
        shift_reg_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        shift_reg_ce1 = 1'b1;
    end else begin
        shift_reg_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        shift_reg_d1 = x_read_reg_221;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        shift_reg_d1 = shift_reg_q0;
    end else begin
        shift_reg_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_232 == 1'd0)))) begin
        shift_reg_we1 = 1'b1;
    end else begin
        shift_reg_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (tmp_3_fu_148_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (tmp_3_fu_148_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign acc_cast_fu_145_p1 = acc_reg_216;

assign acc_fu_193_p1 = 26'd67108486;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign c_address0 = tmp_6_fu_165_p1;

assign grp_fu_207_p0 = 26'd67108486;

assign grp_fu_207_p2 = acc1_reg_120[30:0];

assign i_1_fu_154_p2 = ($signed(ap_phi_mux_i_phi_fu_134_p4) + $signed(6'd63));

assign tmp_3_fu_148_p2 = ((ap_phi_mux_i_phi_fu_134_p4 == 6'd0) ? 1'b1 : 1'b0);

assign tmp_6_fu_165_p1 = ap_phi_mux_i_phi_fu_134_p4;

assign tmp_s_fu_160_p1 = i_1_fu_154_p2;

assign y = {{grp_fu_207_p3[30:15]}};

always @ (posedge ap_clk) begin
    tmp_6_reg_246[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //fir
