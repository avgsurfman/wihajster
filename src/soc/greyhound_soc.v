module obi_mux_61AC8_B2049 (
	clk_i,
	rst_ni,
	testmode_i,
	sbr_ports_req_i,
	sbr_ports_rsp_o,
	mgr_port_req_o,
	mgr_port_rsp_i
);
	parameter [295:0] sbr_port_a_chan_t_soc_pkg_SbrObiCfg = 0;
	parameter [295:0] sbr_port_obi_req_t_soc_pkg_SbrObiCfg = 0;
	parameter [295:0] sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg = 0;
	parameter [295:0] sbr_port_r_chan_t_soc_pkg_SbrObiCfg = 0;
	reg _sv2v_0;
	localparam [195:0] obi_pkg_ObiMinimalOptionalConfig = 196'h0000000000000000000000000000000000000000000000000;
	function automatic [295:0] obi_pkg_obi_default_cfg;
		input reg [31:0] AddrWidth;
		input reg [31:0] DataWidth;
		input reg [31:0] IdWidth;
		input reg [195:0] OptionalCfg;
		obi_pkg_obi_default_cfg = {2'b00, AddrWidth, DataWidth, IdWidth, 2'b01, OptionalCfg};
	endfunction
	localparam [295:0] obi_pkg_ObiDefaultConfig = obi_pkg_obi_default_cfg(32, 32, 1, obi_pkg_ObiMinimalOptionalConfig);
	parameter [295:0] SbrPortObiCfg = obi_pkg_ObiDefaultConfig;
	parameter [295:0] MgrPortObiCfg = SbrPortObiCfg;
	parameter [31:0] NumSbrPorts = 32'd0;
	parameter [31:0] NumMaxTrans = 32'd0;
	parameter [0:0] UseIdForRouting = 1'b0;
	input wire clk_i;
	input wire rst_ni;
	input wire testmode_i;
	input wire [((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? (NumSbrPorts * (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1)) - 1 : (NumSbrPorts * (1 - (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) - 1)):((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)] sbr_ports_req_i;
	output wire [(((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (NumSbrPorts * ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2)) - 1 : (NumSbrPorts * (1 - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0)):(((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)] sbr_ports_rsp_o;
	output reg [((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] mgr_port_req_o;
	input wire [(((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] mgr_port_rsp_i;
	generate
		if (NumSbrPorts <= 1) begin : gen_NumSbrPorts_err
			$fatal(1, "unimplemented");
		end
	endgenerate
	localparam [31:0] RequiredExtraIdWidth = $clog2(NumSbrPorts);
	wire [NumSbrPorts - 1:0] sbr_ports_req;
	wire [NumSbrPorts - 1:0] sbr_ports_gnt;
	wire [((((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (NumSbrPorts * (((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) - 1 : (NumSbrPorts * (1 - (((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))) + (((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) - 1)):((((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)] sbr_ports_a;
	genvar _gv_i_1;
	generate
		for (_gv_i_1 = 0; _gv_i_1 < NumSbrPorts; _gv_i_1 = _gv_i_1 + 1) begin : gen_sbr_assign
			localparam i = _gv_i_1;
			assign sbr_ports_req[i] = sbr_ports_req_i[(i * ((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)];
			assign sbr_ports_a[((((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + (i * ((((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))] = sbr_ports_req_i[((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? (i * ((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)) : (((i * ((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 1 ? ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : 2 - (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) - 1)-:((((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 1 ? ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : 2 - (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
			assign sbr_ports_rsp_o[(i * (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 1 : (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0)] = sbr_ports_gnt[i];
		end
	endgenerate
	wire [((((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0:0] mgr_port_a_in_sbr;
	wire [RequiredExtraIdWidth - 1:0] selected_id;
	wire [RequiredExtraIdWidth - 1:0] response_id;
	wire mgr_port_req;
	wire fifo_full;
	wire fifo_pop;
	localparam [31:0] sv2v_uu_i_rr_arb_NumIn = NumSbrPorts;
	localparam [31:0] sv2v_uu_i_rr_arb_IdxWidth = (sv2v_uu_i_rr_arb_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_rr_arb_NumIn)) : 32'd1);
	localparam [sv2v_uu_i_rr_arb_IdxWidth - 1:0] sv2v_uu_i_rr_arb_ext_rr_i_0 = 1'sb0;
	rr_arb_tree_DB046_EA048 #(
		.DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg(sbr_port_a_chan_t_soc_pkg_SbrObiCfg),
		.NumIn(NumSbrPorts),
		.AxiVldRdy(1'b1),
		.LockIn(1'b1)
	) i_rr_arb(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.rr_i(sv2v_uu_i_rr_arb_ext_rr_i_0),
		.req_i(sbr_ports_req),
		.gnt_o(sbr_ports_gnt),
		.data_i(sbr_ports_a),
		.req_o(mgr_port_req),
		.gnt_i(mgr_port_rsp_i[1] && ~fifo_full),
		.data_o(mgr_port_a_in_sbr),
		.idx_o(selected_id)
	);
	wire [1:1] sv2v_tmp_C04A4;
	assign sv2v_tmp_C04A4 = mgr_port_req && ~fifo_full;
	always @(*) mgr_port_req_o[0] = sv2v_tmp_C04A4;
	generate
		if ((MgrPortObiCfg[229-:32] > 0) && (MgrPortObiCfg[229-:32] >= (SbrPortObiCfg[229-:32] + RequiredExtraIdWidth))) begin : gen_aid_extend
			always @(*) begin
				if (_sv2v_0)
					;
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))] = 1'sb0;
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)] = mgr_port_a_in_sbr[sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))))-:((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))] = mgr_port_a_in_sbr[1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)))];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) >= (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) >= (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)] = mgr_port_a_in_sbr[(sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))-:(((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))) >= (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) >= (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) ? ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) >= (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) ? ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)] = mgr_port_a_in_sbr[sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)-:((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)) >= (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1) ? ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)) - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))] = mgr_port_a_in_sbr[sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0-:((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)] = mgr_port_a_in_sbr[0];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] - 1) - ((SbrPortObiCfg[229-:32] + RequiredExtraIdWidth) - 1)))) : 1 + (((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] - 1) - ((SbrPortObiCfg[229-:32] + RequiredExtraIdWidth) - 1)) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))):((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] - 1))) : 1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] - 1) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))] = {selected_id, mgr_port_a_in_sbr[sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0-:((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))]};
			end
		end
		else begin : gen_aid_consistent
			always @(*) begin
				if (_sv2v_0)
					;
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))] = 1'sb0;
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)] = mgr_port_a_in_sbr[sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))))-:((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))] = mgr_port_a_in_sbr[1 + ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)))];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) >= (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) >= (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)] = mgr_port_a_in_sbr[(sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))-:(((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))) >= (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) >= (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) ? ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) >= (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) ? ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)] = mgr_port_a_in_sbr[sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)-:((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)) >= (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1) ? ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0)) - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) + ((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))] = mgr_port_a_in_sbr[sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0-:((sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0))];
				mgr_port_req_o[((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((sbr_port_obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + sbr_port_obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)] = mgr_port_a_in_sbr[0];
			end
		end
	endgenerate
	wire [SbrPortObiCfg[229-:32] - 1:0] rsp_rid;
	generate
		if (UseIdForRouting) begin : gen_id_assign
			if (!((MgrPortObiCfg[229-:32] > 0) && (MgrPortObiCfg[229-:32] >= (SbrPortObiCfg[229-:32] + RequiredExtraIdWidth)))) begin : genblk1
				$fatal(1, "UseIdForRouting requires MgrPort IdWidth to increase with log2(NumSbrPorts)");
			end
			assign {response_id, rsp_rid} = mgr_port_rsp_i[(((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1) - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] - 1) - ((SbrPortObiCfg[229-:32] + RequiredExtraIdWidth) - 1)))) : 2 + (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] - 1) - ((SbrPortObiCfg[229-:32] + RequiredExtraIdWidth) - 1)) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))):(((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] - 1))) : 2 + ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] - 1) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)))];
			assign fifo_full = 1'b0;
		end
		else begin : gen_no_id_assign
			localparam [0:0] sv2v_uu_i_fifo_ext_flush_i_0 = 1'sb0;
			fifo_v3 #(
				.FALL_THROUGH(1'b0),
				.DATA_WIDTH(RequiredExtraIdWidth),
				.DEPTH(NumMaxTrans)
			) i_fifo(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(sv2v_uu_i_fifo_ext_flush_i_0),
				.testmode_i(testmode_i),
				.full_o(fifo_full),
				.empty_o(),
				.usage_o(),
				.data_i(selected_id),
				.push_i(mgr_port_req_o[0] && mgr_port_rsp_i[1]),
				.data_o(response_id),
				.pop_i(fifo_pop)
			);
		end
	endgenerate
	reg [NumSbrPorts - 1:0] sbr_rsp_rvalid;
	reg [(((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (NumSbrPorts * ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2)) - 1 : (NumSbrPorts * (1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))) + ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)):(((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? 0 : (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)] sbr_rsp_r;
	always @(*) begin : proc_sbr_rsp
		if (_sv2v_0)
			;
		begin : sv2v_autoblock_1
			reg signed [31:0] i;
			for (i = 0; i < NumSbrPorts; i = i + 1)
				begin
					sbr_rsp_r[(((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? 0 : (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) + (i * (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)))+:(((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))] = 1'sb0;
					sbr_rsp_rvalid[i] = 1'sb0;
				end
		end
		sbr_rsp_r[(((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (response_id * (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))) + (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1) : ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))) : (((response_id * (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))) + (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1) : ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) + ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)] = mgr_port_rsp_i[(((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)];
		sbr_rsp_r[(((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (response_id * (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))) + (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1 : ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1)) : (((response_id * (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))) + (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1 : ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32] + 1))] = mgr_port_rsp_i[(((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))];
		sbr_rsp_r[(response_id * (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))) + (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? 1 : (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)] = mgr_port_rsp_i[(((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
		sbr_rsp_r[(response_id * (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))) + (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? 0 : (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)] = mgr_port_rsp_i[(((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)];
		sbr_rsp_rvalid[response_id] = mgr_port_rsp_i[0];
	end
	genvar _gv_i_2;
	generate
		for (_gv_i_2 = 0; _gv_i_2 < NumSbrPorts; _gv_i_2 = _gv_i_2 + 1) begin : gen_sbr_rsp_assign
			localparam i = _gv_i_2;
			assign sbr_ports_rsp_o[(((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (i * (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1 : ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)) : (((i * (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1 : ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 2 ? (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0 : 3 - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) - 1)-:(((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 2 ? (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0 : 3 - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = sbr_rsp_r[(((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? 0 : (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) + (i * (((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)))+:(((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_r_chan_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_r_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1))];
			assign sbr_ports_rsp_o[(i * (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)] = sbr_rsp_rvalid[i];
		end
	endgenerate
	assign fifo_pop = mgr_port_rsp_i[0];
	initial _sv2v_0 = 0;
endmodule
module obi_demux_02C7A_C1843 (
	clk_i,
	rst_ni,
	sbr_port_select_i,
	sbr_port_req_i,
	sbr_port_rsp_o,
	mgr_ports_req_o,
	mgr_ports_rsp_i
);
	parameter [295:0] obi_req_t_soc_pkg_SbrObiCfg = 0;
	parameter [295:0] obi_rsp_t_soc_pkg_SbrObiCfg = 0;
	reg _sv2v_0;
	localparam [195:0] obi_pkg_ObiMinimalOptionalConfig = 196'h0000000000000000000000000000000000000000000000000;
	function automatic [295:0] obi_pkg_obi_default_cfg;
		input reg [31:0] AddrWidth;
		input reg [31:0] DataWidth;
		input reg [31:0] IdWidth;
		input reg [195:0] OptionalCfg;
		obi_pkg_obi_default_cfg = {2'b00, AddrWidth, DataWidth, IdWidth, 2'b01, OptionalCfg};
	endfunction
	localparam [295:0] obi_pkg_ObiDefaultConfig = obi_pkg_obi_default_cfg(32, 32, 1, obi_pkg_ObiMinimalOptionalConfig);
	parameter [295:0] ObiCfg = obi_pkg_ObiDefaultConfig;
	parameter [31:0] NumMgrPorts = 32'd0;
	parameter [31:0] NumMaxTrans = 32'd0;
	input wire clk_i;
	input wire rst_ni;
	input wire [$clog2(NumMgrPorts) - 1:0] sbr_port_select_i;
	input wire [((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] sbr_port_req_i;
	output wire [(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] sbr_port_rsp_o;
	output reg [((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? (NumMgrPorts * (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1)) - 1 : (NumMgrPorts * (1 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) - 1)):((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)] mgr_ports_req_o;
	input wire [(((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (NumMgrPorts * ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2)) - 1 : (NumMgrPorts * (1 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0)):(((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)] mgr_ports_rsp_i;
	generate
		if (ObiCfg[197]) begin : gen_integrity_err
			$fatal(1, "unimplemented");
		end
	endgenerate
	function automatic [31:0] cf_math_pkg_idx_width;
		input reg [31:0] num_idx;
		cf_math_pkg_idx_width = (num_idx > 32'd1 ? $unsigned($clog2(num_idx)) : 32'd1);
	endfunction
	localparam [31:0] CounterWidth = cf_math_pkg_idx_width(NumMaxTrans);
	reg cnt_up;
	wire cnt_down;
	wire overflow;
	wire [CounterWidth - 1:0] in_flight;
	reg sbr_port_gnt;
	wire sbr_port_rready;
	reg [$clog2(NumMgrPorts) - 1:0] select_d;
	reg [$clog2(NumMgrPorts) - 1:0] select_q;
	always @(*) begin : proc_req
		if (_sv2v_0)
			;
		select_d = select_q;
		cnt_up = 1'b0;
		begin : sv2v_autoblock_1
			reg signed [31:0] i;
			for (i = 0; i < NumMgrPorts; i = i + 1)
				begin
					mgr_ports_req_o[(i * ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)] = 1'b0;
					mgr_ports_req_o[((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? (i * ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)) : (((i * ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 1 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : 2 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) - 1)-:((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 1 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : 2 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))] = 1'sb0;
				end
		end
		sbr_port_gnt = 1'b0;
		if (!overflow) begin
			if (((sbr_port_select_i == select_q) || (in_flight == {CounterWidth {1'sb0}})) || ((in_flight == 1) && cnt_down)) begin
				mgr_ports_req_o[(sbr_port_select_i * ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)] = sbr_port_req_i[0];
				mgr_ports_req_o[((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? (sbr_port_select_i * ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)) : (((sbr_port_select_i * ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 1 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : 2 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) - 1)-:((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 1 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : 2 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))] = sbr_port_req_i[((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0-:((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 1 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0 : 2 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
				sbr_port_gnt = mgr_ports_rsp_i[(sbr_port_select_i * (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 1 : (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0)];
			end
		end
		if (mgr_ports_req_o[(sbr_port_select_i * ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + ((((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)] && mgr_ports_rsp_i[(sbr_port_select_i * (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 1 : (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0)]) begin
			select_d = sbr_port_select_i;
			cnt_up = 1'b1;
		end
	end
	assign sbr_port_rsp_o[1] = sbr_port_gnt;
	assign sbr_port_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1-:(((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 2 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0 : 3 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = mgr_ports_rsp_i[(((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (select_q * (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1 : ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)) : (((select_q * (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1 : ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 2 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0 : 3 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) - 1)-:(((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 2 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0 : 3 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))];
	assign sbr_port_rsp_o[0] = mgr_ports_rsp_i[(select_q * (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)];
	assign sbr_port_rready = 1'b1;
	assign cnt_down = mgr_ports_rsp_i[(select_q * (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + (((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)] && sbr_port_rready;
	localparam [31:0] sv2v_uu_i_counter_WIDTH = CounterWidth;
	localparam [sv2v_uu_i_counter_WIDTH - 1:0] sv2v_uu_i_counter_ext_d_i_0 = 1'sb0;
	delta_counter #(
		.WIDTH(CounterWidth),
		.STICKY_OVERFLOW(1'b0)
	) i_counter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.clear_i(1'b0),
		.en_i(cnt_up ^ cnt_down),
		.load_i(1'b0),
		.down_i(cnt_down),
		.delta_i({{CounterWidth - 1 {1'b0}}, 1'b1}),
		.d_i(sv2v_uu_i_counter_ext_d_i_0),
		.q_o(in_flight),
		.overflow_o(overflow)
	);
	always @(posedge clk_i or negedge rst_ni) begin : proc_select
		if (!rst_ni)
			select_q <= 1'sb0;
		else
			select_q <= select_d;
	end
	initial _sv2v_0 = 0;
endmodule
module obi_err_sbr_DE7BC_23729 (
	clk_i,
	rst_ni,
	testmode_i,
	obi_req_i,
	obi_rsp_o
);
	parameter [295:0] obi_req_t_soc_pkg_SbrObiCfg = 0;
	parameter [295:0] obi_rsp_t_soc_pkg_SbrObiCfg = 0;
	reg _sv2v_0;
	localparam [195:0] obi_pkg_ObiMinimalOptionalConfig = 196'h0000000000000000000000000000000000000000000000000;
	function automatic [295:0] obi_pkg_obi_default_cfg;
		input reg [31:0] AddrWidth;
		input reg [31:0] DataWidth;
		input reg [31:0] IdWidth;
		input reg [195:0] OptionalCfg;
		obi_pkg_obi_default_cfg = {2'b00, AddrWidth, DataWidth, IdWidth, 2'b01, OptionalCfg};
	endfunction
	localparam [295:0] obi_pkg_ObiDefaultConfig = obi_pkg_obi_default_cfg(32, 32, 1, obi_pkg_ObiMinimalOptionalConfig);
	parameter [295:0] ObiCfg = obi_pkg_ObiDefaultConfig;
	parameter [31:0] NumMaxTrans = 1;
	parameter [ObiCfg[261-:32] - 1:0] RspData = 32'hbadcab1e;
	input wire clk_i;
	input wire rst_ni;
	input wire testmode_i;
	input wire [((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] obi_req_i;
	output reg [(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] obi_rsp_o;
	wire [ObiCfg[229-:32] - 1:0] rid;
	wire fifo_full;
	wire fifo_empty;
	wire fifo_pop;
	always @(*) begin
		if (_sv2v_0)
			;
		obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)] = 1'sb0;
		obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)] = RspData;
		obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + ((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))] = rid;
		obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)] = 1'b1;
		obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)] = 1'sb0;
		obi_rsp_o[1] = ~fifo_full;
		obi_rsp_o[0] = ~fifo_empty;
	end
	assign fifo_pop = obi_rsp_o[0];
	localparam [0:0] sv2v_uu_i_id_fifo_ext_flush_i_0 = 1'sb0;
	fifo_v3 #(
		.DEPTH((ObiCfg[295] ? NumMaxTrans : 1)),
		.FALL_THROUGH(1'b0),
		.DATA_WIDTH(ObiCfg[229-:32])
	) i_id_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.testmode_i(testmode_i),
		.flush_i(sv2v_uu_i_id_fifo_ext_flush_i_0),
		.full_o(fifo_full),
		.empty_o(fifo_empty),
		.usage_o(),
		.data_i(obi_req_i[((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) + ((obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))]),
		.push_i(obi_req_i[0] && obi_rsp_o[1]),
		.data_o(rid),
		.pop_i(fifo_pop)
	);
	initial _sv2v_0 = 0;
endmodule
module obi_sram_shim_1442A_2FAFE (
	clk_i,
	rst_ni,
	obi_req_i,
	obi_rsp_o,
	req_o,
	we_o,
	addr_o,
	wdata_o,
	be_o,
	gnt_i,
	rdata_i
);
	parameter [295:0] obi_req_t_soc_pkg_SbrObiCfg = 0;
	parameter [295:0] obi_rsp_t_soc_pkg_SbrObiCfg = 0;
	localparam [195:0] obi_pkg_ObiMinimalOptionalConfig = 196'h0000000000000000000000000000000000000000000000000;
	function automatic [295:0] obi_pkg_obi_default_cfg;
		input reg [31:0] AddrWidth;
		input reg [31:0] DataWidth;
		input reg [31:0] IdWidth;
		input reg [195:0] OptionalCfg;
		obi_pkg_obi_default_cfg = {2'b00, AddrWidth, DataWidth, IdWidth, 2'b01, OptionalCfg};
	endfunction
	localparam [295:0] obi_pkg_ObiDefaultConfig = obi_pkg_obi_default_cfg(32, 32, 1, obi_pkg_ObiMinimalOptionalConfig);
	parameter [295:0] ObiCfg = obi_pkg_ObiDefaultConfig;
	input wire clk_i;
	input wire rst_ni;
	input wire [((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] obi_req_i;
	output wire [(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] obi_rsp_o;
	output wire req_o;
	output wire we_o;
	output wire [ObiCfg[293-:32] - 1:0] addr_o;
	output wire [ObiCfg[261-:32] - 1:0] wdata_o;
	output wire [(ObiCfg[261-:32] / 8) - 1:0] be_o;
	input wire gnt_i;
	input wire [ObiCfg[261-:32] - 1:0] rdata_i;
	generate
		if (ObiCfg[195]) begin : genblk1
			$error("Please use an ATOP resolver before sram shim.");
		end
		if (ObiCfg[295]) begin : genblk2
			$error("Please use an RReady Fifo before sram shim.");
		end
		if (ObiCfg[197]) begin : genblk3
			$error("Integrity not yet supported, WIP");
		end
		if (ObiCfg[193]) begin : genblk4
			$warning("Prot not checked!");
		end
		if (ObiCfg[194]) begin : genblk5
			$warning("Memtype not checked!");
		end
	endgenerate
	wire rvalid_d;
	reg rvalid_q;
	wire [ObiCfg[229-:32] - 1:0] id_d;
	reg [ObiCfg[229-:32] - 1:0] id_q;
	assign req_o = obi_req_i[0];
	assign we_o = obi_req_i[((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))];
	assign addr_o = obi_req_i[((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) - (obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)))) - (obi_req_t_soc_pkg_SbrObiCfg[293-:32] + (1 + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)];
	assign wdata_o = obi_req_i[((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) >= (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) ? ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) >= (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) ? ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1) - (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)];
	assign be_o = obi_req_i[((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) >= (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) >= (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - ((obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] + (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)];
	assign obi_rsp_o[1] = gnt_i;
	assign obi_rsp_o[0] = rvalid_q;
	assign obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) >= (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) ? ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 2) - (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)] = rdata_i;
	assign obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1)) + ((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (obi_rsp_t_soc_pkg_SbrObiCfg[229-:32] + 1))] = id_q;
	assign obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)] = 1'b0;
	assign obi_rsp_o[(((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((obi_rsp_t_soc_pkg_SbrObiCfg[261-:32] + obi_rsp_t_soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)] = 1'sb0;
	assign rvalid_d = obi_req_i[0] & obi_rsp_o[1];
	assign id_d = obi_req_i[((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((obi_req_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (obi_req_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + obi_req_t_soc_pkg_SbrObiCfg[261-:32]) + obi_req_t_soc_pkg_SbrObiCfg[229-:32]) + 0) - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0)) + ((obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (obi_req_t_soc_pkg_SbrObiCfg[229-:32] + 0))];
	always @(posedge clk_i or negedge rst_ni) begin : proc_sram_state
		if (!rst_ni) begin
			rvalid_q <= 1'b0;
			id_q <= 1'sb0;
		end
		else begin
			rvalid_q <= rvalid_d;
			id_q <= id_d;
		end
	end
endmodule
module fifo_v3 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	reg _sv2v_0;
	parameter [0:0] FALL_THROUGH = 1'b0;
	parameter [31:0] DATA_WIDTH = 32;
	parameter [31:0] DEPTH = 8;
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	input wire clk_i;
	input wire rst_ni;
	input wire flush_i;
	input wire testmode_i;
	output wire full_o;
	output wire empty_o;
	output wire [ADDR_DEPTH - 1:0] usage_o;
	input wire [DATA_WIDTH - 1:0] data_i;
	input wire push_i;
	output reg [DATA_WIDTH - 1:0] data_o;
	input wire pop_i;
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	reg gate_clock;
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	reg [(FifoDepth * DATA_WIDTH) - 1:0] mem_n;
	reg [(FifoDepth * DATA_WIDTH) - 1:0] mem_q;
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	generate
		if (DEPTH == 0) begin : gen_pass_through
			assign empty_o = ~push_i;
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		read_pointer_n = read_pointer_q;
		write_pointer_n = write_pointer_q;
		status_cnt_n = status_cnt_q;
		data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q * DATA_WIDTH+:DATA_WIDTH]);
		mem_n = mem_q;
		gate_clock = 1'b1;
		if (push_i && ~full_o) begin
			mem_n[write_pointer_q * DATA_WIDTH+:DATA_WIDTH] = data_i;
			gate_clock = 1'b0;
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				write_pointer_n = 1'sb0;
			else
				write_pointer_n = write_pointer_q + 1;
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				read_pointer_n = 1'sb0;
			else
				read_pointer_n = read_pointer_q + 1;
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			data_o = data_i;
			if (pop_i) begin
				status_cnt_n = status_cnt_q;
				read_pointer_n = read_pointer_q;
				write_pointer_n = write_pointer_q;
			end
		end
	end
	always @(posedge clk_i or negedge rst_ni)
		if (~rst_ni) begin
			read_pointer_q <= 1'sb0;
			write_pointer_q <= 1'sb0;
			status_cnt_q <= 1'sb0;
		end
		else if (flush_i) begin
			read_pointer_q <= 1'sb0;
			write_pointer_q <= 1'sb0;
			status_cnt_q <= 1'sb0;
		end
		else begin
			read_pointer_q <= read_pointer_n;
			write_pointer_q <= write_pointer_n;
			status_cnt_q <= status_cnt_n;
		end
	function automatic [DATA_WIDTH - 1:0] sv2v_cast_DD846;
		input reg [DATA_WIDTH - 1:0] inp;
		sv2v_cast_DD846 = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni)
		if (~rst_ni)
			mem_q <= {FifoDepth {sv2v_cast_DD846(1'sb0)}};
		else if (!gate_clock)
			mem_q <= mem_n;
	initial _sv2v_0 = 0;
endmodule
module rr_arb_tree_DB046_EA048 (
	clk_i,
	rst_ni,
	flush_i,
	rr_i,
	req_i,
	gnt_o,
	data_i,
	req_o,
	gnt_i,
	data_o,
	idx_o
);
	parameter [295:0] DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg = 0;
	parameter [31:0] NumIn = 64;
	parameter [31:0] DataWidth = 32;
	parameter [0:0] ExtPrio = 1'b0;
	parameter [0:0] AxiVldRdy = 1'b0;
	parameter [0:0] LockIn = 1'b0;
	parameter [0:0] FairArb = 1'b1;
	parameter [31:0] IdxWidth = (NumIn > 32'd1 ? $unsigned($clog2(NumIn)) : 32'd1);
	input wire clk_i;
	input wire rst_ni;
	input wire flush_i;
	input wire [IdxWidth - 1:0] rr_i;
	input wire [NumIn - 1:0] req_i;
	output wire [NumIn - 1:0] gnt_o;
	input wire [((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (NumIn * (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) - 1 : (NumIn * (1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))) + (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) - 1)):((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)] data_i;
	output wire req_o;
	input wire gnt_i;
	output wire [((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0:0] data_o;
	output wire [IdxWidth - 1:0] idx_o;
	function automatic [IdxWidth - 1:0] sv2v_cast_5FDFE;
		input reg [IdxWidth - 1:0] inp;
		sv2v_cast_5FDFE = inp;
	endfunction
	function automatic [((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) - 1:0] sv2v_cast_4374C;
		input reg [((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)) - 1:0] inp;
		sv2v_cast_4374C = inp;
	endfunction
	generate
		if (NumIn == $unsigned(1)) begin : gen_pass_through
			assign req_o = req_i[0];
			assign gnt_o[0] = gnt_i;
			assign data_o = data_i[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + 0+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))];
			assign idx_o = 1'sb0;
		end
		else begin : gen_arbiter
			localparam [31:0] NumLevels = $unsigned($clog2(NumIn));
			wire [(((2 ** NumLevels) - 2) >= 0 ? (((2 ** NumLevels) - 1) * IdxWidth) - 1 : ((3 - (2 ** NumLevels)) * IdxWidth) + ((((2 ** NumLevels) - 2) * IdxWidth) - 1)):(((2 ** NumLevels) - 2) >= 0 ? 0 : ((2 ** NumLevels) - 2) * IdxWidth)] index_nodes;
			wire [(((2 ** NumLevels) - 2) >= 0 ? ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((2 ** NumLevels) - 1) * (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) - 1 : (((2 ** NumLevels) - 1) * (1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))) + (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) - 1)) : ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((3 - (2 ** NumLevels)) * (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) + ((((2 ** NumLevels) - 2) * (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1)) - 1) : ((3 - (2 ** NumLevels)) * (1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))) + (((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + (((2 ** NumLevels) - 2) * (1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))) - 1))):(((2 ** NumLevels) - 2) >= 0 ? ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) : ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((2 ** NumLevels) - 2) * (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1) : (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + (((2 ** NumLevels) - 2) * (1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))))] data_nodes;
			wire [(2 ** NumLevels) - 2:0] gnt_nodes;
			wire [(2 ** NumLevels) - 2:0] req_nodes;
			reg [IdxWidth - 1:0] rr_q;
			wire [NumIn - 1:0] req_d;
			assign req_o = req_nodes[0];
			assign data_o = data_nodes[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((((2 ** NumLevels) - 2) >= 0 ? 0 : (2 ** NumLevels) - 2) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))];
			assign idx_o = index_nodes[(((2 ** NumLevels) - 2) >= 0 ? 0 : (2 ** NumLevels) - 2) * IdxWidth+:IdxWidth];
			if (ExtPrio) begin : gen_ext_rr
				wire [IdxWidth:1] sv2v_tmp_0900B;
				assign sv2v_tmp_0900B = rr_i;
				always @(*) rr_q = sv2v_tmp_0900B;
				assign req_d = req_i;
			end
			else begin : gen_int_rr
				wire [IdxWidth - 1:0] rr_d;
				if (LockIn) begin : gen_lock
					wire lock_d;
					reg lock_q;
					reg [NumIn - 1:0] req_q;
					assign lock_d = req_o & ~gnt_i;
					assign req_d = (lock_q ? req_q : req_i);
					always @(posedge clk_i or negedge rst_ni) begin : p_lock_reg
						if (!rst_ni)
							lock_q <= 1'sb0;
						else if (flush_i)
							lock_q <= 1'sb0;
						else
							lock_q <= lock_d;
					end
					always @(posedge clk_i or negedge rst_ni) begin : p_req_regs
						if (!rst_ni)
							req_q <= 1'sb0;
						else if (flush_i)
							req_q <= 1'sb0;
						else
							req_q <= req_d;
					end
				end
				else begin : gen_no_lock
					assign req_d = req_i;
				end
				if (FairArb) begin : gen_fair_arb
					wire [NumIn - 1:0] upper_mask;
					wire [NumIn - 1:0] lower_mask;
					wire [IdxWidth - 1:0] upper_idx;
					wire [IdxWidth - 1:0] lower_idx;
					wire [IdxWidth - 1:0] next_idx;
					wire upper_empty;
					wire lower_empty;
					genvar _gv_i_5;
					for (_gv_i_5 = 0; _gv_i_5 < NumIn; _gv_i_5 = _gv_i_5 + 1) begin : gen_mask
						localparam i = _gv_i_5;
						assign upper_mask[i] = (i > rr_q ? req_d[i] : 1'b0);
						assign lower_mask[i] = (i <= rr_q ? req_d[i] : 1'b0);
					end
					lzc #(
						.WIDTH(NumIn),
						.MODE(1'b0)
					) i_lzc_upper(
						.in_i(upper_mask),
						.cnt_o(upper_idx),
						.empty_o(upper_empty)
					);
					lzc #(
						.WIDTH(NumIn),
						.MODE(1'b0)
					) i_lzc_lower(
						.in_i(lower_mask),
						.cnt_o(lower_idx),
						.empty_o()
					);
					assign next_idx = (upper_empty ? lower_idx : upper_idx);
					assign rr_d = (gnt_i && req_o ? next_idx : rr_q);
				end
				else begin : gen_unfair_arb
					assign rr_d = (gnt_i && req_o ? (rr_q == sv2v_cast_5FDFE(NumIn - 1) ? {IdxWidth {1'sb0}} : rr_q + 1'b1) : rr_q);
				end
				always @(posedge clk_i or negedge rst_ni) begin : p_rr_regs
					if (!rst_ni)
						rr_q <= 1'sb0;
					else if (flush_i)
						rr_q <= 1'sb0;
					else
						rr_q <= rr_d;
				end
			end
			assign gnt_nodes[0] = gnt_i;
			genvar _gv_level_1;
			for (_gv_level_1 = 0; $unsigned(_gv_level_1) < NumLevels; _gv_level_1 = _gv_level_1 + 1) begin : gen_levels
				localparam level = _gv_level_1;
				genvar _gv_l_1;
				for (_gv_l_1 = 0; _gv_l_1 < (2 ** level); _gv_l_1 = _gv_l_1 + 1) begin : gen_level
					localparam l = _gv_l_1;
					wire sel;
					localparam [31:0] Idx0 = ((2 ** level) - 1) + l;
					localparam [31:0] Idx1 = ((2 ** (level + 1)) - 1) + (l * 2);
					if ($unsigned(level) == (NumLevels - 1)) begin : gen_first_level
						if (($unsigned(l) * 2) < (NumIn - 1)) begin : gen_reduce
							assign req_nodes[Idx0] = req_d[l * 2] | req_d[(l * 2) + 1];
							assign sel = ~req_d[l * 2] | (req_d[(l * 2) + 1] & rr_q[(NumLevels - 1) - level]);
							assign index_nodes[(((2 ** NumLevels) - 2) >= 0 ? Idx0 : ((2 ** NumLevels) - 2) - Idx0) * IdxWidth+:IdxWidth] = sv2v_cast_5FDFE(sel);
							assign data_nodes[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((((2 ** NumLevels) - 2) >= 0 ? Idx0 : ((2 ** NumLevels) - 2) - Idx0) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))] = (sel ? data_i[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + (((l * 2) + 1) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))] : data_i[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((l * 2) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))]);
							assign gnt_o[l * 2] = (gnt_nodes[Idx0] & (AxiVldRdy | req_d[l * 2])) & ~sel;
							assign gnt_o[(l * 2) + 1] = (gnt_nodes[Idx0] & (AxiVldRdy | req_d[(l * 2) + 1])) & sel;
						end
						if (($unsigned(l) * 2) == (NumIn - 1)) begin : gen_first
							assign req_nodes[Idx0] = req_d[l * 2];
							assign index_nodes[(((2 ** NumLevels) - 2) >= 0 ? Idx0 : ((2 ** NumLevels) - 2) - Idx0) * IdxWidth+:IdxWidth] = 1'sb0;
							assign data_nodes[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((((2 ** NumLevels) - 2) >= 0 ? Idx0 : ((2 ** NumLevels) - 2) - Idx0) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))] = data_i[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((l * 2) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))];
							assign gnt_o[l * 2] = gnt_nodes[Idx0] & (AxiVldRdy | req_d[l * 2]);
						end
						if (($unsigned(l) * 2) > (NumIn - 1)) begin : gen_out_of_range
							assign req_nodes[Idx0] = 1'b0;
							assign index_nodes[(((2 ** NumLevels) - 2) >= 0 ? Idx0 : ((2 ** NumLevels) - 2) - Idx0) * IdxWidth+:IdxWidth] = sv2v_cast_5FDFE(1'sb0);
							assign data_nodes[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((((2 ** NumLevels) - 2) >= 0 ? Idx0 : ((2 ** NumLevels) - 2) - Idx0) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))] = sv2v_cast_4374C(1'sb0);
						end
					end
					else begin : gen_other_levels
						assign req_nodes[Idx0] = req_nodes[Idx1] | req_nodes[Idx1 + 1];
						assign sel = ~req_nodes[Idx1] | (req_nodes[Idx1 + 1] & rr_q[(NumLevels - 1) - level]);
						assign index_nodes[(((2 ** NumLevels) - 2) >= 0 ? Idx0 : ((2 ** NumLevels) - 2) - Idx0) * IdxWidth+:IdxWidth] = (sel ? sv2v_cast_5FDFE({1'b1, index_nodes[((((2 ** NumLevels) - 2) >= 0 ? Idx1 + 1 : ((2 ** NumLevels) - 2) - (Idx1 + 1)) * IdxWidth) + (((NumLevels - $unsigned(level)) - 2) >= 0 ? (NumLevels - $unsigned(level)) - 2 : (((NumLevels - $unsigned(level)) - 2) + (((NumLevels - $unsigned(level)) - 2) >= 0 ? (NumLevels - $unsigned(level)) - 1 : 3 - (NumLevels - $unsigned(level)))) - 1)-:(((NumLevels - $unsigned(level)) - 2) >= 0 ? (NumLevels - $unsigned(level)) - 1 : 3 - (NumLevels - $unsigned(level)))]}) : sv2v_cast_5FDFE({1'b0, index_nodes[((((2 ** NumLevels) - 2) >= 0 ? Idx1 : ((2 ** NumLevels) - 2) - Idx1) * IdxWidth) + (((NumLevels - $unsigned(level)) - 2) >= 0 ? (NumLevels - $unsigned(level)) - 2 : (((NumLevels - $unsigned(level)) - 2) + (((NumLevels - $unsigned(level)) - 2) >= 0 ? (NumLevels - $unsigned(level)) - 1 : 3 - (NumLevels - $unsigned(level)))) - 1)-:(((NumLevels - $unsigned(level)) - 2) >= 0 ? (NumLevels - $unsigned(level)) - 1 : 3 - (NumLevels - $unsigned(level)))]}));
						assign data_nodes[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((((2 ** NumLevels) - 2) >= 0 ? Idx0 : ((2 ** NumLevels) - 2) - Idx0) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))] = (sel ? data_nodes[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((((2 ** NumLevels) - 2) >= 0 ? Idx1 + 1 : ((2 ** NumLevels) - 2) - (Idx1 + 1)) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))] : data_nodes[((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? 0 : ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) + ((((2 ** NumLevels) - 2) >= 0 ? Idx1 : ((2 ** NumLevels) - 2) - Idx1) * ((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0)))+:((((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[293-:32] + 1) + (DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32] / 8)) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[261-:32]) + DataType_sbr_port_a_chan_t_soc_pkg_SbrObiCfg[229-:32]) + 0))]);
						assign gnt_nodes[Idx1] = gnt_nodes[Idx0] & ~sel;
						assign gnt_nodes[Idx1 + 1] = gnt_nodes[Idx0] & sel;
					end
				end
			end
		end
	endgenerate
endmodule
module delta_counter (
	clk_i,
	rst_ni,
	clear_i,
	en_i,
	load_i,
	down_i,
	delta_i,
	d_i,
	q_o,
	overflow_o
);
	reg _sv2v_0;
	parameter [31:0] WIDTH = 4;
	parameter [0:0] STICKY_OVERFLOW = 1'b0;
	input wire clk_i;
	input wire rst_ni;
	input wire clear_i;
	input wire en_i;
	input wire load_i;
	input wire down_i;
	input wire [WIDTH - 1:0] delta_i;
	input wire [WIDTH - 1:0] d_i;
	output wire [WIDTH - 1:0] q_o;
	output wire overflow_o;
	reg [WIDTH:0] counter_q;
	reg [WIDTH:0] counter_d;
	generate
		if (STICKY_OVERFLOW) begin : gen_sticky_overflow
			reg overflow_d;
			reg overflow_q;
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni)
					overflow_q <= 1'b0;
				else
					overflow_q <= overflow_d;
			always @(*) begin
				if (_sv2v_0)
					;
				overflow_d = overflow_q;
				if (clear_i || load_i)
					overflow_d = 1'b0;
				else if (!overflow_q && en_i) begin
					if (down_i)
						overflow_d = delta_i > counter_q[WIDTH - 1:0];
					else
						overflow_d = counter_q[WIDTH - 1:0] > ({WIDTH {1'b1}} - delta_i);
				end
			end
			assign overflow_o = overflow_q;
		end
		else begin : gen_transient_overflow
			assign overflow_o = counter_q[WIDTH];
		end
	endgenerate
	assign q_o = counter_q[WIDTH - 1:0];
	always @(*) begin
		if (_sv2v_0)
			;
		counter_d = counter_q;
		if (clear_i)
			counter_d = 1'sb0;
		else if (load_i)
			counter_d = {1'b0, d_i};
		else if (en_i) begin
			if (down_i)
				counter_d = counter_q - delta_i;
			else
				counter_d = counter_q + delta_i;
		end
	end
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			counter_q <= 1'sb0;
		else
			counter_q <= counter_d;
	initial _sv2v_0 = 0;
endmodule
module lzc (
	in_i,
	cnt_o,
	empty_o
);
	reg _sv2v_0;
	parameter [31:0] WIDTH = 2;
	parameter [0:0] MODE = 1'b0;
	function automatic [31:0] cf_math_pkg_idx_width;
		input reg [31:0] num_idx;
		cf_math_pkg_idx_width = (num_idx > 32'd1 ? $unsigned($clog2(num_idx)) : 32'd1);
	endfunction
	parameter [31:0] CNT_WIDTH = cf_math_pkg_idx_width(WIDTH);
	input wire [WIDTH - 1:0] in_i;
	output wire [CNT_WIDTH - 1:0] cnt_o;
	output wire empty_o;
	generate
		if (WIDTH == 1) begin : gen_degenerate_lzc
			assign cnt_o[0] = !in_i[0];
			assign empty_o = !in_i[0];
		end
		else begin : gen_lzc
			localparam [31:0] NumLevels = $clog2(WIDTH);
			wire [(WIDTH * NumLevels) - 1:0] index_lut;
			wire [(2 ** NumLevels) - 1:0] sel_nodes;
			wire [((2 ** NumLevels) * NumLevels) - 1:0] index_nodes;
			reg [WIDTH - 1:0] in_tmp;
			always @(*) begin : flip_vector
				if (_sv2v_0)
					;
				begin : sv2v_autoblock_1
					reg [31:0] i;
					for (i = 0; i < WIDTH; i = i + 1)
						in_tmp[i] = (MODE ? in_i[(WIDTH - 1) - i] : in_i[i]);
				end
			end
			genvar _gv_j_1;
			for (_gv_j_1 = 0; $unsigned(_gv_j_1) < WIDTH; _gv_j_1 = _gv_j_1 + 1) begin : g_index_lut
				localparam j = _gv_j_1;
				function automatic [NumLevels - 1:0] sv2v_cast_677FF;
					input reg [NumLevels - 1:0] inp;
					sv2v_cast_677FF = inp;
				endfunction
				assign index_lut[j * NumLevels+:NumLevels] = sv2v_cast_677FF($unsigned(j));
			end
			genvar _gv_level_2;
			for (_gv_level_2 = 0; $unsigned(_gv_level_2) < NumLevels; _gv_level_2 = _gv_level_2 + 1) begin : g_levels
				localparam level = _gv_level_2;
				if ($unsigned(level) == (NumLevels - 1)) begin : g_last_level
					genvar _gv_k_1;
					for (_gv_k_1 = 0; _gv_k_1 < (2 ** level); _gv_k_1 = _gv_k_1 + 1) begin : g_level
						localparam k = _gv_k_1;
						if (($unsigned(k) * 2) < (WIDTH - 1)) begin : g_reduce
							assign sel_nodes[((2 ** level) - 1) + k] = in_tmp[k * 2] | in_tmp[(k * 2) + 1];
							assign index_nodes[(((2 ** level) - 1) + k) * NumLevels+:NumLevels] = (in_tmp[k * 2] == 1'b1 ? index_lut[(k * 2) * NumLevels+:NumLevels] : index_lut[((k * 2) + 1) * NumLevels+:NumLevels]);
						end
						if (($unsigned(k) * 2) == (WIDTH - 1)) begin : g_base
							assign sel_nodes[((2 ** level) - 1) + k] = in_tmp[k * 2];
							assign index_nodes[(((2 ** level) - 1) + k) * NumLevels+:NumLevels] = index_lut[(k * 2) * NumLevels+:NumLevels];
						end
						if (($unsigned(k) * 2) > (WIDTH - 1)) begin : g_out_of_range
							assign sel_nodes[((2 ** level) - 1) + k] = 1'b0;
							assign index_nodes[(((2 ** level) - 1) + k) * NumLevels+:NumLevels] = 1'sb0;
						end
					end
				end
				else begin : g_not_last_level
					genvar _gv_l_2;
					for (_gv_l_2 = 0; _gv_l_2 < (2 ** level); _gv_l_2 = _gv_l_2 + 1) begin : g_level
						localparam l = _gv_l_2;
						assign sel_nodes[((2 ** level) - 1) + l] = sel_nodes[((2 ** (level + 1)) - 1) + (l * 2)] | sel_nodes[(((2 ** (level + 1)) - 1) + (l * 2)) + 1];
						assign index_nodes[(((2 ** level) - 1) + l) * NumLevels+:NumLevels] = (sel_nodes[((2 ** (level + 1)) - 1) + (l * 2)] == 1'b1 ? index_nodes[(((2 ** (level + 1)) - 1) + (l * 2)) * NumLevels+:NumLevels] : index_nodes[((((2 ** (level + 1)) - 1) + (l * 2)) + 1) * NumLevels+:NumLevels]);
					end
				end
			end
			assign cnt_o = (NumLevels > $unsigned(0) ? index_nodes[0+:NumLevels] : {$clog2(WIDTH) {1'b0}});
			assign empty_o = (NumLevels > $unsigned(0) ? ~sel_nodes[0] : ~(|in_i));
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_a_decoder (
	instr_rdata_i,
	decoder_ctrl_o
);
	reg _sv2v_0;
	parameter [1:0] A_EXT = 2'd2;
	input wire [31:0] instr_rdata_i;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	output reg [54:0] decoder_ctrl_o;
	localparam A_LRSC = (A_EXT == 2'd2) || (A_EXT == 2'd1);
	localparam A_AMO = A_EXT == 2'd2;
	localparam cv32e40x_pkg_AMO_ADD = 5'b00000;
	localparam cv32e40x_pkg_AMO_AND = 5'b01100;
	localparam cv32e40x_pkg_AMO_LR = 5'b00010;
	localparam cv32e40x_pkg_AMO_MAX = 5'b10100;
	localparam cv32e40x_pkg_AMO_MAXU = 5'b11100;
	localparam cv32e40x_pkg_AMO_MIN = 5'b10000;
	localparam cv32e40x_pkg_AMO_MINU = 5'b11000;
	localparam cv32e40x_pkg_AMO_OR = 5'b01000;
	localparam cv32e40x_pkg_AMO_SC = 5'b00011;
	localparam cv32e40x_pkg_AMO_SWAP = 5'b00001;
	localparam cv32e40x_pkg_AMO_XOR = 5'b00100;
	function automatic [5:0] sv2v_cast_9A8CC;
		input reg [5:0] inp;
		sv2v_cast_9A8CC = inp;
	endfunction
	function automatic [0:0] sv2v_cast_ACD50;
		input reg [0:0] inp;
		sv2v_cast_ACD50 = inp;
	endfunction
	function automatic [1:0] sv2v_cast_B845F;
		input reg [1:0] inp;
		sv2v_cast_B845F = inp;
	endfunction
	function automatic [1:0] sv2v_cast_1A666;
		input reg [1:0] inp;
		sv2v_cast_1A666 = inp;
	endfunction
	localparam [54:0] cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN = {4'b0000, sv2v_cast_9A8CC(6'b010011), 12'b111010100010, sv2v_cast_ACD50(1'b0), 3'b000, sv2v_cast_B845F(2'b00), 4'b0000, sv2v_cast_1A666(2'b00), 21'b000000000000100000000};
	always @(*) begin
		if (_sv2v_0)
			;
		decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		decoder_ctrl_o[8] = 1'b0;
		(* full_case, parallel_case *)
		case (instr_rdata_i[6:0])
			7'h2f:
				if (instr_rdata_i[14:12] == 3'b010) begin
					decoder_ctrl_o[20] = 1'b1;
					decoder_ctrl_o[25] = 1'b1;
					decoder_ctrl_o[24] = 1'b1;
					decoder_ctrl_o[44-:2] = 2'b00;
					decoder_ctrl_o[42-:2] = 2'b10;
					decoder_ctrl_o[18-:2] = 2'b10;
					decoder_ctrl_o[16] = 1'b1;
					decoder_ctrl_o[15-:6] = {1'b1, instr_rdata_i[31:27]};
					(* full_case, parallel_case *)
					case (instr_rdata_i[31:27])
						cv32e40x_pkg_AMO_LR:
							if (A_LRSC) begin
								decoder_ctrl_o[26] = 1'b0;
								decoder_ctrl_o[40-:2] = 2'b10;
								decoder_ctrl_o[19] = 1'b0;
								if (instr_rdata_i[24:20] != 5'b00000)
									decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
							end
							else
								decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
						cv32e40x_pkg_AMO_SC:
							if (A_LRSC) begin
								decoder_ctrl_o[26] = 1'b1;
								decoder_ctrl_o[40-:2] = 2'b00;
								decoder_ctrl_o[19] = 1'b1;
							end
							else
								decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
						cv32e40x_pkg_AMO_SWAP, cv32e40x_pkg_AMO_ADD, cv32e40x_pkg_AMO_XOR, cv32e40x_pkg_AMO_AND, cv32e40x_pkg_AMO_OR, cv32e40x_pkg_AMO_MIN, cv32e40x_pkg_AMO_MAX, cv32e40x_pkg_AMO_MINU, cv32e40x_pkg_AMO_MAXU:
							if (A_AMO) begin
								decoder_ctrl_o[26] = 1'b1;
								decoder_ctrl_o[40-:2] = 2'b00;
								decoder_ctrl_o[19] = 1'b1;
							end
							else
								decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
						default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					endcase
				end
				else
					decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
			default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_align_check_7FEF3_11A60 (
	clk,
	rst_n,
	align_check_en_i,
	misaligned_access_i,
	bus_trans_ready_i,
	bus_trans_valid_o,
	bus_trans_o,
	bus_resp_valid_i,
	bus_resp_i,
	core_trans_valid_i,
	core_trans_ready_o,
	core_trans_i,
	core_resp_valid_o,
	core_resp_o,
	core_one_txn_pend_n,
	core_align_err_wait_i,
	core_align_err_o
);
	parameter signed [31:0] BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH = 0;
	parameter signed [31:0] CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH = 0;
	parameter signed [31:0] CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH = 0;
	parameter signed [31:0] CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH = 0;
	reg _sv2v_0;
	parameter [0:0] IF_STAGE = 1;
	localparam cv32e40x_pkg_INSTR_ADDR_WIDTH = 32;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	input wire clk;
	input wire rst_n;
	input wire align_check_en_i;
	input wire misaligned_access_i;
	input wire bus_trans_ready_i;
	output wire bus_trans_valid_o;
	output wire [(((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + 7) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8)) + CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH) + 5:0] bus_trans_o;
	input wire bus_resp_valid_i;
	input wire [BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2:0] bus_resp_i;
	input wire core_trans_valid_i;
	output wire core_trans_ready_o;
	input wire [(((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + 7) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8)) + CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH) + 5:0] core_trans_i;
	output wire core_resp_valid_o;
	output wire [((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35:0] core_resp_o;
	input wire core_one_txn_pend_n;
	input wire core_align_err_wait_i;
	output wire core_align_err_o;
	reg align_block_core;
	reg align_block_bus;
	reg align_trans_valid;
	reg align_trans_ready;
	wire align_err;
	wire core_trans_we;
	reg [1:0] align_status;
	reg [2:0] state_q;
	reg [2:0] state_n;
	always @(*) begin
		if (_sv2v_0)
			;
		state_n = state_q;
		align_block_core = 1'b0;
		align_block_bus = 1'b0;
		align_trans_valid = 1'b0;
		align_trans_ready = 1'b0;
		align_status = 2'h0;
		case (state_q)
			3'd0:
				if (align_err && core_trans_valid_i) begin
					align_block_bus = 1'b1;
					align_trans_ready = 1'b1;
					if (core_align_err_wait_i) begin
						if (core_trans_we)
							state_n = (core_one_txn_pend_n ? 3'd1 : 3'd2);
						else
							state_n = (core_one_txn_pend_n ? 3'd3 : 3'd4);
					end
				end
			3'd2, 3'd4: begin
				align_block_bus = 1'b1;
				align_block_core = 1'b1;
				if (core_one_txn_pend_n)
					state_n = (state_q == 3'd2 ? 3'd1 : 3'd3);
			end
			3'd1, 3'd3: begin
				align_block_bus = 1'b1;
				align_block_core = 1'b1;
				align_trans_valid = 1'b1;
				align_status = (state_q == 3'd1 ? 2'h2 : 2'h1);
				state_n = 3'd0;
			end
			default:
				;
		endcase
	end
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0)
			state_q <= 3'd0;
		else
			state_q <= state_n;
	assign bus_trans_valid_o = core_trans_valid_i && !align_block_bus;
	assign bus_trans_o = core_trans_i;
	assign core_resp_valid_o = bus_resp_valid_i || align_trans_valid;
	assign core_resp_o[((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35-:((((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35) >= 36 ? ((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 0 : 37 - (((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35))] = bus_resp_i;
	assign core_resp_o[1-:2] = align_status;
	assign core_resp_o[35-:2] = 2'h0;
	assign core_resp_o[33-:32] = 1'sb0;
	assign align_err = align_check_en_i && misaligned_access_i;
	assign core_align_err_o = align_err;
	assign core_trans_ready_o = (bus_trans_ready_i && !align_block_core) || align_trans_ready;
	generate
		if (IF_STAGE) begin : alcheck_if
			assign core_trans_we = 1'b0;
		end
		else begin : alcheck_lsu
			assign core_trans_we = core_trans_i[1 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5))];
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_alignment_buffer (
	clk,
	rst_n,
	ctrl_fsm_i,
	priv_lvl_ctrl_i,
	branch_addr_i,
	prefetch_busy_o,
	one_txn_pend_n,
	fetch_valid_o,
	fetch_ready_i,
	fetch_branch_o,
	fetch_branch_addr_o,
	fetch_ptr_access_o,
	fetch_ptr_access_i,
	fetch_priv_lvl_o,
	fetch_priv_lvl_i,
	resp_valid_i,
	resp_i,
	instr_valid_o,
	instr_ready_i,
	instr_instr_o,
	instr_addr_o,
	instr_priv_lvl_o,
	instr_is_clic_ptr_o,
	instr_is_mret_ptr_o,
	instr_is_tbljmp_ptr_o,
	outstnd_cnt_q_o
);
	reg _sv2v_0;
	parameter [31:0] ALBUF_DEPTH = 3;
	parameter [31:0] ALBUF_CNT_WIDTH = $clog2(ALBUF_DEPTH);
	input wire clk;
	input wire rst_n;
	input wire [200:0] ctrl_fsm_i;
	input wire [2:0] priv_lvl_ctrl_i;
	input wire [31:0] branch_addr_i;
	output wire prefetch_busy_o;
	output wire one_txn_pend_n;
	output wire fetch_valid_o;
	input wire fetch_ready_i;
	output wire fetch_branch_o;
	output wire [31:0] fetch_branch_addr_o;
	output wire fetch_ptr_access_o;
	input wire fetch_ptr_access_i;
	output wire [1:0] fetch_priv_lvl_o;
	input wire [1:0] fetch_priv_lvl_i;
	input wire resp_valid_i;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	input wire [34:0] resp_i;
	output reg instr_valid_o;
	input wire instr_ready_i;
	output reg [34:0] instr_instr_o;
	output wire [31:0] instr_addr_o;
	output wire [1:0] instr_priv_lvl_o;
	output wire instr_is_clic_ptr_o;
	output wire instr_is_mret_ptr_o;
	output wire instr_is_tbljmp_ptr_o;
	output wire [ALBUF_CNT_WIDTH - 1:0] outstnd_cnt_q_o;
	reg [ALBUF_CNT_WIDTH:0] instr_cnt_n;
	reg [ALBUF_CNT_WIDTH:0] instr_cnt_q;
	reg [ALBUF_CNT_WIDTH - 1:0] outstanding_cnt_n;
	reg [ALBUF_CNT_WIDTH - 1:0] outstanding_cnt_q;
	wire outstanding_count_up;
	wire outstanding_count_down;
	reg [1:0] n_incoming_ins;
	reg pop_q;
	wire [1:0] n_pushed_ins;
	reg aligned_n;
	reg aligned_q;
	reg complete_n;
	reg complete_q;
	reg [1:0] n_flush_n;
	reg [1:0] n_flush_q;
	reg [1:0] n_flush_branch;
	reg bus_err_unaligned;
	wire bus_err;
	reg [1:0] mpu_status_unaligned;
	wire [1:0] mpu_status;
	wire resp_valid_gated;
	reg [1:0] instr_priv_lvl_q;
	reg is_clic_ptr_q;
	reg is_mret_ptr_q;
	reg is_tbljmp_ptr_q;
	reg ptr_fetch_accepted_q;
	assign resp_valid_gated = (n_flush_q > 0 ? 1'b0 : resp_valid_i);
	assign n_pushed_ins = n_incoming_ins;
	function automatic signed [ALBUF_CNT_WIDTH - 1:0] sv2v_cast_0C419_signed;
		input reg signed [ALBUF_CNT_WIDTH - 1:0] inp;
		sv2v_cast_0C419_signed = inp;
	endfunction
	assign fetch_valid_o = ((ctrl_fsm_i[199] && (outstanding_cnt_q < 2)) && !(ptr_fetch_accepted_q && !ctrl_fsm_i[198])) && ((((instr_cnt_q - pop_q) == 'd0) || (((instr_cnt_q - pop_q) == 'd1) && (outstanding_cnt_q == sv2v_cast_0C419_signed(0)))) || ctrl_fsm_i[198]);
	assign prefetch_busy_o = (outstanding_cnt_q != sv2v_cast_0C419_signed(0)) || fetch_valid_o;
	assign one_txn_pend_n = outstanding_cnt_n == sv2v_cast_0C419_signed(1);
	assign fetch_branch_o = ctrl_fsm_i[198];
	assign fetch_branch_addr_o = {branch_addr_i[31:1], 1'b0};
	reg [(ALBUF_DEPTH * 35) - 1:0] resp_q;
	reg [ALBUF_DEPTH - 1:0] valid_n;
	reg [ALBUF_DEPTH - 1:0] valid_int;
	reg [ALBUF_DEPTH - 1:0] valid_q;
	reg [34:0] resp_n;
	reg [ALBUF_CNT_WIDTH - 1:0] rptr;
	reg [ALBUF_CNT_WIDTH - 1:0] rptr_n;
	reg [ALBUF_CNT_WIDTH - 1:0] rptr2;
	reg [ALBUF_CNT_WIDTH - 1:0] wptr;
	reg [ALBUF_CNT_WIDTH - 1:0] wptr_n;
	reg [31:0] addr_n;
	reg [31:0] addr_q;
	wire [31:0] addr_incr;
	wire [31:0] instr;
	wire [31:0] instr_unaligned;
	wire valid;
	wire valid_unaligned_uncompressed;
	wire aligned_is_compressed;
	wire unaligned_is_compressed;
	assign instr = (valid_q[rptr] ? resp_q[(rptr * 35) + 34-:32] : resp_i[34-:32]);
	assign bus_err = (valid_q[rptr] ? resp_q[(rptr * 35) + 2] : resp_i[2]);
	assign mpu_status = (valid_q[rptr] ? resp_q[(rptr * 35) + 1-:2] : resp_i[1-:2]);
	assign instr_unaligned = (valid_q[rptr2] ? {resp_q[(rptr2 * 35) + 18-:16], instr[31:16]} : {resp_i[18:3], instr[31:16]});
	assign valid_unaligned_uncompressed = valid_q[rptr2] || (valid_q[rptr] && resp_valid_gated);
	assign valid = valid_q[rptr] || resp_valid_gated;
	assign unaligned_is_compressed = (instr[17:16] != 2'b11) && !((instr_is_clic_ptr_o || instr_is_mret_ptr_o) || instr_is_tbljmp_ptr_o);
	assign aligned_is_compressed = (instr[1:0] != 2'b11) && !((instr_is_clic_ptr_o || instr_is_mret_ptr_o) || instr_is_tbljmp_ptr_o);
	always @(*) begin
		if (_sv2v_0)
			;
		mpu_status_unaligned = 2'h0;
		bus_err_unaligned = 1'b0;
		if (valid_q[rptr2]) begin
			if (!unaligned_is_compressed) begin
				if ((resp_q[(rptr2 * 35) + 1-:2] != 2'h0) || (resp_q[(rptr * 35) + 1-:2] != 2'h0))
					mpu_status_unaligned = 2'h1;
				bus_err_unaligned = resp_q[(rptr2 * 35) + 2] || resp_q[(rptr * 35) + 2];
			end
			else begin
				mpu_status_unaligned = resp_q[(rptr * 35) + 1-:2];
				bus_err_unaligned = resp_q[(rptr * 35) + 2];
			end
		end
		else if (valid_q[rptr]) begin
			if (!unaligned_is_compressed) begin
				if ((resp_q[(rptr * 35) + 1-:2] != 2'h0) || (resp_i[1-:2] != 2'h0))
					mpu_status_unaligned = 2'h1;
				bus_err_unaligned = resp_q[(rptr * 35) + 2] || resp_i[2];
			end
			else begin
				mpu_status_unaligned = resp_q[(rptr * 35) + 1-:2];
				bus_err_unaligned = resp_q[(rptr * 35) + 2];
			end
		end
		else begin
			mpu_status_unaligned = resp_i[1-:2];
			bus_err_unaligned = resp_i[2];
		end
	end
	always @(*) begin
		if (_sv2v_0)
			;
		instr_instr_o[34-:32] = instr;
		instr_instr_o[2] = bus_err;
		instr_instr_o[1-:2] = mpu_status;
		instr_valid_o = 1'b0;
		if (ctrl_fsm_i[16])
			instr_valid_o = 1'b0;
		else if (instr_addr_o[1]) begin
			instr_instr_o[34-:32] = instr_unaligned;
			instr_instr_o[2] = bus_err_unaligned;
			instr_instr_o[1-:2] = mpu_status_unaligned;
			if (!valid)
				instr_valid_o = 1'b0;
			else if ((instr_is_clic_ptr_o || instr_is_mret_ptr_o) || instr_is_tbljmp_ptr_o)
				instr_valid_o = valid;
			else if (unaligned_is_compressed)
				instr_valid_o = valid;
			else
				instr_valid_o = valid_unaligned_uncompressed;
		end
		else
			instr_valid_o = valid;
	end
	always @(*) begin
		if (_sv2v_0)
			;
		resp_n = resp_q[wptr * 35+:35];
		valid_int = valid_q;
		wptr_n = wptr;
		if (resp_valid_gated) begin
			if (wptr < (ALBUF_DEPTH - 1))
				wptr_n = wptr + sv2v_cast_0C419_signed(1);
			else
				wptr_n = sv2v_cast_0C419_signed(0);
			resp_n = resp_i;
			valid_int[wptr] = 1'b1;
		end
	end
	assign addr_incr = {addr_q[31:2], 2'b00} + 32'h00000004;
	always @(*) begin
		if (_sv2v_0)
			;
		addr_n = addr_q;
		valid_n = valid_int;
		rptr_n = rptr;
		if (addr_q[1]) begin
			if (unaligned_is_compressed)
				addr_n = {addr_incr[31:2], 2'b00};
			else
				addr_n = {addr_incr[31:2], 2'b10};
			if (rptr < (ALBUF_DEPTH - 1))
				rptr_n = rptr + sv2v_cast_0C419_signed(1);
			else
				rptr_n = sv2v_cast_0C419_signed(0);
		end
		else if (aligned_is_compressed)
			addr_n = {addr_q[31:2], 2'b10};
		else begin
			addr_n = {addr_incr[31:2], 2'b00};
			if (rptr < (ALBUF_DEPTH - 1))
				rptr_n = rptr + sv2v_cast_0C419_signed(1);
			else
				rptr_n = sv2v_cast_0C419_signed(0);
		end
		if (instr_valid_o && instr_ready_i) begin
			if (addr_q[1] || (!addr_q[1] && !aligned_is_compressed))
				valid_n[rptr] = 1'b0;
		end
	end
	always @(*) begin
		if (_sv2v_0)
			;
		if (rptr < (ALBUF_DEPTH - 1))
			rptr2 = rptr + sv2v_cast_0C419_signed(1);
		else
			rptr2 = sv2v_cast_0C419_signed(0);
	end
	always @(*) begin
		if (_sv2v_0)
			;
		instr_cnt_n = instr_cnt_q;
		n_flush_branch = outstanding_cnt_q;
		if (ctrl_fsm_i[16]) begin
			instr_cnt_n = 'd0;
			if (resp_valid_i)
				n_flush_branch = outstanding_cnt_q - 2'd1;
		end
		else
			instr_cnt_n = (instr_cnt_q + n_pushed_ins) - (pop_q ? sv2v_cast_0C419_signed(1) : sv2v_cast_0C419_signed(0));
	end
	assign outstanding_count_up = fetch_valid_o && fetch_ready_i;
	assign outstanding_count_down = resp_valid_i;
	always @(*) begin
		if (_sv2v_0)
			;
		outstanding_cnt_n = outstanding_cnt_q;
		case ({outstanding_count_up, outstanding_count_down})
			2'b00: outstanding_cnt_n = outstanding_cnt_q;
			2'b01: outstanding_cnt_n = outstanding_cnt_q - 1'b1;
			2'b10: outstanding_cnt_n = outstanding_cnt_q + 1'b1;
			2'b11: outstanding_cnt_n = outstanding_cnt_q;
			default:
				;
		endcase
	end
	always @(*) begin
		if (_sv2v_0)
			;
		aligned_n = aligned_q;
		complete_n = complete_q;
		n_incoming_ins = 2'd0;
		if (ctrl_fsm_i[198]) begin
			aligned_n = !branch_addr_i[1];
			complete_n = branch_addr_i[1];
		end
		else if (resp_valid_gated) begin
			if (aligned_q) begin
				if (resp_i[4:3] == 2'b11)
					n_incoming_ins = 2'd1;
				else if (resp_i[20:19] == 2'b11) begin
					n_incoming_ins = 2'd1;
					aligned_n = 1'b0;
					complete_n = 1'b0;
				end
				else begin
					n_incoming_ins = 2'd2;
					aligned_n = 1'b1;
					complete_n = 1'b1;
				end
			end
			else if (complete_q) begin
				if (resp_i[20:19] == 2'b11) begin
					n_incoming_ins = 2'd0;
					aligned_n = 1'b0;
					complete_n = 1'b0;
				end
				else begin
					n_incoming_ins = 2'd1;
					aligned_n = 1'b1;
					complete_n = 1'b1;
				end
			end
			else if (resp_i[20:19] == 2'b11) begin
				n_incoming_ins = 2'd1;
				aligned_n = 1'b0;
				complete_n = 1'b0;
			end
			else begin
				n_incoming_ins = 2'd2;
				aligned_n = 1'b1;
				complete_n = 1'b1;
			end
		end
	end
	always @(*) begin
		if (_sv2v_0)
			;
		n_flush_n = n_flush_q;
		if (ctrl_fsm_i[198])
			n_flush_n = n_flush_branch;
		else if (resp_valid_i && (n_flush_q > 0))
			n_flush_n = n_flush_q - 2'b01;
	end
	function automatic [31:0] sv2v_cast_EA60D;
		input reg [31:0] inp;
		sv2v_cast_EA60D = inp;
	endfunction
	function automatic [32:0] sv2v_cast_33;
		input reg [32:0] inp;
		sv2v_cast_33 = inp;
	endfunction
	localparam [34:0] cv32e40x_pkg_INST_RESP_RESET_VAL = {sv2v_cast_33({sv2v_cast_EA60D(32'h00000003), 1'b0}), 2'h0};
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0) begin
			addr_q <= 1'sb0;
			resp_q <= cv32e40x_pkg_INST_RESP_RESET_VAL;
			valid_q <= 1'sb0;
			aligned_q <= 1'b0;
			complete_q <= 1'b0;
			n_flush_q <= 'd0;
			instr_cnt_q <= 'd0;
			outstanding_cnt_q <= 'd0;
			rptr <= 'd0;
			wptr <= 'd0;
			pop_q <= 1'b0;
			is_clic_ptr_q <= 1'b0;
			is_mret_ptr_q <= 1'b0;
			is_tbljmp_ptr_q <= 1'b0;
			ptr_fetch_accepted_q <= 1'b0;
		end
		else begin
			if (ctrl_fsm_i[16])
				valid_q <= 1'sb0;
			else begin
				if (resp_valid_gated)
					resp_q[wptr * 35+:35] <= resp_n;
				if ((instr_valid_o && instr_ready_i) || resp_valid_gated)
					valid_q <= valid_n;
			end
			if (ctrl_fsm_i[198]) begin
				addr_q <= branch_addr_i;
				wptr <= 'd0;
				rptr <= 'd0;
				is_clic_ptr_q <= ctrl_fsm_i[197] && (ctrl_fsm_i[195-:4] == 4'b1101);
				is_mret_ptr_q <= ctrl_fsm_i[197] && (ctrl_fsm_i[195-:4] == 4'b0001);
				is_tbljmp_ptr_q <= ctrl_fsm_i[196];
			end
			else begin
				if (resp_valid_gated)
					wptr <= wptr_n;
				if (instr_valid_o && instr_ready_i) begin
					addr_q <= addr_n;
					rptr <= rptr_n;
					is_clic_ptr_q <= 1'b0;
					is_mret_ptr_q <= 1'b0;
					is_tbljmp_ptr_q <= 1'b0;
				end
			end
			if ((fetch_valid_o && fetch_ready_i) && fetch_ptr_access_i)
				ptr_fetch_accepted_q <= 1'b1;
			else if (ctrl_fsm_i[198])
				ptr_fetch_accepted_q <= 1'b0;
			pop_q <= instr_valid_o && instr_ready_i;
			aligned_q <= aligned_n;
			complete_q <= complete_n;
			n_flush_q <= n_flush_n;
			instr_cnt_q <= instr_cnt_n;
			outstanding_cnt_q <= outstanding_cnt_n;
		end
	assign outstnd_cnt_q_o = outstanding_cnt_q;
	assign instr_addr_o = addr_q;
	assign instr_is_clic_ptr_o = is_clic_ptr_q;
	assign instr_is_mret_ptr_o = is_mret_ptr_q;
	assign instr_is_tbljmp_ptr_o = is_tbljmp_ptr_q;
	assign fetch_ptr_access_o = ctrl_fsm_i[198] && (ctrl_fsm_i[197] || ctrl_fsm_i[196]);
	assign fetch_priv_lvl_o = (priv_lvl_ctrl_i[2] ? priv_lvl_ctrl_i[1-:2] : instr_priv_lvl_q);
	always @(posedge clk or negedge rst_n)
		if (!rst_n)
			instr_priv_lvl_q <= 2'b11;
		else if (priv_lvl_ctrl_i[2])
			instr_priv_lvl_q <= priv_lvl_ctrl_i[1-:2];
	assign instr_priv_lvl_o = fetch_priv_lvl_i;
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_alu_b_cpop (
	operand_i,
	result_o
);
	input wire [31:0] operand_i;
	output wire [5:0] result_o;
	wire [191:0] sum;
	assign result_o = sum[186+:6];
	assign sum[0+:6] = {5'h00, operand_i[0]};
	genvar _gv_i_6;
	generate
		for (_gv_i_6 = 1; _gv_i_6 < 32; _gv_i_6 = _gv_i_6 + 1) begin : genblk1
			localparam i = _gv_i_6;
			assign sum[i * 6+:6] = sum[(i - 1) * 6+:6] + {5'h00, operand_i[i]};
		end
	endgenerate
endmodule
module cv32e40x_alu (
	operator_i,
	operand_a_i,
	operand_b_i,
	muldiv_operand_b_i,
	result_o,
	cmp_result_o,
	div_clz_en_i,
	div_clz_data_rev_i,
	div_clz_result_o,
	div_shift_en_i,
	div_shift_amt_i,
	div_op_b_shifted_o
);
	reg _sv2v_0;
	parameter [1:0] B_EXT = 2'd0;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	input wire [5:0] operator_i;
	input wire [31:0] operand_a_i;
	input wire [31:0] operand_b_i;
	input wire [31:0] muldiv_operand_b_i;
	output reg [31:0] result_o;
	output reg cmp_result_o;
	input wire div_clz_en_i;
	input wire [31:0] div_clz_data_rev_i;
	output wire [5:0] div_clz_result_o;
	input wire div_shift_en_i;
	input wire [5:0] div_shift_amt_i;
	output wire [31:0] div_op_b_shifted_o;
	localparam RV32B_ZBS = (B_EXT == 2'd2) || (B_EXT == 2'd3);
	wire [31:0] operand_a_rev;
	wire [31:0] operand_b_rev;
	function automatic [31:0] _sv2v_strm_A7634;
		input reg [31:0] inp;
		reg [31:0] _sv2v_strm_BEEC1_inp;
		reg [31:0] _sv2v_strm_BEEC1_out;
		integer _sv2v_strm_BEEC1_idx;
		begin
			_sv2v_strm_BEEC1_inp = {inp};
			for (_sv2v_strm_BEEC1_idx = 0; _sv2v_strm_BEEC1_idx <= 31; _sv2v_strm_BEEC1_idx = _sv2v_strm_BEEC1_idx + 1)
				_sv2v_strm_BEEC1_out[31 - _sv2v_strm_BEEC1_idx-:1] = _sv2v_strm_BEEC1_inp[_sv2v_strm_BEEC1_idx+:1];
			_sv2v_strm_A7634 = _sv2v_strm_BEEC1_out << 0;
		end
	endfunction
	assign operand_a_rev = _sv2v_strm_A7634({operand_a_i});
	function automatic [31:0] _sv2v_strm_313C4;
		input reg [31:0] inp;
		reg [31:0] _sv2v_strm_BEEC1_inp;
		reg [31:0] _sv2v_strm_BEEC1_out;
		integer _sv2v_strm_BEEC1_idx;
		begin
			_sv2v_strm_BEEC1_inp = {inp};
			for (_sv2v_strm_BEEC1_idx = 0; _sv2v_strm_BEEC1_idx <= 31; _sv2v_strm_BEEC1_idx = _sv2v_strm_BEEC1_idx + 1)
				_sv2v_strm_BEEC1_out[31 - _sv2v_strm_BEEC1_idx-:1] = _sv2v_strm_BEEC1_inp[_sv2v_strm_BEEC1_idx+:1];
			_sv2v_strm_313C4 = _sv2v_strm_BEEC1_out << 0;
		end
	endfunction
	assign operand_b_rev = _sv2v_strm_313C4({operand_b_i});
	wire [32:0] adder_in_a;
	wire [32:0] adder_in_b;
	wire [31:0] adder_result;
	wire [33:0] adder_result_expanded;
	wire adder_subtract;
	assign adder_subtract = operator_i[3];
	assign adder_in_a = {operand_a_i, 1'b1};
	assign adder_in_b = {(adder_subtract ? ~operand_b_i : operand_b_i), adder_subtract};
	assign adder_result_expanded = $unsigned(adder_in_a) + $unsigned(adder_in_b);
	assign adder_result = adder_result_expanded[32:1];
	reg [5:0] shifter_shamt;
	wire shifter_rshift;
	reg [31:0] shifter_aa;
	reg [31:0] shifter_bb;
	reg [63:0] shifter_tmp;
	reg [31:0] shifter_result;
	assign shifter_rshift = operator_i[2];
	always @(*) begin
		if (_sv2v_0)
			;
		if (div_shift_en_i)
			shifter_shamt = {1'b0, div_shift_amt_i[4:0]};
		else if (shifter_rshift)
			shifter_shamt = -{1'b0, operand_b_i[4:0]};
		else
			shifter_shamt = {1'b0, operand_b_i[4:0]};
	end
	function automatic [5:0] sv2v_cast_9A8CC;
		input reg [5:0] inp;
		sv2v_cast_9A8CC = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		shifter_aa = (div_shift_en_i ? muldiv_operand_b_i : operand_a_i);
		shifter_bb = 32'h00000000;
		(* full_case, parallel_case *)
		case (operator_i)
			sv2v_cast_9A8CC(6'b001101): shifter_bb = {32 {operand_a_i[31]}};
			sv2v_cast_9A8CC(6'b100001), sv2v_cast_9A8CC(6'b100101): shifter_bb = operand_a_i;
			sv2v_cast_9A8CC(6'b110001), sv2v_cast_9A8CC(6'b101001), sv2v_cast_9A8CC(6'b111001):
				if (RV32B_ZBS)
					shifter_aa = 32'h00000001;
			default:
				;
		endcase
	end
	always @(*) begin
		if (_sv2v_0)
			;
		shifter_tmp = {shifter_bb, shifter_aa};
		shifter_tmp = (shifter_shamt[5] ? {shifter_tmp[31:0], shifter_tmp[63:32]} : shifter_tmp);
		shifter_tmp = (shifter_shamt[4] ? {shifter_tmp[47:0], shifter_tmp[63:48]} : shifter_tmp);
		shifter_tmp = (shifter_shamt[3] ? {shifter_tmp[55:0], shifter_tmp[63:56]} : shifter_tmp);
		shifter_tmp = (shifter_shamt[2] ? {shifter_tmp[59:0], shifter_tmp[63:60]} : shifter_tmp);
		shifter_tmp = (shifter_shamt[1] ? {shifter_tmp[61:0], shifter_tmp[63:62]} : shifter_tmp);
		shifter_tmp = (shifter_shamt[0] ? {shifter_tmp[62:0], shifter_tmp[63:63]} : shifter_tmp);
	end
	generate
		if (RV32B_ZBS) begin : gen_shift_zbs
			always @(*) begin
				if (_sv2v_0)
					;
				shifter_result = shifter_tmp[31:0];
				(* full_case, parallel_case *)
				case (operator_i)
					sv2v_cast_9A8CC(6'b111101): shifter_result = 32'h00000001 & shifter_tmp[31:0];
					sv2v_cast_9A8CC(6'b110001): shifter_result = operand_a_i | shifter_tmp[31:0];
					sv2v_cast_9A8CC(6'b101001): shifter_result = operand_a_i & ~shifter_tmp[31:0];
					sv2v_cast_9A8CC(6'b111001): shifter_result = operand_a_i ^ shifter_tmp[31:0];
					default:
						;
				endcase
			end
		end
		else begin : gen_shift_nozbs
			wire [32:1] sv2v_tmp_A1304;
			assign sv2v_tmp_A1304 = shifter_tmp[31:0];
			always @(*) shifter_result = sv2v_tmp_A1304;
		end
	endgenerate
	assign div_op_b_shifted_o = shifter_tmp[31:0];
	wire [31:0] result_shnadd;
	assign result_shnadd = (operand_a_i << (operator_i == sv2v_cast_9A8CC(6'b100010) ? 1 : (operator_i == sv2v_cast_9A8CC(6'b100100) ? 2 : 3))) + operand_b_i;
	wire is_equal;
	wire is_greater;
	wire is_signed;
	assign is_signed = operator_i[3];
	assign is_equal = operand_a_i == operand_b_i;
	assign is_greater = $signed({operand_a_i[31] & is_signed, operand_a_i}) > $signed({operand_b_i[31] & is_signed, operand_b_i});
	always @(*) begin
		if (_sv2v_0)
			;
		cmp_result_o = is_equal;
		(* full_case, parallel_case *)
		case (operator_i)
			sv2v_cast_9A8CC(6'b010000): cmp_result_o = is_equal;
			sv2v_cast_9A8CC(6'b010001): cmp_result_o = !is_equal;
			sv2v_cast_9A8CC(6'b011101), sv2v_cast_9A8CC(6'b010111): cmp_result_o = is_greater || is_equal;
			sv2v_cast_9A8CC(6'b011100), sv2v_cast_9A8CC(6'b010110): cmp_result_o = !(is_greater || is_equal);
			default:
				;
		endcase
	end
	wire [31:0] min_minu_result;
	wire [31:0] max_maxu_result;
	assign min_minu_result = (!is_greater ? operand_a_i : operand_b_i);
	assign max_maxu_result = (is_greater ? operand_a_i : operand_b_i);
	wire [31:0] clz_data_in;
	wire [4:0] ff1_result;
	wire ff_no_one;
	wire [5:0] cpop_result_o;
	assign clz_data_in = (div_clz_en_i ? div_clz_data_rev_i : (operator_i == sv2v_cast_9A8CC(6'b101000) ? operand_a_i : operand_a_rev));
	cv32e40x_ff_one ff_one_i(
		.in_i(clz_data_in),
		.first_one_o(ff1_result),
		.no_ones_o(ff_no_one)
	);
	assign div_clz_result_o = (ff_no_one ? 6'd32 : ff1_result);
	cv32e40x_alu_b_cpop alu_b_cpop_i(
		.operand_i(operand_a_i),
		.result_o(cpop_result_o)
	);
	reg [31:0] clmul_result;
	wire [31:0] clmulr_result;
	wire [31:0] clmulh_result;
	generate
		if (B_EXT == 2'd3) begin : clmul
			wire [31:0] clmul_op_a;
			wire [31:0] clmul_op_b;
			assign clmul_op_a = (operator_i != sv2v_cast_9A8CC(6'b100111) ? operand_a_rev : operand_a_i);
			assign clmul_op_b = (operator_i != sv2v_cast_9A8CC(6'b100111) ? operand_b_rev : operand_b_i);
			always @(*) begin
				if (_sv2v_0)
					;
				clmul_result = 1'sb0;
				begin : sv2v_autoblock_1
					integer i;
					for (i = 0; i < 32; i = i + 1)
						begin : sv2v_autoblock_2
							integer j;
							for (j = 0; j < (i + 1); j = j + 1)
								clmul_result[i] = clmul_result[i] ^ (clmul_op_a[i - j] & clmul_op_b[j]);
						end
				end
			end
			function automatic [31:0] _sv2v_strm_B2671;
				input reg [31:0] inp;
				reg [31:0] _sv2v_strm_BEEC1_inp;
				reg [31:0] _sv2v_strm_BEEC1_out;
				integer _sv2v_strm_BEEC1_idx;
				begin
					_sv2v_strm_BEEC1_inp = {inp};
					for (_sv2v_strm_BEEC1_idx = 0; _sv2v_strm_BEEC1_idx <= 31; _sv2v_strm_BEEC1_idx = _sv2v_strm_BEEC1_idx + 1)
						_sv2v_strm_BEEC1_out[31 - _sv2v_strm_BEEC1_idx-:1] = _sv2v_strm_BEEC1_inp[_sv2v_strm_BEEC1_idx+:1];
					_sv2v_strm_B2671 = _sv2v_strm_BEEC1_out << 0;
				end
			endfunction
			assign clmulr_result = _sv2v_strm_B2671({clmul_result});
			assign clmulh_result = {1'b0, clmulr_result[31:1]};
		end
		else begin : no_clmul
			wire [32:1] sv2v_tmp_7D540;
			assign sv2v_tmp_7D540 = 32'h00000000;
			always @(*) clmul_result = sv2v_tmp_7D540;
			assign clmulr_result = 32'h00000000;
			assign clmulh_result = 32'h00000000;
		end
	endgenerate
	always @(*) begin
		if (_sv2v_0)
			;
		result_o = 32'h00000000;
		(* full_case, parallel_case *)
		case (operator_i)
			sv2v_cast_9A8CC(6'b000111): result_o = operand_a_i & operand_b_i;
			sv2v_cast_9A8CC(6'b000110): result_o = operand_a_i | operand_b_i;
			sv2v_cast_9A8CC(6'b000100): result_o = operand_a_i ^ operand_b_i;
			sv2v_cast_9A8CC(6'b101111): result_o = operand_a_i & ~operand_b_i;
			sv2v_cast_9A8CC(6'b101110): result_o = operand_a_i | ~operand_b_i;
			sv2v_cast_9A8CC(6'b101100): result_o = operand_a_i ^ ~operand_b_i;
			sv2v_cast_9A8CC(6'b000000), sv2v_cast_9A8CC(6'b001000): result_o = adder_result;
			sv2v_cast_9A8CC(6'b000001), sv2v_cast_9A8CC(6'b000101), sv2v_cast_9A8CC(6'b001101), sv2v_cast_9A8CC(6'b100001), sv2v_cast_9A8CC(6'b100101), sv2v_cast_9A8CC(6'b110001), sv2v_cast_9A8CC(6'b101001), sv2v_cast_9A8CC(6'b111001), sv2v_cast_9A8CC(6'b111101): result_o = shifter_result;
			sv2v_cast_9A8CC(6'b011010), sv2v_cast_9A8CC(6'b010011): result_o = {31'b0000000000000000000000000000000, !(is_greater || is_equal)};
			sv2v_cast_9A8CC(6'b100010), sv2v_cast_9A8CC(6'b100100), sv2v_cast_9A8CC(6'b100110): result_o = result_shnadd;
			sv2v_cast_9A8CC(6'b100000), sv2v_cast_9A8CC(6'b101000): result_o = {26'h0000000, div_clz_result_o};
			sv2v_cast_9A8CC(6'b100011): result_o = {26'h0000000, cpop_result_o};
			sv2v_cast_9A8CC(6'b111100), sv2v_cast_9A8CC(6'b110101): result_o = min_minu_result;
			sv2v_cast_9A8CC(6'b111110), sv2v_cast_9A8CC(6'b110111): result_o = max_maxu_result;
			sv2v_cast_9A8CC(6'b110010): result_o = {{8 {|operand_a_i[31:24]}}, {8 {|operand_a_i[23:16]}}, {8 {|operand_a_i[15:8]}}, {8 {|operand_a_i[7:0]}}};
			sv2v_cast_9A8CC(6'b110100): result_o = {operand_a_i[7:0], operand_a_i[15:8], operand_a_i[23:16], operand_a_i[31:24]};
			sv2v_cast_9A8CC(6'b010010): result_o = {{24 {operand_a_i[7]}}, operand_a_i[7:0]};
			sv2v_cast_9A8CC(6'b010100): result_o = {{16 {operand_a_i[15]}}, operand_a_i[15:0]};
			sv2v_cast_9A8CC(6'b010101): result_o = {16'h0000, operand_a_i[15:0]};
			sv2v_cast_9A8CC(6'b100111): result_o = clmul_result;
			sv2v_cast_9A8CC(6'b101011): result_o = clmulh_result;
			sv2v_cast_9A8CC(6'b101010): result_o = clmulr_result;
			default:
				;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_b_decoder (
	instr_rdata_i,
	decoder_ctrl_o
);
	reg _sv2v_0;
	parameter [1:0] B_EXT = 2'd0;
	input wire [31:0] instr_rdata_i;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	output reg [54:0] decoder_ctrl_o;
	localparam RV32B_ZBA = ((B_EXT == 2'd1) || (B_EXT == 2'd2)) || (B_EXT == 2'd3);
	localparam RV32B_ZBB = ((B_EXT == 2'd1) || (B_EXT == 2'd2)) || (B_EXT == 2'd3);
	localparam RV32B_ZBS = (B_EXT == 2'd2) || (B_EXT == 2'd3);
	localparam RV32B_ZBC = B_EXT == 2'd3;
	function automatic [5:0] sv2v_cast_9A8CC;
		input reg [5:0] inp;
		sv2v_cast_9A8CC = inp;
	endfunction
	function automatic [0:0] sv2v_cast_ACD50;
		input reg [0:0] inp;
		sv2v_cast_ACD50 = inp;
	endfunction
	function automatic [1:0] sv2v_cast_B845F;
		input reg [1:0] inp;
		sv2v_cast_B845F = inp;
	endfunction
	function automatic [1:0] sv2v_cast_1A666;
		input reg [1:0] inp;
		sv2v_cast_1A666 = inp;
	endfunction
	localparam [54:0] cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN = {4'b0000, sv2v_cast_9A8CC(6'b010011), 12'b111010100010, sv2v_cast_ACD50(1'b0), 3'b000, sv2v_cast_B845F(2'b00), 4'b0000, sv2v_cast_1A666(2'b00), 21'b000000000000100000000};
	always @(*) begin
		if (_sv2v_0)
			;
		decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		decoder_ctrl_o[8] = 1'b0;
		(* full_case, parallel_case *)
		case (instr_rdata_i[6:0])
			7'h33: begin
				decoder_ctrl_o[54] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b00;
				decoder_ctrl_o[42-:2] = 2'b00;
				decoder_ctrl_o[25] = 1'b1;
				decoder_ctrl_o[26] = 1'b1;
				decoder_ctrl_o[24] = 1'b1;
				(* full_case, parallel_case *)
				case ({instr_rdata_i[31:25], instr_rdata_i[14:12]})
					10'b0010000010:
						if (RV32B_ZBA)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100010);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0010000100:
						if (RV32B_ZBA)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100100);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0010000110:
						if (RV32B_ZBA)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100110);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000101100:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b111100);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000101101:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b110101);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000101110:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b111110);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000101111:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b110111);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0100000111:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b101111);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0100000110:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b101110);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0100000100:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b101100);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0110000001:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100001);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0110000101:
						if (RV32B_ZBB)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100101);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000100100:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010101);
							decoder_ctrl_o[42-:2] = 2'b10;
							decoder_ctrl_o[26] = 1'b0;
							if (instr_rdata_i[24:20] != 5'b00000)
								decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000101001:
						if (RV32B_ZBC)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100111);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000101011:
						if (RV32B_ZBC)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b101011);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000101010:
						if (RV32B_ZBC)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b101010);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0010100001:
						if (RV32B_ZBS)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b110001);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0100100001:
						if (RV32B_ZBS)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b101001);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0110100001:
						if (RV32B_ZBS)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b111001);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0100100101:
						if (RV32B_ZBS)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b111101);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
				endcase
			end
			7'h13: begin
				decoder_ctrl_o[54] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b00;
				decoder_ctrl_o[25] = 1'b1;
				decoder_ctrl_o[26] = 1'b0;
				decoder_ctrl_o[24] = 1'b1;
				(* full_case, parallel_case *)
				casez ({instr_rdata_i[31:25], instr_rdata_i[24:20], instr_rdata_i[14:12]})
					15'b011000000000001:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100000);
							decoder_ctrl_o[42-:2] = 2'b10;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b011000000001001:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b101000);
							decoder_ctrl_o[42-:2] = 2'b10;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b011000000010001:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100011);
							decoder_ctrl_o[42-:2] = 2'b10;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b001010000111101:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b110010);
							decoder_ctrl_o[42-:2] = 2'b10;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b011010011000101:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b110100);
							decoder_ctrl_o[42-:2] = 2'b10;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b011000000100001:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010010);
							decoder_ctrl_o[42-:2] = 2'b10;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b011000000101001:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010100);
							decoder_ctrl_o[42-:2] = 2'b10;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b0110000zzzzz101:
						if (RV32B_ZBB) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b100101);
							decoder_ctrl_o[42-:2] = 2'b01;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b0010100zzzzz001:
						if (RV32B_ZBS) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b110001);
							decoder_ctrl_o[42-:2] = 2'b01;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b0100100zzzzz001:
						if (RV32B_ZBS) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b101001);
							decoder_ctrl_o[42-:2] = 2'b01;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b0110100zzzzz001:
						if (RV32B_ZBS) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b111001);
							decoder_ctrl_o[42-:2] = 2'b01;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					15'b0100100zzzzz101:
						if (RV32B_ZBS) begin
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b111101);
							decoder_ctrl_o[42-:2] = 2'b01;
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
				endcase
			end
			default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_clic_int_controller (
	clk,
	rst_n,
	clic_irq_i,
	clic_irq_id_i,
	clic_irq_level_i,
	clic_irq_priv_i,
	clic_irq_shv_i,
	irq_req_ctrl_o,
	irq_id_ctrl_o,
	irq_wu_ctrl_o,
	irq_clic_shv_o,
	irq_clic_level_o,
	irq_clic_priv_o,
	mstatus_i,
	mintthresh_th_i,
	mintstatus_i,
	mcause_i,
	priv_lvl_i,
	mnxti_irq_pending_o,
	mnxti_irq_id_o,
	mnxti_irq_level_o
);
	parameter [31:0] CLIC_ID_WIDTH = 5;
	input wire clk;
	input wire rst_n;
	input wire clic_irq_i;
	input wire [CLIC_ID_WIDTH - 1:0] clic_irq_id_i;
	input wire [7:0] clic_irq_level_i;
	input wire [1:0] clic_irq_priv_i;
	input wire clic_irq_shv_i;
	output wire irq_req_ctrl_o;
	output wire [9:0] irq_id_ctrl_o;
	output wire irq_wu_ctrl_o;
	output wire irq_clic_shv_o;
	output wire [7:0] irq_clic_level_o;
	output wire [1:0] irq_clic_priv_o;
	input wire [31:0] mstatus_i;
	input wire [7:0] mintthresh_th_i;
	input wire [31:0] mintstatus_i;
	input wire [31:0] mcause_i;
	input wire [1:0] priv_lvl_i;
	output wire mnxti_irq_pending_o;
	output wire [CLIC_ID_WIDTH - 1:0] mnxti_irq_id_o;
	output wire [7:0] mnxti_irq_level_o;
	wire global_irq_enable;
	wire [7:0] effective_irq_level;
	reg clic_irq_q;
	reg [CLIC_ID_WIDTH - 1:0] clic_irq_id_q;
	reg [7:0] clic_irq_level_q;
	reg clic_irq_shv_q;
	wire unused_signals;
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0)
			clic_irq_q <= 1'b0;
		else
			clic_irq_q <= clic_irq_i;
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0) begin
			clic_irq_id_q <= 1'sb0;
			clic_irq_level_q <= 1'sb0;
			clic_irq_shv_q <= 1'b0;
		end
		else if (clic_irq_i) begin
			clic_irq_id_q <= clic_irq_id_i;
			clic_irq_level_q <= clic_irq_level_i;
			clic_irq_shv_q <= clic_irq_shv_i;
		end
	assign global_irq_enable = mstatus_i[3] || (priv_lvl_i < 2'b11);
	assign effective_irq_level = (mintthresh_th_i > mintstatus_i[31-:8] ? mintthresh_th_i : mintstatus_i[31-:8]);
	assign irq_req_ctrl_o = (clic_irq_q && global_irq_enable) && (priv_lvl_i == 2'b11 ? clic_irq_level_q > effective_irq_level : clic_irq_level_q > {8 {1'sb0}});
	function automatic [9:0] sv2v_cast_10;
		input reg [9:0] inp;
		sv2v_cast_10 = inp;
	endfunction
	assign irq_id_ctrl_o = sv2v_cast_10(clic_irq_id_q);
	assign irq_wu_ctrl_o = clic_irq_i && (priv_lvl_i == 2'b11 ? clic_irq_level_i > effective_irq_level : clic_irq_level_i > {8 {1'sb0}});
	assign irq_clic_shv_o = clic_irq_shv_q;
	assign irq_clic_level_o = clic_irq_level_q;
	assign irq_clic_priv_o = 2'b11;
	assign mnxti_irq_pending_o = ((clic_irq_q && (clic_irq_level_q > mcause_i[23-:8])) && (clic_irq_level_q > mintthresh_th_i)) && !clic_irq_shv_q;
	assign mnxti_irq_id_o = clic_irq_id_q;
	assign mnxti_irq_level_o = clic_irq_level_q;
	assign unused_signals = |clic_irq_priv_i;
endmodule
module cv32e40x_compressed_decoder (
	instr_i,
	instr_is_ptr_i,
	instr_o,
	is_compressed_o,
	illegal_instr_o
);
	reg _sv2v_0;
	parameter [0:0] ZC_EXT = 0;
	parameter [1:0] B_EXT = 2'd0;
	parameter [1:0] M_EXT = 2'd0;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	input wire [34:0] instr_i;
	input wire instr_is_ptr_i;
	output reg [34:0] instr_o;
	output reg is_compressed_o;
	output reg illegal_instr_o;
	wire [31:0] instr;
	assign instr = instr_i[34-:32];
	always @(*) begin
		if (_sv2v_0)
			;
		illegal_instr_o = 1'b0;
		instr_o = instr_i;
		if (instr_is_ptr_i)
			is_compressed_o = 1'b0;
		else begin
			is_compressed_o = instr[1:0] != 2'b11;
			(* full_case, parallel_case *)
			case (instr[1:0])
				2'b00:
					(* full_case, parallel_case *)
					case (instr[15:13])
						3'b000: begin
							instr_o[34-:32] = {2'b00, instr[10:7], instr[12:11], instr[5], instr[6], 12'h041, instr[4:2], 7'h13};
							if (instr[12:5] == 8'b00000000)
								illegal_instr_o = 1'b1;
						end
						3'b010: instr_o[34-:32] = {5'b00000, instr[5], instr[12:10], instr[6], 4'b0001, instr[9:7], 5'b01001, instr[4:2], 7'h03};
						3'b110: instr_o[34-:32] = {5'b00000, instr[5], instr[12], 2'b01, instr[4:2], 2'b01, instr[9:7], 3'b010, instr[11:10], instr[6], 9'h023};
						3'b100:
							if (ZC_EXT)
								(* full_case, parallel_case *)
								case (instr[12:10])
									3'b000: instr_o[34-:32] = {10'b0000000000, instr[5], instr[6], 2'b01, instr[9:7], 5'b10001, instr[4:2], 7'h03};
									3'b001: instr_o[34-:32] = {10'b0000000000, instr[5], 3'b001, instr[9:7], !instr[6], 4'b0101, instr[4:2], 7'h03};
									3'b010: instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 6'b000000, instr[5], instr[6], 7'h23};
									3'b011: begin
										instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 6'b001000, instr[5], 8'h23};
										if (instr[6])
											illegal_instr_o = 1'b1;
									end
									default: begin
										illegal_instr_o = 1'b1;
										instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 6'b001000, instr[5], 8'h23};
									end
								endcase
							else begin
								illegal_instr_o = 1'b1;
								instr_o[34-:32] = {5'b00000, instr[5], instr[12:10], instr[6], 4'b0001, instr[9:7], 5'b01001, instr[4:2], 7'h03};
							end
						3'b001, 3'b011, 3'b101, 3'b111: begin
							illegal_instr_o = 1'b1;
							instr_o[34-:32] = {5'b00000, instr[5], instr[12:10], instr[6], 4'b0001, instr[9:7], 5'b01001, instr[4:2], 7'h03};
						end
						default: begin
							instr_o[34-:32] = {5'b00000, instr[5], instr[12:10], instr[6], 4'b0001, instr[9:7], 5'b01001, instr[4:2], 7'h03};
							illegal_instr_o = 1'b1;
						end
					endcase
				2'b01:
					(* full_case, parallel_case *)
					case (instr[15:13])
						3'b000: instr_o[34-:32] = {{6 {instr[12]}}, instr[12], instr[6:2], instr[11:7], 3'b000, instr[11:7], 7'h13};
						3'b001, 3'b101: instr_o[34-:32] = {instr[12], instr[8], instr[10:9], instr[6], instr[7], instr[2], instr[11], instr[5:3], {9 {instr[12]}}, 4'b0000, !instr[15], 7'h6f};
						3'b010:
							if (instr[11:7] == 5'b00000)
								instr_o[34-:32] = {{6 {instr[12]}}, instr[12], instr[6:2], 8'b00000000, instr[11:7], 7'h13};
							else
								instr_o[34-:32] = {{6 {instr[12]}}, instr[12], instr[6:2], 8'b00000000, instr[11:7], 7'h13};
						3'b011:
							if ({instr[12], instr[6:2]} == 6'b000000) begin
								instr_o[34-:32] = {{15 {instr[12]}}, instr[6:2], instr[11:7], 7'h37};
								illegal_instr_o = 1'b1;
							end
							else if (instr[11:7] == 5'h02)
								instr_o[34-:32] = {{3 {instr[12]}}, instr[4:3], instr[5], instr[2], instr[6], 24'h010113};
							else if (instr[11:7] == 5'b00000)
								instr_o[34-:32] = {{15 {instr[12]}}, instr[6:2], instr[11:7], 7'h37};
							else
								instr_o[34-:32] = {{15 {instr[12]}}, instr[6:2], instr[11:7], 7'h37};
						3'b100:
							(* full_case, parallel_case *)
							case (instr[11:10])
								2'b00, 2'b01:
									if (instr[12] == 1'b1) begin
										instr_o[34-:32] = {1'b0, instr[10], 5'b00000, instr[6:2], 2'b01, instr[9:7], 5'b10101, instr[9:7], 7'h13};
										illegal_instr_o = 1'b1;
									end
									else if (instr[6:2] == 5'b00000)
										instr_o[34-:32] = {1'b0, instr[10], 5'b00000, instr[6:2], 2'b01, instr[9:7], 5'b10101, instr[9:7], 7'h13};
									else
										instr_o[34-:32] = {1'b0, instr[10], 5'b00000, instr[6:2], 2'b01, instr[9:7], 5'b10101, instr[9:7], 7'h13};
								2'b10: instr_o[34-:32] = {{6 {instr[12]}}, instr[12], instr[6:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h13};
								2'b11:
									(* full_case, parallel_case *)
									case ({instr[12], instr[6:5]})
										3'b000: instr_o[34-:32] = {9'b010000001, instr[4:2], 2'b01, instr[9:7], 5'b00001, instr[9:7], 7'h33};
										3'b001: instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b10001, instr[9:7], 7'h33};
										3'b010: instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11001, instr[9:7], 7'h33};
										3'b011: instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h33};
										3'b110:
											if (ZC_EXT && (M_EXT != 2'd0))
												instr_o[34-:32] = {9'b000000101, instr[4:2], 2'b01, instr[9:7], 5'b00001, instr[9:7], 7'h33};
											else begin
												instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h33};
												illegal_instr_o = 1'b1;
											end
										3'b111:
											if (ZC_EXT)
												(* full_case, parallel_case *)
												case (instr[4:2])
													3'b000: instr_o[34-:32] = {14'h03fd, instr[9:7], 5'b11101, instr[9:7], 7'h13};
													3'b001:
														if (B_EXT != 2'd0)
															instr_o[34-:32] = {14'b01100000010001, instr[9:7], 5'b00101, instr[9:7], 7'h13};
														else begin
															instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h33};
															illegal_instr_o = 1'b1;
														end
													3'b010:
														if (B_EXT != 2'd0)
															instr_o[34-:32] = {14'b00001000000001, instr[9:7], 5'b10001, instr[9:7], 7'h33};
														else begin
															instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h33};
															illegal_instr_o = 1'b1;
														end
													3'b011:
														if (B_EXT != 2'd0)
															instr_o[34-:32] = {14'b01100000010101, instr[9:7], 5'b00101, instr[9:7], 7'h13};
														else begin
															instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h33};
															illegal_instr_o = 1'b1;
														end
													3'b101: instr_o[34-:32] = {14'h3ffd, instr[9:7], 5'b10001, instr[9:7], 7'h13};
													default: begin
														instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h33};
														illegal_instr_o = 1'b1;
													end
												endcase
											else begin
												instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h33};
												illegal_instr_o = 1'b1;
											end
										3'b100, 3'b101: begin
											instr_o[34-:32] = {9'b000000001, instr[4:2], 2'b01, instr[9:7], 5'b11101, instr[9:7], 7'h33};
											illegal_instr_o = 1'b1;
										end
										default:
											;
									endcase
								default:
									;
							endcase
						3'b110, 3'b111: instr_o[34-:32] = {{4 {instr[12]}}, instr[6:5], instr[2], 7'b0000001, instr[9:7], 2'b00, instr[13], instr[11:10], instr[4:3], instr[12], 7'h63};
						default:
							;
					endcase
				2'b10:
					(* full_case, parallel_case *)
					case (instr[15:13])
						3'b000:
							if (instr[12] == 1'b1) begin
								instr_o[34-:32] = {7'b0000000, instr[6:2], instr[11:7], 3'b001, instr[11:7], 7'h13};
								illegal_instr_o = 1'b1;
							end
							else if ((instr[6:2] == 5'b00000) || (instr[11:7] == 5'b00000))
								instr_o[34-:32] = {7'b0000000, instr[6:2], instr[11:7], 3'b001, instr[11:7], 7'h13};
							else
								instr_o[34-:32] = {7'b0000000, instr[6:2], instr[11:7], 3'b001, instr[11:7], 7'h13};
						3'b010: begin
							instr_o[34-:32] = {4'b0000, instr[3:2], instr[12], instr[6:4], 10'h012, instr[11:7], 7'h03};
							if (instr[11:7] == 5'b00000)
								illegal_instr_o = 1'b1;
						end
						3'b100:
							if (instr[12] == 1'b0) begin
								if (instr[6:2] == 5'b00000) begin
									if (instr[11:7] == 5'b00000) begin
										instr_o[34-:32] = {7'b0000000, instr[6:2], 8'b00000000, instr[11:7], 7'h33};
										illegal_instr_o = 1'b1;
									end
									else
										instr_o[34-:32] = {12'b000000000000, instr[11:7], 15'h0067};
								end
								else if (instr[11:7] == 5'b00000)
									instr_o[34-:32] = {7'b0000000, instr[6:2], 8'b00000000, instr[11:7], 7'h33};
								else
									instr_o[34-:32] = {7'b0000000, instr[6:2], 8'b00000000, instr[11:7], 7'h33};
							end
							else if (instr[6:2] == 5'b00000) begin
								if (instr[11:7] == 5'b00000)
									instr_o[34-:32] = 32'h00100073;
								else
									instr_o[34-:32] = {12'b000000000000, instr[11:7], 15'h00e7};
							end
							else if (instr[11:7] == 5'b00000)
								instr_o[34-:32] = {7'b0000000, instr[6:2], instr[11:7], 3'b000, instr[11:7], 7'h33};
							else
								instr_o[34-:32] = {7'b0000000, instr[6:2], instr[11:7], 3'b000, instr[11:7], 7'h33};
						3'b110: instr_o[34-:32] = {4'b0000, instr[8:7], instr[12], instr[6:2], 8'h12, instr[11:9], 9'h023};
						3'b001, 3'b011, 3'b101, 3'b111: begin
							instr_o[34-:32] = {4'b0000, instr[3:2], instr[12], instr[6:4], 10'h012, instr[11:7], 7'h03};
							illegal_instr_o = 1'b1;
						end
						default:
							;
					endcase
				default: instr_o[34-:32] = instr_i[34-:32];
			endcase
		end
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_controller_bypass (
	rf_re_id_i,
	rf_raddr_id_i,
	if_id_pipe_i,
	id_ex_pipe_i,
	ex_wb_pipe_i,
	alu_jmpr_id_i,
	sys_mret_id_i,
	csr_en_raw_id_i,
	csr_counter_read_i,
	csr_mnxti_read_i,
	wb_ready_i,
	csr_irq_enable_write_i,
	lsu_atomic_ex_i,
	lsu_atomic_wb_i,
	lsu_bus_busy_i,
	csr_hz_i,
	ctrl_byp_o
);
	reg _sv2v_0;
	parameter [31:0] REGFILE_NUM_READ_PORTS = 2;
	parameter [1:0] A_EXT = 2'd0;
	input wire [REGFILE_NUM_READ_PORTS - 1:0] rf_re_id_i;
	localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
	input wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_ADDR_WIDTH) - 1:0] rf_raddr_id_i;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	input wire [190:0] if_id_pipe_i;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	input wire [352:0] id_ex_pipe_i;
	input wire [247:0] ex_wb_pipe_i;
	input wire alu_jmpr_id_i;
	input wire sys_mret_id_i;
	input wire csr_en_raw_id_i;
	input wire csr_counter_read_i;
	input wire csr_mnxti_read_i;
	input wire wb_ready_i;
	input wire csr_irq_enable_write_i;
	input wire [1:0] lsu_atomic_ex_i;
	input wire [1:0] lsu_atomic_wb_i;
	input wire lsu_bus_busy_i;
	input wire [27:0] csr_hz_i;
	output reg [17:0] ctrl_byp_o;
	wire [REGFILE_NUM_READ_PORTS - 1:0] rf_rd_ex_match;
	wire rf_rd_ex_jalr_match;
	wire [REGFILE_NUM_READ_PORTS - 1:0] rf_rd_wb_match;
	wire rf_rd_wb_jalr_match;
	wire [REGFILE_NUM_READ_PORTS - 1:0] rf_rd_ex_hz;
	wire [REGFILE_NUM_READ_PORTS - 1:0] rf_rd_wb_hz;
	wire csr_write_in_ex_wb;
	wire csr_write_in_ex;
	wire csr_write_in_wb;
	wire csr_impl_write_in_ex;
	wire csr_impl_write_in_wb;
	wire csr_expl_hz_ex;
	wire rf_we_ex;
	wire rf_we_wb;
	wire lsu_en_wb;
	wire [4:0] rf_waddr_ex;
	wire [4:0] rf_waddr_wb;
	wire sys_mret_unqual_id;
	wire csr_impl_rd_unqual_id;
	wire jmpr_unqual_id;
	wire tbljmp_unqual_id;
	assign rf_we_ex = id_ex_pipe_i[120] && id_ex_pipe_i[42];
	assign rf_we_wb = ex_wb_pipe_i[247] && ex_wb_pipe_i[53];
	assign lsu_en_wb = ex_wb_pipe_i[158] && ex_wb_pipe_i[53];
	assign rf_waddr_ex = id_ex_pipe_i[119-:5];
	assign rf_waddr_wb = ex_wb_pipe_i[246-:5];
	assign sys_mret_unqual_id = sys_mret_id_i && if_id_pipe_i[190];
	assign jmpr_unqual_id = alu_jmpr_id_i && if_id_pipe_i[190];
	assign tbljmp_unqual_id = if_id_pipe_i[151] && if_id_pipe_i[190];
	assign csr_impl_rd_unqual_id = sys_mret_unqual_id || tbljmp_unqual_id;
	assign csr_impl_write_in_ex = id_ex_pipe_i[42] && ((((id_ex_pipe_i[162] && id_ex_pipe_i[156]) || id_ex_pipe_i[46]) || id_ex_pipe_i[45]) || (id_ex_pipe_i[176] && csr_hz_i[26]));
	assign csr_impl_write_in_wb = ex_wb_pipe_i[53] && ((((ex_wb_pipe_i[49] && ex_wb_pipe_i[43]) || ex_wb_pipe_i[57]) || ex_wb_pipe_i[56]) || (ex_wb_pipe_i[206] && ex_wb_pipe_i[0]));
	assign csr_write_in_ex = id_ex_pipe_i[42] && (id_ex_pipe_i[176] || csr_impl_write_in_ex);
	assign csr_write_in_wb = ex_wb_pipe_i[53] && (ex_wb_pipe_i[206] || csr_impl_write_in_wb);
	assign csr_write_in_ex_wb = csr_write_in_ex || csr_write_in_wb;
	assign csr_expl_hz_ex = (csr_hz_i[25] && csr_hz_i[24]) && (csr_hz_i[23-:12] == csr_hz_i[11-:12]);
	wire [1:1] sv2v_tmp_6A02C;
	assign sv2v_tmp_6A02C = (id_ex_pipe_i[162] && (id_ex_pipe_i[155] || id_ex_pipe_i[154])) && id_ex_pipe_i[42];
	always @(*) ctrl_byp_o[8] = sv2v_tmp_6A02C;
	wire [1:1] sv2v_tmp_E4DC4;
	assign sv2v_tmp_E4DC4 = csr_mnxti_read_i;
	always @(*) ctrl_byp_o[7] = sv2v_tmp_E4DC4;
	wire [1:1] sv2v_tmp_FBA14;
	assign sv2v_tmp_FBA14 = csr_mnxti_read_i && (ex_wb_pipe_i[158] && ex_wb_pipe_i[53]);
	always @(*) ctrl_byp_o[6] = sv2v_tmp_FBA14;
	genvar _gv_i_7;
	generate
		for (_gv_i_7 = 0; _gv_i_7 < REGFILE_NUM_READ_PORTS; _gv_i_7 = _gv_i_7 + 1) begin : gen_forward_signals
			localparam i = _gv_i_7;
			assign rf_rd_ex_match[i] = ((rf_waddr_ex == rf_raddr_id_i[((REGFILE_NUM_READ_PORTS - 1) - i) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH]) && |rf_raddr_id_i[((REGFILE_NUM_READ_PORTS - 1) - i) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH]) && rf_re_id_i[i];
			assign rf_rd_wb_match[i] = ((rf_waddr_wb == rf_raddr_id_i[((REGFILE_NUM_READ_PORTS - 1) - i) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH]) && |rf_raddr_id_i[((REGFILE_NUM_READ_PORTS - 1) - i) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH]) && rf_re_id_i[i];
			assign rf_rd_ex_hz[i] = rf_rd_ex_match[i];
			assign rf_rd_wb_hz[i] = rf_rd_wb_match[i];
		end
	endgenerate
	assign rf_rd_ex_jalr_match = (rf_waddr_ex == rf_raddr_id_i[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH]) && |rf_raddr_id_i[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH];
	assign rf_rd_wb_jalr_match = (rf_waddr_wb == rf_raddr_id_i[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH]) && |rf_raddr_id_i[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH];
	always @(*) begin
		if (_sv2v_0)
			;
		ctrl_byp_o[11] = 1'b0;
		ctrl_byp_o[4] = 1'b0;
		ctrl_byp_o[10] = 1'b0;
		ctrl_byp_o[9] = 1'b0;
		ctrl_byp_o[5] = 1'b0;
		ctrl_byp_o[1] = 1'b0;
		if ((((if_id_pipe_i[157] || (if_id_pipe_i[156-:2] != 2'h0)) || |if_id_pipe_i[98-:32]) || if_id_pipe_i[153]) || if_id_pipe_i[152])
			ctrl_byp_o[4] = 1'b1;
		if ((((id_ex_pipe_i[173] || id_ex_pipe_i[39]) && rf_we_ex) && |rf_rd_ex_hz) || ((!wb_ready_i && rf_we_wb) && |rf_rd_wb_hz))
			ctrl_byp_o[11] = 1'b1;
		if (jmpr_unqual_id && ((((rf_we_wb && rf_rd_wb_jalr_match) && lsu_en_wb) || ((rf_we_wb && rf_rd_wb_jalr_match) && (ex_wb_pipe_i[159] && ex_wb_pipe_i[206]))) || (rf_we_ex && rf_rd_ex_jalr_match)))
			ctrl_byp_o[12] = 1'b1;
		else
			ctrl_byp_o[12] = 1'b0;
		if (csr_impl_rd_unqual_id && csr_write_in_ex_wb)
			ctrl_byp_o[10] = 1'b1;
		if (((csr_hz_i[27] && csr_write_in_wb) || ((id_ex_pipe_i[176] && id_ex_pipe_i[42]) && csr_impl_write_in_wb)) || csr_expl_hz_ex)
			ctrl_byp_o[9] = 1'b1;
		if (csr_counter_read_i && ex_wb_pipe_i[53])
			ctrl_byp_o[5] = 1'b1;
		if (csr_irq_enable_write_i && (id_ex_pipe_i[42] && id_ex_pipe_i[173]))
			ctrl_byp_o[1] = 1'b1;
	end
	generate
		if (A_EXT != 2'd0) begin : atomic_stall
			always @(*) begin
				if (_sv2v_0)
					;
				ctrl_byp_o[0] = 1'b0;
				if (((id_ex_pipe_i[173] && (lsu_atomic_ex_i != 2'b00)) && id_ex_pipe_i[42]) || ((((id_ex_pipe_i[173] && id_ex_pipe_i[42]) && ex_wb_pipe_i[158]) && (lsu_atomic_wb_i != 2'b00)) && ex_wb_pipe_i[53]))
					ctrl_byp_o[0] = lsu_bus_busy_i;
			end
		end
		else begin : no_atomic_stall
			wire [1:1] sv2v_tmp_34333;
			assign sv2v_tmp_34333 = 1'b0;
			always @(*) ctrl_byp_o[0] = sv2v_tmp_34333;
		end
	endgenerate
	wire [1:1] sv2v_tmp_27132;
	assign sv2v_tmp_27132 = ctrl_byp_o[4];
	always @(*) ctrl_byp_o[3] = sv2v_tmp_27132;
	always @(*) begin
		if (_sv2v_0)
			;
		ctrl_byp_o[17-:2] = 2'b00;
		ctrl_byp_o[15-:2] = 2'b00;
		ctrl_byp_o[13] = 1'b0;
		if (rf_we_wb) begin
			if (rf_rd_wb_match[0])
				ctrl_byp_o[17-:2] = 2'b10;
			if (rf_rd_wb_match[1])
				ctrl_byp_o[15-:2] = 2'b10;
		end
		if (rf_we_ex) begin
			if (rf_rd_ex_match[0])
				ctrl_byp_o[17-:2] = 2'b01;
			if (rf_rd_ex_match[1])
				ctrl_byp_o[15-:2] = 2'b01;
		end
		if (rf_we_wb) begin
			if (rf_rd_wb_jalr_match)
				ctrl_byp_o[13] = 1'b1;
		end
	end
	wire [1:1] sv2v_tmp_6024F;
	assign sv2v_tmp_6024F = (ex_wb_pipe_i[40] && ex_wb_pipe_i[39]) && ex_wb_pipe_i[53];
	always @(*) ctrl_byp_o[2] = sv2v_tmp_6024F;
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_cs_registers (
	clk,
	rst_n,
	mhartid_i,
	mimpid_patch_i,
	mtvec_addr_i,
	csr_mtvec_init_i,
	dcsr_o,
	dpc_o,
	jvt_addr_o,
	jvt_mode_o,
	mcause_o,
	mcycle_o,
	mepc_o,
	mie_o,
	mintstatus_o,
	mintthresh_th_o,
	mstatus_o,
	mtvec_addr_o,
	mtvec_mode_o,
	mtvt_addr_o,
	priv_lvl_o,
	priv_lvl_if_ctrl_o,
	priv_lvl_lsu_o,
	id_ex_pipe_i,
	csr_illegal_o,
	ex_wb_pipe_i,
	ctrl_fsm_i,
	csr_counter_read_o,
	csr_mnxti_read_o,
	csr_hz_o,
	csr_rdata_o,
	mip_i,
	mnxti_irq_pending_i,
	mnxti_irq_id_i,
	mnxti_irq_level_i,
	clic_pa_valid_o,
	clic_pa_o,
	csr_irq_enable_write_o,
	time_i,
	csr_wr_in_wb_flush_o,
	pc_if_i,
	ptr_in_if_i,
	priv_lvl_if_i,
	trigger_match_if_o,
	trigger_match_ex_o,
	etrigger_wb_o,
	lsu_valid_ex_i,
	lsu_addr_ex_i,
	lsu_we_ex_i,
	lsu_be_ex_i,
	lsu_atomic_ex_i
);
	reg _sv2v_0;
	parameter [0:0] RV32 = 1'd0;
	parameter [1:0] A_EXT = 2'd0;
	parameter [1:0] M_EXT = 2'd1;
	parameter [0:0] X_EXT = 0;
	parameter [31:0] X_MISA = 32'h00000000;
	parameter [1:0] X_ECS_XS = 2'b00;
	parameter [0:0] ZC_EXT = 0;
	parameter [0:0] CLIC = 0;
	parameter [31:0] CLIC_ID_WIDTH = 5;
	parameter [31:0] NUM_MHPMCOUNTERS = 1;
	parameter [0:0] DEBUG = 1;
	parameter signed [31:0] DBG_NUM_TRIGGERS = 1;
	parameter [31:0] MTVT_ADDR_WIDTH = 26;
	input wire clk;
	input wire rst_n;
	input wire [31:0] mhartid_i;
	input wire [3:0] mimpid_patch_i;
	input wire [31:0] mtvec_addr_i;
	input wire csr_mtvec_init_i;
	output wire [31:0] dcsr_o;
	output wire [31:0] dpc_o;
	localparam cv32e40x_pkg_JVT_ADDR_WIDTH = 26;
	output wire [25:0] jvt_addr_o;
	output wire [5:0] jvt_mode_o;
	output wire [31:0] mcause_o;
	output wire [63:0] mcycle_o;
	output wire [31:0] mepc_o;
	output wire [31:0] mie_o;
	output wire [31:0] mintstatus_o;
	output wire [7:0] mintthresh_th_o;
	output wire [31:0] mstatus_o;
	output wire [24:0] mtvec_addr_o;
	output wire [1:0] mtvec_mode_o;
	output wire [MTVT_ADDR_WIDTH - 1:0] mtvt_addr_o;
	output wire [1:0] priv_lvl_o;
	output wire [2:0] priv_lvl_if_ctrl_o;
	output wire [1:0] priv_lvl_lsu_o;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
	input wire [352:0] id_ex_pipe_i;
	output wire csr_illegal_o;
	input wire [247:0] ex_wb_pipe_i;
	input wire [200:0] ctrl_fsm_i;
	output reg csr_counter_read_o;
	output reg csr_mnxti_read_o;
	output reg [27:0] csr_hz_o;
	output wire [31:0] csr_rdata_o;
	input wire [31:0] mip_i;
	input wire mnxti_irq_pending_i;
	input wire [CLIC_ID_WIDTH - 1:0] mnxti_irq_id_i;
	input wire [7:0] mnxti_irq_level_i;
	output reg clic_pa_valid_o;
	output reg [31:0] clic_pa_o;
	output wire csr_irq_enable_write_o;
	input wire [63:0] time_i;
	output wire csr_wr_in_wb_flush_o;
	input wire [31:0] pc_if_i;
	input wire ptr_in_if_i;
	input wire [1:0] priv_lvl_if_i;
	output wire [31:0] trigger_match_if_o;
	output wire [31:0] trigger_match_ex_o;
	output wire etrigger_wb_o;
	input wire lsu_valid_ex_i;
	input wire [31:0] lsu_addr_ex_i;
	input wire lsu_we_ex_i;
	input wire [3:0] lsu_be_ex_i;
	input wire [1:0] lsu_atomic_ex_i;
	localparam [1:0] cv32e40x_pkg_MXL = 2'd1;
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	localparam [31:0] CORE_MISA = (((((((sv2v_cast_32(A_EXT == 2'd2) << 0) | (32'sd1 << 2)) | (sv2v_cast_32(RV32 == 1'd1) << 4)) | (sv2v_cast_32(RV32 == 1'd0) << 8)) | (sv2v_cast_32(M_EXT == 2'd1) << 12)) | (32'sd0 << 20)) | (32'sd1 << 23)) | (sv2v_cast_32(cv32e40x_pkg_MXL) << 30);
	localparam [0:0] ZIHPM = 1'b1;
	localparam [0:0] ZICNTR = 1'b1;
	localparam [31:0] MISA_VALUE = CORE_MISA | (X_EXT ? X_MISA : 32'h00000000);
	localparam [31:0] CSR_MTVT_MASK = {{MTVT_ADDR_WIDTH {1'b1}}, {32 - MTVT_ADDR_WIDTH {1'b0}}};
	reg [31:0] csr_wdata_int;
	reg [31:0] csr_rdata_int;
	reg csr_we_int;
	wire [1:0] csr_op;
	wire [11:0] csr_waddr;
	wire [11:0] csr_raddr;
	wire [31:0] csr_wdata;
	wire csr_en_gated;
	reg illegal_csr_read;
	wire illegal_csr_write;
	wire instr_valid;
	wire unused_signals;
	wire [31:0] mepc_q;
	reg [31:0] mepc_n;
	wire [31:0] mepc_rdata;
	reg mepc_we;
	wire [31:0] tselect_rdata;
	reg tselect_we;
	wire [31:0] tdata1_rdata;
	reg tdata1_we;
	wire [31:0] tdata2_rdata;
	reg tdata2_we;
	wire [31:0] tinfo_rdata;
	reg tinfo_we;
	wire [31:0] dcsr_q;
	reg [31:0] dcsr_n;
	wire [31:0] dcsr_rdata;
	reg dcsr_we;
	wire [31:0] dpc_q;
	reg [31:0] dpc_n;
	wire [31:0] dpc_rdata;
	reg dpc_we;
	wire [31:0] dscratch0_q;
	reg [31:0] dscratch0_n;
	wire [31:0] dscratch0_rdata;
	reg dscratch0_we;
	wire [31:0] dscratch1_q;
	reg [31:0] dscratch1_n;
	wire [31:0] dscratch1_rdata;
	reg dscratch1_we;
	wire [31:0] mscratch_q;
	reg [31:0] mscratch_n;
	wire [31:0] mscratch_rdata;
	reg mscratch_we;
	wire [31:0] jvt_q;
	reg [31:0] jvt_n;
	wire [31:0] jvt_rdata;
	reg jvt_we;
	wire [31:0] mstatus_q;
	reg [31:0] mstatus_n;
	wire [31:0] mstatus_rdata;
	reg mstatus_we;
	reg [31:0] mstatush_n;
	wire [31:0] mstatush_rdata;
	reg mstatush_we;
	reg [31:0] misa_n;
	wire [31:0] misa_rdata;
	reg misa_we;
	wire [31:0] mcause_q;
	reg [31:0] mcause_n;
	wire [31:0] mcause_rdata;
	reg mcause_we;
	wire [31:0] mtvec_q;
	reg [31:0] mtvec_n;
	wire [31:0] mtvec_rdata;
	reg mtvec_we;
	wire [31:0] mtvt_q;
	reg [31:0] mtvt_n;
	wire [31:0] mtvt_rdata;
	reg mtvt_we;
	wire [31:0] mnxti_n;
	wire [31:0] mnxti_rdata;
	reg mnxti_we;
	wire [31:0] mintstatus_q;
	reg [31:0] mintstatus_n;
	wire [31:0] mintstatus_rdata;
	reg mintstatus_we;
	wire [31:0] mintthresh_q;
	reg [31:0] mintthresh_n;
	wire [31:0] mintthresh_rdata;
	reg mintthresh_we;
	reg [31:0] mscratchcswl_n;
	wire [31:0] mscratchcswl_rdata;
	reg mscratchcswl_we;
	reg [31:0] mip_n;
	wire [31:0] mip_rdata;
	reg mip_we;
	wire [31:0] mie_q;
	reg [31:0] mie_n;
	wire [31:0] mie_rdata;
	reg mie_we;
	reg [31:0] mvendorid_n;
	wire [31:0] mvendorid_rdata;
	reg mvendorid_we;
	reg [31:0] marchid_n;
	wire [31:0] marchid_rdata;
	reg marchid_we;
	reg [31:0] mimpid_n;
	wire [31:0] mimpid_rdata;
	reg mimpid_we;
	reg [31:0] mhartid_n;
	wire [31:0] mhartid_rdata;
	reg mhartid_we;
	reg [31:0] mconfigptr_n;
	wire [31:0] mconfigptr_rdata;
	reg mconfigptr_we;
	reg [31:0] mtval_n;
	wire [31:0] mtval_rdata;
	reg mtval_we;
	reg [1:0] priv_lvl_n;
	wire [1:0] priv_lvl_q;
	wire [1:0] priv_lvl_rdata;
	reg priv_lvl_we;
	wire csr_wr_in_wb;
	wire jvt_wr_in_wb;
	reg mcause_alias_we;
	reg mstatus_alias_we;
	reg [2047:0] mhpmcounter_q;
	reg [2047:0] mhpmcounter_n;
	wire [2047:0] mhpmcounter_rdata;
	reg [63:0] mhpmcounter_we;
	reg [1023:0] mhpmevent_q;
	reg [1023:0] mhpmevent_n;
	wire [1023:0] mhpmevent_rdata;
	reg [31:0] mcountinhibit_q;
	reg [31:0] mcountinhibit_n;
	wire [31:0] mcountinhibit_rdata;
	localparam cv32e40x_pkg_NUM_HPM_EVENTS = 16;
	reg [15:0] hpm_events;
	wire [2047:0] mhpmcounter_increment;
	wire [31:0] mhpmcounter_write_lower;
	wire [31:0] mhpmcounter_write_upper;
	wire [31:0] mhpmcounter_write_increment;
	wire mscratchcswl_in_wb;
	wire mnxti_in_wb;
	wire [(32 - MTVT_ADDR_WIDTH) - 3:0] mnxti_irq_id;
	generate
		if (CLIC_ID_WIDTH < 4) begin : mnxti_irq_id_lt4
			assign mnxti_irq_id = {{4 - CLIC_ID_WIDTH {1'b0}}, mnxti_irq_id_i};
		end
		else begin : mnxti_irq_id_ge4
			assign mnxti_irq_id = mnxti_irq_id_i;
		end
	endgenerate
	assign instr_valid = (ex_wb_pipe_i[53] && !ctrl_fsm_i[13]) && !ctrl_fsm_i[18];
	function automatic [11:0] sv2v_cast_12;
		input reg [11:0] inp;
		sv2v_cast_12 = inp;
	endfunction
	assign csr_raddr = sv2v_cast_12((id_ex_pipe_i[176] && id_ex_pipe_i[42] ? id_ex_pipe_i[291:280] : 12'b000000000000));
	assign csr_waddr = ex_wb_pipe_i[203-:12];
	assign csr_wdata = ex_wb_pipe_i[191-:32];
	assign csr_op = ex_wb_pipe_i[205-:2];
	assign csr_en_gated = ex_wb_pipe_i[206] && instr_valid;
	function automatic [1:0] sv2v_cast_1A666;
		input reg [1:0] inp;
		sv2v_cast_1A666 = inp;
	endfunction
	assign illegal_csr_write = ((id_ex_pipe_i[175-:2] != sv2v_cast_1A666(2'b00)) && id_ex_pipe_i[176]) && (csr_raddr[11:10] == 2'b11);
	assign csr_illegal_o = (id_ex_pipe_i[42] && id_ex_pipe_i[176] ? illegal_csr_write || illegal_csr_read : 1'b0);
	always @(*) begin
		if (_sv2v_0)
			;
		illegal_csr_read = 1'b0;
		csr_counter_read_o = 1'b0;
		csr_mnxti_read_o = 1'b0;
		csr_hz_o[27] = 1'b0;
		csr_hz_o[26] = 1'b0;
		case (csr_raddr)
			12'h017:
				if (ZC_EXT)
					csr_rdata_int = jvt_rdata;
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h300: begin
				csr_rdata_int = mstatus_rdata;
				if (CLIC)
					csr_hz_o[26] = 1'b1;
			end
			12'h301: csr_rdata_int = misa_rdata;
			12'h304: csr_rdata_int = mie_rdata;
			12'h305: csr_rdata_int = mtvec_rdata;
			12'h307:
				if (CLIC)
					csr_rdata_int = mtvt_rdata;
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h310: csr_rdata_int = mstatush_rdata;
			12'h320: csr_rdata_int = mcountinhibit_rdata;
			12'h323, 12'h324, 12'h325, 12'h326, 12'h327, 12'h328, 12'h329, 12'h32a, 12'h32b, 12'h32c, 12'h32d, 12'h32e, 12'h32f, 12'h330, 12'h331, 12'h332, 12'h333, 12'h334, 12'h335, 12'h336, 12'h337, 12'h338, 12'h339, 12'h33a, 12'h33b, 12'h33c, 12'h33d, 12'h33e, 12'h33f: csr_rdata_int = mhpmevent_rdata[csr_raddr[4:0] * 32+:32];
			12'h340: csr_rdata_int = mscratch_rdata;
			12'h341: csr_rdata_int = mepc_rdata;
			12'h342: begin
				csr_rdata_int = mcause_rdata;
				if (CLIC)
					csr_hz_o[26] = 1'b1;
			end
			12'h343: csr_rdata_int = mtval_rdata;
			12'h344: csr_rdata_int = mip_rdata;
			12'h345:
				if (CLIC) begin
					csr_rdata_int = mstatus_rdata;
					csr_hz_o[27] = 1'b1;
					csr_hz_o[26] = 1'b1;
					csr_mnxti_read_o = 1'b1;
				end
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'hfb1:
				if (CLIC)
					csr_rdata_int = mintstatus_rdata;
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h347:
				if (CLIC)
					csr_rdata_int = mintthresh_rdata;
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h349:
				if (CLIC) begin
					csr_hz_o[27] = 1'b1;
					csr_hz_o[26] = 1'b1;
					if ((mcause_rdata[23-:8] == {8 {1'sb0}}) != (mintstatus_rdata[31-:8] == 0))
						csr_rdata_int = mscratch_rdata;
					else
						csr_rdata_int = id_ex_pipe_i[343-:32];
				end
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h7a0:
				if (DBG_NUM_TRIGGERS > 0) begin
					csr_rdata_int = tselect_rdata;
					csr_hz_o[26] = 1'b1;
				end
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h7a1:
				if (DBG_NUM_TRIGGERS > 0)
					csr_rdata_int = tdata1_rdata;
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h7a2:
				if (DBG_NUM_TRIGGERS > 0)
					csr_rdata_int = tdata2_rdata;
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h7a4:
				if (DBG_NUM_TRIGGERS > 0)
					csr_rdata_int = tinfo_rdata;
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h7b0:
				if (DEBUG) begin
					csr_rdata_int = dcsr_rdata;
					illegal_csr_read = !ctrl_fsm_i[147];
				end
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h7b1:
				if (DEBUG) begin
					csr_rdata_int = dpc_rdata;
					illegal_csr_read = !ctrl_fsm_i[147];
				end
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h7b2:
				if (DEBUG) begin
					csr_rdata_int = dscratch0_rdata;
					illegal_csr_read = !ctrl_fsm_i[147];
				end
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'h7b3:
				if (DEBUG) begin
					csr_rdata_int = dscratch1_rdata;
					illegal_csr_read = !ctrl_fsm_i[147];
				end
				else begin
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'hc01:
				if (ZICNTR) begin : zicntr_time
					csr_rdata_int = time_i[31:0];
				end
				else begin : no_zicntr_time
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'hc81:
				if (ZICNTR) begin : zicntr_timeh
					csr_rdata_int = time_i[63:32];
				end
				else begin : no_zicntr_timeh
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'hb00, 12'hb02, 12'hb03, 12'hb04, 12'hb05, 12'hb06, 12'hb07, 12'hb08, 12'hb09, 12'hb0a, 12'hb0b, 12'hb0c, 12'hb0d, 12'hb0e, 12'hb0f, 12'hb10, 12'hb11, 12'hb12, 12'hb13, 12'hb14, 12'hb15, 12'hb16, 12'hb17, 12'hb18, 12'hb19, 12'hb1a, 12'hb1b, 12'hb1c, 12'hb1d, 12'hb1e, 12'hb1f: begin
				csr_rdata_int = mhpmcounter_rdata[(csr_raddr[4:0] * 64) + 31-:32];
				csr_counter_read_o = 1'b1;
			end
			12'hc00, 12'hc02:
				if (ZICNTR) begin : zicntr_counters
					csr_rdata_int = mhpmcounter_rdata[(csr_raddr[4:0] * 64) + 31-:32];
					csr_counter_read_o = 1'b1;
				end
				else begin : no_zicntr_counters
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'hc80, 12'hc82:
				if (ZICNTR) begin : zicntr_hcounters
					csr_rdata_int = mhpmcounter_rdata[(csr_raddr[4:0] * 64) + 63-:32];
					csr_counter_read_o = 1'b1;
				end
				else begin : no_zicntr_hcounters
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'hc03, 12'hc04, 12'hc05, 12'hc06, 12'hc07, 12'hc08, 12'hc09, 12'hc0a, 12'hc0b, 12'hc0c, 12'hc0d, 12'hc0e, 12'hc0f, 12'hc10, 12'hc11, 12'hc12, 12'hc13, 12'hc14, 12'hc15, 12'hc16, 12'hc17, 12'hc18, 12'hc19, 12'hc1a, 12'hc1b, 12'hc1c, 12'hc1d, 12'hc1e, 12'hc1f:
				if (ZIHPM) begin : zihpm_counters
					csr_rdata_int = mhpmcounter_rdata[(csr_raddr[4:0] * 64) + 31-:32];
					csr_counter_read_o = 1'b1;
				end
				else begin : no_zihpm_counters
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'hb80, 12'hb82, 12'hb83, 12'hb84, 12'hb85, 12'hb86, 12'hb87, 12'hb88, 12'hb89, 12'hb8a, 12'hb8b, 12'hb8c, 12'hb8d, 12'hb8e, 12'hb8f, 12'hb90, 12'hb91, 12'hb92, 12'hb93, 12'hb94, 12'hb95, 12'hb96, 12'hb97, 12'hb98, 12'hb99, 12'hb9a, 12'hb9b, 12'hb9c, 12'hb9d, 12'hb9e, 12'hb9f: begin
				csr_rdata_int = mhpmcounter_rdata[(csr_raddr[4:0] * 64) + 63-:32];
				csr_counter_read_o = 1'b1;
			end
			12'hc83, 12'hc84, 12'hc85, 12'hc86, 12'hc87, 12'hc88, 12'hc89, 12'hc8a, 12'hc8b, 12'hc8c, 12'hc8d, 12'hc8e, 12'hc8f, 12'hc90, 12'hc91, 12'hc92, 12'hc93, 12'hc94, 12'hc95, 12'hc96, 12'hc97, 12'hc98, 12'hc99, 12'hc9a, 12'hc9b, 12'hc9c, 12'hc9d, 12'hc9e, 12'hc9f:
				if (ZIHPM) begin : zihpm_hcounters
					csr_rdata_int = mhpmcounter_rdata[(csr_raddr[4:0] * 64) + 63-:32];
					csr_counter_read_o = 1'b1;
				end
				else begin : no_zihpm_hcounters
					csr_rdata_int = 1'sb0;
					illegal_csr_read = 1'b1;
				end
			12'hf11: csr_rdata_int = mvendorid_rdata;
			12'hf12: csr_rdata_int = marchid_rdata;
			12'hf13: csr_rdata_int = mimpid_rdata;
			12'hf14: csr_rdata_int = mhartid_rdata;
			12'hf15: csr_rdata_int = mconfigptr_rdata;
			default: begin
				csr_rdata_int = 1'sb0;
				illegal_csr_read = 1'b1;
			end
		endcase
	end
	localparam cv32e40x_pkg_CSR_BASIC_MCAUSE_MASK = 32'b10000000000000000000011111111111;
	localparam cv32e40x_pkg_CSR_BASIC_MTVEC_MASK = 32'hffffff81;
	localparam cv32e40x_pkg_CSR_CLIC_MCAUSE_MASK = 32'b11001000111111110000011111111111;
	localparam cv32e40x_pkg_CSR_CLIC_MTVEC_MASK = 32'hffffff80;
	localparam cv32e40x_pkg_CSR_DCSR_MASK = 32'b00000000000000001000110111000100;
	localparam cv32e40x_pkg_CSR_DPC_MASK = 32'hfffffffe;
	localparam cv32e40x_pkg_CSR_DSCRATCH0_MASK = 32'hffffffff;
	localparam cv32e40x_pkg_CSR_DSCRATCH1_MASK = 32'hffffffff;
	localparam cv32e40x_pkg_CSR_JVT_MASK = 32'hffffffc0;
	localparam cv32e40x_pkg_CSR_MEPC_MASK = 32'hfffffffe;
	localparam cv32e40x_pkg_CSR_MINTTHRESH_MASK = 32'h000000ff;
	localparam cv32e40x_pkg_CSR_MSCRATCH_MASK = 32'hffffffff;
	localparam cv32e40x_pkg_CSR_MSTATUS_MASK = 32'b00000000000000000000000010001000;
	localparam cv32e40x_pkg_DCSR_EBREAKU_BIT = 12;
	localparam cv32e40x_pkg_DCSR_PRV_BIT_HIGH = 1;
	localparam cv32e40x_pkg_DCSR_PRV_BIT_LOW = 0;
	localparam cv32e40x_pkg_DBG_CAUSE_NONE = 3'h0;
	localparam [31:0] cv32e40x_pkg_DCSR_RESET_VAL = {23'h200002, cv32e40x_pkg_DBG_CAUSE_NONE, 6'b010011};
	localparam cv32e40x_pkg_DPC_RESET_VAL = 32'd0;
	localparam cv32e40x_pkg_DSCRATCH0_RESET_VAL = 32'd0;
	localparam cv32e40x_pkg_DSCRATCH1_RESET_VAL = 32'd0;
	localparam cv32e40x_pkg_IRQ_MASK = 32'hffff0888;
	localparam cv32e40x_pkg_JVT_RESET_VAL = 32'd0;
	localparam [31:0] cv32e40x_pkg_MCAUSE_BASIC_RESET_VAL = 32'b00000000000000000000000000000000;
	localparam [31:0] cv32e40x_pkg_MCAUSE_CLIC_RESET_VAL = 32'b00110000000000000000000000000000;
	localparam cv32e40x_pkg_MCAUSE_MPIE_BIT = 27;
	localparam cv32e40x_pkg_MCAUSE_MPP_BIT_HIGH = 29;
	localparam cv32e40x_pkg_MCAUSE_MPP_BIT_LOW = 28;
	localparam cv32e40x_pkg_MEPC_RESET_VAL = 32'd0;
	localparam cv32e40x_pkg_MIE_BASIC_RESET_VAL = 32'd0;
	localparam cv32e40x_pkg_MINTTHRESH_RESET_VAL = 32'd0;
	localparam cv32e40x_pkg_MSCRATCH_RESET_VAL = 32'd0;
	localparam cv32e40x_pkg_MSTATUS_MIE_BIT = 3;
	localparam cv32e40x_pkg_MSTATUS_MPIE_BIT = 7;
	localparam cv32e40x_pkg_MSTATUS_MPP_BIT_HIGH = 12;
	localparam cv32e40x_pkg_MSTATUS_MPP_BIT_LOW = 11;
	localparam cv32e40x_pkg_MSTATUS_MPRV_BIT = 17;
	localparam [31:0] cv32e40x_pkg_MSTATUS_RESET_VAL = 32'b00000000000000000001100000000000;
	localparam cv32e40x_pkg_MTVEC_MODE_BASIC = 2'b01;
	localparam [31:0] cv32e40x_pkg_MTVEC_BASIC_RESET_VAL = {30'h00000000, cv32e40x_pkg_MTVEC_MODE_BASIC};
	localparam cv32e40x_pkg_MTVEC_MODE_CLIC = 2'b11;
	localparam [31:0] cv32e40x_pkg_MTVEC_CLIC_RESET_VAL = {30'h00000000, cv32e40x_pkg_MTVEC_MODE_CLIC};
	localparam cv32e40x_pkg_MTVEC_MODE_BIT_HIGH = 1;
	localparam cv32e40x_pkg_MTVEC_MODE_BIT_LOW = 0;
	localparam [31:0] cv32e40x_pkg_MTVT_RESET_VAL = 32'b00000000000000000000000000000000;
	localparam [1:0] cv32e40x_pkg_PRIV_LVL_LOWEST = 2'b11;
	function automatic [31:0] cv32e40x_pkg_csr_next_value;
		input reg [31:0] wdata;
		input reg [31:0] mask;
		input reg [31:0] reset_value;
		cv32e40x_pkg_csr_next_value = (wdata & mask) | (reset_value & ~mask);
	endfunction
	function automatic cv32e40x_pkg_dcsr_ebreaku_resolve;
		input reg current_value;
		input reg next_value;
		cv32e40x_pkg_dcsr_ebreaku_resolve = 1'b0;
	endfunction
	function automatic [1:0] cv32e40x_pkg_dcsr_prv_resolve;
		input reg [1:0] current_value;
		input reg [1:0] next_value;
		cv32e40x_pkg_dcsr_prv_resolve = 2'b11;
	endfunction
	function automatic [1:0] cv32e40x_pkg_mcause_mpp_resolve;
		input reg [1:0] current_value;
		input reg [1:0] next_value;
		cv32e40x_pkg_mcause_mpp_resolve = 2'b11;
	endfunction
	function automatic [1:0] cv32e40x_pkg_mstatus_mpp_resolve;
		input reg [1:0] current_value;
		input reg [1:0] next_value;
		cv32e40x_pkg_mstatus_mpp_resolve = 2'b11;
	endfunction
	function automatic cv32e40x_pkg_mstatus_mprv_resolve;
		input reg current_value;
		input reg next_value;
		cv32e40x_pkg_mstatus_mprv_resolve = 1'b0;
	endfunction
	function automatic [1:0] cv32e40x_pkg_mtvec_mode_clic_resolve;
		input reg [1:0] current_value;
		input reg [1:0] next_value;
		cv32e40x_pkg_mtvec_mode_clic_resolve = 2'b11;
	endfunction
	function automatic [1:0] cv32e40x_pkg_mtvec_mode_clint_resolve;
		input reg [1:0] current_value;
		input reg [1:0] next_value;
		cv32e40x_pkg_mtvec_mode_clint_resolve = ((next_value != 2'b00) && (next_value != 2'b01) ? current_value : next_value);
	endfunction
	function automatic [3:0] sv2v_cast_4;
		input reg [3:0] inp;
		sv2v_cast_4 = inp;
	endfunction
	function automatic [2:0] sv2v_cast_3;
		input reg [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	function automatic [1:0] sv2v_cast_2;
		input reg [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	function automatic [9:0] sv2v_cast_10;
		input reg [9:0] inp;
		sv2v_cast_10 = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		jvt_n = cv32e40x_pkg_csr_next_value(csr_wdata_int, cv32e40x_pkg_CSR_JVT_MASK, cv32e40x_pkg_JVT_RESET_VAL);
		jvt_we = 1'b0;
		mscratch_n = cv32e40x_pkg_csr_next_value(csr_wdata_int, cv32e40x_pkg_CSR_MSCRATCH_MASK, cv32e40x_pkg_MSCRATCH_RESET_VAL);
		mscratch_we = 1'b0;
		mepc_n = cv32e40x_pkg_csr_next_value(csr_wdata_int, cv32e40x_pkg_CSR_MEPC_MASK, cv32e40x_pkg_MEPC_RESET_VAL);
		mepc_we = 1'b0;
		dpc_n = cv32e40x_pkg_csr_next_value(csr_wdata_int, cv32e40x_pkg_CSR_DPC_MASK, cv32e40x_pkg_DPC_RESET_VAL);
		dpc_we = 1'b0;
		dcsr_n = cv32e40x_pkg_csr_next_value(sv2v_cast_32({sv2v_cast_4(dcsr_rdata[31-:4]), 12'h000, csr_wdata_int[15], 2'h0, cv32e40x_pkg_dcsr_ebreaku_resolve(dcsr_rdata[12], csr_wdata_int[cv32e40x_pkg_DCSR_EBREAKU_BIT]), csr_wdata_int[11], csr_wdata_int[10], 1'd0, sv2v_cast_3(dcsr_rdata[8-:3]), 1'd0, dcsr_rdata[4], 1'd0, csr_wdata_int[2], cv32e40x_pkg_dcsr_prv_resolve(dcsr_rdata[1-:2], csr_wdata_int[cv32e40x_pkg_DCSR_PRV_BIT_HIGH:cv32e40x_pkg_DCSR_PRV_BIT_LOW])}), cv32e40x_pkg_CSR_DCSR_MASK, cv32e40x_pkg_DCSR_RESET_VAL);
		dcsr_we = 1'b0;
		dscratch0_n = cv32e40x_pkg_csr_next_value(csr_wdata_int, cv32e40x_pkg_CSR_DSCRATCH0_MASK, cv32e40x_pkg_DSCRATCH0_RESET_VAL);
		dscratch0_we = 1'b0;
		dscratch1_n = cv32e40x_pkg_csr_next_value(csr_wdata_int, cv32e40x_pkg_CSR_DSCRATCH1_MASK, cv32e40x_pkg_DSCRATCH1_RESET_VAL);
		dscratch1_we = 1'b0;
		tselect_we = 1'b0;
		tdata1_we = 1'b0;
		tdata2_we = 1'b0;
		tinfo_we = 1'b0;
		mstatus_n = cv32e40x_pkg_csr_next_value(sv2v_cast_32({14'b00000000000000, cv32e40x_pkg_mstatus_mprv_resolve(mstatus_rdata[17], csr_wdata_int[cv32e40x_pkg_MSTATUS_MPRV_BIT]), 4'b0000, cv32e40x_pkg_mstatus_mpp_resolve(mstatus_rdata[12-:2], csr_wdata_int[cv32e40x_pkg_MSTATUS_MPP_BIT_HIGH:cv32e40x_pkg_MSTATUS_MPP_BIT_LOW]), 3'b000, csr_wdata_int[cv32e40x_pkg_MSTATUS_MPIE_BIT], 3'b000, csr_wdata_int[cv32e40x_pkg_MSTATUS_MIE_BIT], 3'b000}), cv32e40x_pkg_CSR_MSTATUS_MASK, cv32e40x_pkg_MSTATUS_RESET_VAL);
		mstatus_we = 1'b0;
		mstatush_n = mstatush_rdata;
		mstatush_we = 1'b0;
		mstatus_alias_we = 1'b0;
		misa_n = misa_rdata;
		misa_we = 1'b0;
		priv_lvl_n = priv_lvl_rdata;
		priv_lvl_we = 1'b0;
		if (CLIC) begin
			mtvec_n = cv32e40x_pkg_csr_next_value(sv2v_cast_32({(csr_mtvec_init_i ? mtvec_addr_i[31:7] : csr_wdata_int[31:7]), mtvec_rdata[6], sv2v_cast_4(mtvec_rdata[5-:4]), sv2v_cast_2((csr_mtvec_init_i ? mtvec_rdata[1-:2] : cv32e40x_pkg_mtvec_mode_clic_resolve(mtvec_rdata[1-:2], csr_wdata_int[cv32e40x_pkg_MTVEC_MODE_BIT_HIGH:cv32e40x_pkg_MTVEC_MODE_BIT_LOW])))}), cv32e40x_pkg_CSR_CLIC_MTVEC_MASK, cv32e40x_pkg_MTVEC_CLIC_RESET_VAL);
			mtvec_we = csr_mtvec_init_i;
			mtvt_n = cv32e40x_pkg_csr_next_value({csr_wdata_int[31:32 - MTVT_ADDR_WIDTH], {32 - MTVT_ADDR_WIDTH {1'b0}}}, CSR_MTVT_MASK, cv32e40x_pkg_MTVT_RESET_VAL);
			mtvt_we = 1'b0;
			mnxti_we = 1'b0;
			mintstatus_n = mintstatus_rdata;
			mintstatus_we = 1'b0;
			mintthresh_n = cv32e40x_pkg_csr_next_value(csr_wdata_int, cv32e40x_pkg_CSR_MINTTHRESH_MASK, cv32e40x_pkg_MINTTHRESH_RESET_VAL);
			mintthresh_we = 1'b0;
			mscratchcswl_n = mscratch_n;
			mscratchcswl_we = 1'b0;
			mie_n = 1'sb0;
			mie_we = 1'b0;
			mip_n = mip_rdata;
			mip_we = 1'b0;
			mcause_n = cv32e40x_pkg_csr_next_value(sv2v_cast_32({csr_wdata_int[31], csr_wdata_int[30], cv32e40x_pkg_mcause_mpp_resolve(mcause_rdata[29-:2], csr_wdata_int[cv32e40x_pkg_MCAUSE_MPP_BIT_HIGH:cv32e40x_pkg_MCAUSE_MPP_BIT_LOW]), csr_wdata_int[cv32e40x_pkg_MCAUSE_MPIE_BIT], 3'b000, csr_wdata_int[23:16], 5'b00000, csr_wdata_int[10:0]}), cv32e40x_pkg_CSR_CLIC_MCAUSE_MASK, cv32e40x_pkg_MCAUSE_CLIC_RESET_VAL);
			mcause_we = 1'b0;
			mcause_alias_we = 1'b0;
		end
		else begin
			mtvec_n = cv32e40x_pkg_csr_next_value(sv2v_cast_32({(csr_mtvec_init_i ? mtvec_addr_i[31:7] : csr_wdata_int[31:7]), mtvec_rdata[6], sv2v_cast_4(mtvec_rdata[5-:4]), sv2v_cast_2((csr_mtvec_init_i ? mtvec_rdata[1-:2] : cv32e40x_pkg_mtvec_mode_clint_resolve(mtvec_rdata[1-:2], csr_wdata_int[cv32e40x_pkg_MTVEC_MODE_BIT_HIGH:cv32e40x_pkg_MTVEC_MODE_BIT_LOW])))}), cv32e40x_pkg_CSR_BASIC_MTVEC_MASK, cv32e40x_pkg_MTVEC_BASIC_RESET_VAL);
			mtvec_we = csr_mtvec_init_i;
			mtvt_n = 1'sb0;
			mtvt_we = 1'b0;
			mnxti_we = 1'b0;
			mintstatus_n = 1'sb0;
			mintstatus_we = 1'b0;
			mintthresh_n = 1'sb0;
			mintthresh_we = 1'b0;
			mscratchcswl_n = 1'sb0;
			mscratchcswl_we = 1'b0;
			mie_n = cv32e40x_pkg_csr_next_value(csr_wdata_int, cv32e40x_pkg_IRQ_MASK, cv32e40x_pkg_MIE_BASIC_RESET_VAL);
			mie_we = 1'b0;
			mip_n = mip_rdata;
			mip_we = 1'b0;
			mcause_n = cv32e40x_pkg_csr_next_value(sv2v_cast_32({csr_wdata_int[31], 20'b00000000000000000000, csr_wdata_int[10:0]}), cv32e40x_pkg_CSR_BASIC_MCAUSE_MASK, cv32e40x_pkg_MCAUSE_BASIC_RESET_VAL);
			mcause_we = 1'b0;
			mcause_alias_we = 1'b0;
		end
		mtval_n = mtval_rdata;
		mtval_we = 1'b0;
		mhartid_n = mhartid_rdata;
		mhartid_we = 1'b0;
		mimpid_n = mimpid_rdata;
		mimpid_we = 1'b0;
		mconfigptr_n = mconfigptr_rdata;
		mconfigptr_we = 1'b0;
		mvendorid_n = mvendorid_rdata;
		mvendorid_we = 1'b0;
		marchid_n = marchid_rdata;
		marchid_we = 1'b0;
		if (csr_we_int)
			case (csr_waddr)
				12'h017:
					if (ZC_EXT)
						jvt_we = 1'b1;
				12'h300: begin
					mstatus_we = 1'b1;
					if (CLIC)
						mcause_alias_we = 1'b1;
				end
				12'h301: misa_we = 1'b1;
				12'h304: mie_we = 1'b1;
				12'h305: mtvec_we = 1'b1;
				12'h307:
					if (CLIC)
						mtvt_we = 1'b1;
				12'h310: mstatush_we = 1'b1;
				12'h340: mscratch_we = 1'b1;
				12'h341: mepc_we = 1'b1;
				12'h342: begin
					mcause_we = 1'b1;
					if (CLIC)
						mstatus_alias_we = 1'b1;
				end
				12'h343: mtval_we = 1'b1;
				12'h344: mip_we = 1'b1;
				12'h345:
					if (CLIC) begin
						mnxti_we = 1'b1;
						mstatus_we = 1'b1;
						mcause_we = 1'b1;
						if (mnxti_irq_pending_i)
							mintstatus_we = 1'b1;
					end
				12'h347:
					if (CLIC)
						mintthresh_we = 1'b1;
				12'h349:
					if (CLIC) begin
						if ((mcause_rdata[23-:8] == {8 {1'sb0}}) != (mintstatus_rdata[31-:8] == {8 {1'sb0}})) begin
							mscratchcswl_we = 1'b1;
							mscratch_we = 1'b1;
						end
					end
				12'h7a0: tselect_we = 1'b1;
				12'h7a1:
					if (ctrl_fsm_i[147])
						tdata1_we = 1'b1;
				12'h7a2:
					if (ctrl_fsm_i[147])
						tdata2_we = 1'b1;
				12'h7a4: tinfo_we = 1'b1;
				12'h7b0: dcsr_we = 1'b1;
				12'h7b1: dpc_we = 1'b1;
				12'h7b2: dscratch0_we = 1'b1;
				12'h7b3: dscratch1_we = 1'b1;
				default:
					;
			endcase
		if (CLIC) begin
			if (mnxti_we) begin
				mcause_n = mcause_rdata;
				mcause_n[27] = mstatus_n[7];
				mcause_n[29-:2] = mstatus_n[12-:2];
				if (mintstatus_we)
					mintstatus_n[31-:8] = mnxti_irq_level_i;
				if (mnxti_irq_pending_i) begin
					mcause_n[31] = 1'b1;
					mcause_n[10-:11] = {1'b0, sv2v_cast_10(mnxti_irq_id_i)};
				end
			end
			else if (mstatus_alias_we) begin
				mstatus_n = mstatus_rdata;
				mstatus_n[7] = mcause_n[27];
				mstatus_n[12-:2] = mcause_n[29-:2];
				mstatus_we = 1'b1;
			end
			else if (mcause_alias_we) begin
				mcause_n = mcause_rdata;
				mcause_n[27] = mstatus_n[7];
				mcause_n[29-:2] = mstatus_n[12-:2];
				mcause_we = 1'b1;
			end
			clic_pa_valid_o = csr_en_gated && (csr_waddr == 12'h345);
			clic_pa_o = mnxti_rdata;
		end
		else begin
			clic_pa_valid_o = 1'b0;
			clic_pa_o = 1'sb0;
		end
		(* full_case, parallel_case *)
		case (1'b1)
			ctrl_fsm_i[38]:
				if (ctrl_fsm_i[143]) begin
					dcsr_n = sv2v_cast_32({sv2v_cast_4(dcsr_rdata[31-:4]), 12'h000, dcsr_rdata[15], 2'h0, dcsr_rdata[12], dcsr_rdata[11], dcsr_rdata[10], 1'd0, ctrl_fsm_i[146-:3], 1'd0, dcsr_rdata[4], 1'd0, dcsr_rdata[2], priv_lvl_rdata});
					dcsr_we = 1'b1;
					dpc_n = ctrl_fsm_i[104-:32];
					dpc_we = 1'b1;
					priv_lvl_n = 2'b11;
					priv_lvl_we = 1'b1;
				end
				else begin
					priv_lvl_n = 2'b11;
					priv_lvl_we = 1'b1;
					mstatus_n = mstatus_rdata;
					mstatus_n[3] = 1'b0;
					mstatus_n[7] = mstatus_rdata[3];
					mstatus_n[12-:2] = priv_lvl_rdata;
					mstatus_we = 1'b1;
					mepc_n = ctrl_fsm_i[104-:32];
					mepc_we = 1'b1;
					mcause_n[31] = ctrl_fsm_i[72];
					mcause_n[10-:11] = ctrl_fsm_i[51-:11];
					mcause_we = 1'b1;
					if (CLIC) begin
						mcause_n[23-:8] = mintstatus_rdata[31-:8];
						mcause_n[30] = ctrl_fsm_i[71];
						mcause_n[29-:2] = mstatus_n[12-:2];
						mcause_n[27] = mstatus_n[7];
						if (ctrl_fsm_i[72]) begin
							mintstatus_n[31-:8] = ctrl_fsm_i[160-:8];
							mintstatus_we = 1'b1;
						end
						else if (priv_lvl_rdata != priv_lvl_n) begin
							mintstatus_n[31-:8] = 1'sb0;
							mintstatus_we = 1'b1;
						end
					end
					else
						mcause_n[23-:8] = 1'sb0;
				end
			ctrl_fsm_i[40]: begin
				priv_lvl_n = sv2v_cast_2(mstatus_rdata[12-:2]);
				priv_lvl_we = 1'b1;
				mstatus_n = mstatus_rdata;
				mstatus_n[3] = mstatus_rdata[7];
				mstatus_n[7] = 1'b1;
				mstatus_n[12-:2] = cv32e40x_pkg_PRIV_LVL_LOWEST;
				mstatus_we = 1'b1;
				if (CLIC) begin
					mintstatus_n[31-:8] = mcause_rdata[23-:8];
					mintstatus_we = 1'b1;
					mcause_n = mcause_rdata;
					mcause_n[29-:2] = mstatus_n[12-:2];
					mcause_n[27] = mstatus_n[7];
					mcause_we = 1'b1;
					if (priv_lvl_n < 2'b11) begin
						mintthresh_n = 32'h00000000;
						mintthresh_we = 1'b1;
					end
				end
			end
			ctrl_fsm_i[39]: begin
				priv_lvl_n = dcsr_rdata[1-:2];
				priv_lvl_we = 1'b1;
				mstatus_n = mstatus_rdata;
				mstatus_n[17] = (sv2v_cast_2(dcsr_rdata[1-:2]) == 2'b11 ? mstatus_rdata[17] : 1'b0);
				mstatus_we = 1'b1;
				if (CLIC) begin
					mcause_n = mcause_rdata;
					mcause_we = 1'b1;
				end
			end
			default:
				;
		endcase
	end
	assign mnxti_n = mstatus_n;
	always @(*) begin
		if (_sv2v_0)
			;
		if (!csr_en_gated) begin
			csr_wdata_int = csr_wdata;
			csr_we_int = 1'b0;
		end
		else begin
			csr_we_int = 1'b1;
			csr_wdata_int = csr_wdata;
			case (csr_op)
				sv2v_cast_1A666(2'b01): csr_wdata_int = csr_wdata;
				sv2v_cast_1A666(2'b10): csr_wdata_int = csr_wdata | ex_wb_pipe_i[241-:32];
				sv2v_cast_1A666(2'b11): csr_wdata_int = ~csr_wdata & ex_wb_pipe_i[241-:32];
				sv2v_cast_1A666(2'b00): begin
					csr_wdata_int = csr_wdata;
					csr_we_int = 1'b0;
				end
				default:
					;
			endcase
		end
	end
	cv32e40x_csr #(
		.WIDTH(32),
		.MASK(cv32e40x_pkg_CSR_JVT_MASK),
		.RESETVALUE(cv32e40x_pkg_JVT_RESET_VAL)
	) jvt_csr_i(
		.clk(clk),
		.rst_n(rst_n),
		.wr_data_i(jvt_n),
		.wr_en_i(jvt_we),
		.rd_data_o(jvt_q)
	);
	generate
		if (DEBUG) begin : gen_debug_csr
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_DSCRATCH0_MASK),
				.RESETVALUE(cv32e40x_pkg_DSCRATCH0_RESET_VAL)
			) dscratch0_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(dscratch0_n),
				.wr_en_i(dscratch0_we),
				.rd_data_o(dscratch0_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_DSCRATCH1_MASK),
				.RESETVALUE(cv32e40x_pkg_DSCRATCH1_RESET_VAL)
			) dscratch1_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(dscratch1_n),
				.wr_en_i(dscratch1_we),
				.rd_data_o(dscratch1_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_DCSR_MASK),
				.RESETVALUE(cv32e40x_pkg_DCSR_RESET_VAL)
			) dcsr_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(dcsr_n),
				.wr_en_i(dcsr_we),
				.rd_data_o(dcsr_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_DPC_MASK),
				.RESETVALUE(cv32e40x_pkg_DPC_RESET_VAL)
			) dpc_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(dpc_n),
				.wr_en_i(dpc_we),
				.rd_data_o(dpc_q)
			);
		end
		else begin : debug_csr_tieoff
			assign dscratch0_q = 32'h00000000;
			assign dscratch1_q = 32'h00000000;
			assign dpc_q = 32'h00000000;
			assign dcsr_q = 32'h00000000;
		end
	endgenerate
	cv32e40x_csr #(
		.WIDTH(32),
		.MASK(cv32e40x_pkg_CSR_MEPC_MASK),
		.RESETVALUE(cv32e40x_pkg_MEPC_RESET_VAL)
	) mepc_csr_i(
		.clk(clk),
		.rst_n(rst_n),
		.wr_data_i(mepc_n),
		.wr_en_i(mepc_we),
		.rd_data_o(mepc_q)
	);
	cv32e40x_csr #(
		.WIDTH(32),
		.MASK(cv32e40x_pkg_CSR_MSCRATCH_MASK),
		.RESETVALUE(cv32e40x_pkg_MSCRATCH_RESET_VAL)
	) mscratch_csr_i(
		.clk(clk),
		.rst_n(rst_n),
		.wr_data_i(mscratch_n),
		.wr_en_i(mscratch_we),
		.rd_data_o(mscratch_q)
	);
	cv32e40x_csr #(
		.WIDTH(32),
		.MASK(cv32e40x_pkg_CSR_MSTATUS_MASK),
		.RESETVALUE(cv32e40x_pkg_MSTATUS_RESET_VAL)
	) mstatus_csr_i(
		.clk(clk),
		.rst_n(rst_n),
		.wr_data_i(mstatus_n),
		.wr_en_i(mstatus_we),
		.rd_data_o(mstatus_q)
	);
	localparam cv32e40x_pkg_CSR_MINTSTATUS_MASK = 32'hff000000;
	localparam [31:0] cv32e40x_pkg_MINTSTATUS_RESET_VAL = 32'b00000000000000000000000000000000;
	generate
		if (CLIC) begin : clic_csrs
			assign mie_q = 32'h00000000;
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_CLIC_MCAUSE_MASK),
				.RESETVALUE(cv32e40x_pkg_MCAUSE_CLIC_RESET_VAL)
			) mcause_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(mcause_n),
				.wr_en_i(mcause_we),
				.rd_data_o(mcause_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_CLIC_MTVEC_MASK),
				.RESETVALUE(cv32e40x_pkg_MTVEC_CLIC_RESET_VAL)
			) mtvec_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(mtvec_n),
				.wr_en_i(mtvec_we),
				.rd_data_o(mtvec_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(CSR_MTVT_MASK),
				.RESETVALUE(cv32e40x_pkg_MTVT_RESET_VAL)
			) mtvt_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(mtvt_n),
				.wr_en_i(mtvt_we),
				.rd_data_o(mtvt_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_MINTSTATUS_MASK),
				.RESETVALUE(cv32e40x_pkg_MINTSTATUS_RESET_VAL)
			) mintstatus_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(mintstatus_n),
				.wr_en_i(mintstatus_we),
				.rd_data_o(mintstatus_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_MINTTHRESH_MASK),
				.RESETVALUE(cv32e40x_pkg_MINTTHRESH_RESET_VAL)
			) mintthresh_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(mintthresh_n),
				.wr_en_i(mintthresh_we),
				.rd_data_o(mintthresh_q)
			);
			wire unused_clic_signals;
			assign unused_clic_signals = mie_we | (|mie_n);
		end
		else begin : basic_mode_csrs
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_BASIC_MCAUSE_MASK),
				.RESETVALUE(cv32e40x_pkg_MCAUSE_BASIC_RESET_VAL)
			) mcause_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(mcause_n),
				.wr_en_i(mcause_we),
				.rd_data_o(mcause_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_CSR_BASIC_MTVEC_MASK),
				.RESETVALUE(cv32e40x_pkg_MTVEC_BASIC_RESET_VAL)
			) mtvec_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(mtvec_n),
				.wr_en_i(mtvec_we),
				.rd_data_o(mtvec_q)
			);
			cv32e40x_csr #(
				.WIDTH(32),
				.MASK(cv32e40x_pkg_IRQ_MASK),
				.RESETVALUE(cv32e40x_pkg_MIE_BASIC_RESET_VAL)
			) mie_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(mie_n),
				.wr_en_i(mie_we),
				.rd_data_o(mie_q)
			);
			assign mtvt_q = 32'h00000000;
			assign mintstatus_q = 32'h00000000;
			assign mintthresh_q = 32'h00000000;
		end
	endgenerate
	assign jvt_rdata = jvt_q;
	assign dscratch0_rdata = dscratch0_q;
	assign dscratch1_rdata = dscratch1_q;
	assign dpc_rdata = dpc_q;
	assign mepc_rdata = mepc_q;
	assign mscratch_rdata = mscratch_q;
	assign mstatus_rdata = mstatus_q;
	assign mtvec_rdata = mtvec_q;
	assign mtvt_rdata = mtvt_q;
	assign mintstatus_rdata = mintstatus_q;
	assign mie_rdata = mie_q;
	assign mintthresh_rdata = mintthresh_q;
	assign mnxti_rdata = (mnxti_irq_pending_i ? {mtvt_addr_o, mnxti_irq_id, 2'b00} : 32'h00000000);
	assign mscratchcswl_rdata = ((mcause_rdata[23-:8] == {8 {1'sb0}}) != (mintstatus_rdata[31-:8] == 0) ? mscratch_rdata : ex_wb_pipe_i[191-:32]);
	assign mip_rdata = mip_i;
	assign misa_rdata = MISA_VALUE;
	assign mstatush_rdata = 32'h00000000;
	assign mtval_rdata = 32'h00000000;
	localparam cv32e40x_pkg_MVENDORID_BANK = 25'h000000c;
	localparam cv32e40x_pkg_MVENDORID_OFFSET = 7'h02;
	assign mvendorid_rdata = {cv32e40x_pkg_MVENDORID_BANK, cv32e40x_pkg_MVENDORID_OFFSET};
	localparam cv32e40x_pkg_MARCHID = 32'h00000014;
	assign marchid_rdata = cv32e40x_pkg_MARCHID;
	localparam cv32e40x_pkg_MIMPID_MAJOR = 4'h0;
	localparam cv32e40x_pkg_MIMPID_MINOR = 4'h0;
	assign mimpid_rdata = {12'b000000000000, cv32e40x_pkg_MIMPID_MAJOR, 4'b0000, cv32e40x_pkg_MIMPID_MINOR, 4'b0000, mimpid_patch_i};
	assign mhartid_rdata = mhartid_i;
	assign mconfigptr_rdata = 32'h00000000;
	assign priv_lvl_rdata = priv_lvl_q;
	assign priv_lvl_q = 2'b11;
	assign priv_lvl_lsu_o = 2'b11;
	assign priv_lvl_if_ctrl_o[1-:2] = 2'b11;
	assign priv_lvl_if_ctrl_o[2] = 1'b0;
	assign dcsr_rdata = (DEBUG ? {dcsr_q[31:4], ctrl_fsm_i[37], dcsr_q[2:0]} : 32'h00000000);
	assign mcause_rdata = mcause_q;
	assign csr_rdata_o = csr_rdata_int;
	assign csr_wr_in_wb = (ex_wb_pipe_i[206] && ex_wb_pipe_i[53]) && (((csr_op == sv2v_cast_1A666(2'b01)) || (csr_op == sv2v_cast_1A666(2'b10))) || (csr_op == sv2v_cast_1A666(2'b11)));
	assign jvt_wr_in_wb = csr_wr_in_wb && (csr_waddr == 12'h017);
	assign csr_wr_in_wb_flush_o = jvt_wr_in_wb;
	generate
		if (CLIC) begin : clic_irq_en
			assign csr_irq_enable_write_o = ((mstatus_we || priv_lvl_we) || mintthresh_we) || mintstatus_we;
		end
		else begin : basic_irq_en
			assign csr_irq_enable_write_o = (mie_we || mstatus_we) || priv_lvl_we;
		end
	endgenerate
	wire [1:1] sv2v_tmp_85E75;
	assign sv2v_tmp_85E75 = id_ex_pipe_i[176] && id_ex_pipe_i[42];
	always @(*) csr_hz_o[25] = sv2v_tmp_85E75;
	wire [12:1] sv2v_tmp_339B4;
	assign sv2v_tmp_339B4 = csr_raddr;
	always @(*) csr_hz_o[23-:12] = sv2v_tmp_339B4;
	wire [1:1] sv2v_tmp_28F96;
	assign sv2v_tmp_28F96 = (ex_wb_pipe_i[206] && ex_wb_pipe_i[53]) && (csr_op != sv2v_cast_1A666(2'b00));
	always @(*) csr_hz_o[24] = sv2v_tmp_28F96;
	wire [12:1] sv2v_tmp_13090;
	assign sv2v_tmp_13090 = csr_waddr;
	always @(*) csr_hz_o[11-:12] = sv2v_tmp_13090;
	assign dcsr_o = dcsr_rdata;
	assign dpc_o = dpc_rdata;
	assign jvt_addr_o = jvt_rdata[31:6];
	assign jvt_mode_o = jvt_rdata[5-:6];
	assign mcause_o = mcause_rdata;
	assign mcycle_o = mhpmcounter_rdata[0+:64];
	assign mepc_o = mepc_rdata;
	assign mie_o = mie_rdata;
	assign mintstatus_o = mintstatus_rdata;
	assign mintthresh_th_o = mintthresh_rdata[7:0];
	assign mstatus_o = mstatus_rdata;
	assign mtvec_addr_o = mtvec_rdata[31-:25];
	assign mtvec_mode_o = mtvec_rdata[1-:2];
	assign mtvt_addr_o = mtvt_rdata[31:32 - MTVT_ADDR_WIDTH];
	assign priv_lvl_o = priv_lvl_rdata;
	cv32e40x_debug_triggers #(
		.DBG_NUM_TRIGGERS(DBG_NUM_TRIGGERS),
		.A_EXT(A_EXT)
	) debug_triggers_i(
		.clk(clk),
		.rst_n(rst_n),
		.csr_wdata_i(csr_wdata_int),
		.tselect_we_i(tselect_we),
		.tdata1_we_i(tdata1_we),
		.tdata2_we_i(tdata2_we),
		.tinfo_we_i(tinfo_we),
		.tselect_rdata_o(tselect_rdata),
		.tdata1_rdata_o(tdata1_rdata),
		.tdata2_rdata_o(tdata2_rdata),
		.tinfo_rdata_o(tinfo_rdata),
		.pc_if_i(pc_if_i),
		.ptr_in_if_i(ptr_in_if_i),
		.priv_lvl_if_i(priv_lvl_if_i),
		.lsu_valid_ex_i(lsu_valid_ex_i),
		.lsu_addr_ex_i(lsu_addr_ex_i),
		.lsu_we_ex_i(lsu_we_ex_i),
		.lsu_be_ex_i(lsu_be_ex_i),
		.priv_lvl_ex_i(id_ex_pipe_i[41-:2]),
		.lsu_atomic_ex_i(lsu_atomic_ex_i),
		.priv_lvl_wb_i(ex_wb_pipe_i[51-:2]),
		.ctrl_fsm_i(ctrl_fsm_i),
		.trigger_match_if_o(trigger_match_if_o),
		.trigger_match_ex_o(trigger_match_ex_o),
		.etrigger_wb_o(etrigger_wb_o)
	);
	localparam [15:0] HPM_EVENT_FLOP = 16'b1111111111000000;
	localparam [28:0] MHPMCOUNTERS_MASK = (2 ** NUM_MHPMCOUNTERS) - 1;
	localparam [31:0] MCOUNTINHIBIT_MASK = (MHPMCOUNTERS_MASK << 3) | 3'b101;
	wire [15:0] hpm_events_raw;
	wire all_counters_disabled;
	wire debug_stopcount;
	assign all_counters_disabled = &(mcountinhibit_n | ~MCOUNTINHIBIT_MASK);
	assign debug_stopcount = dcsr_rdata[10] && ctrl_fsm_i[147];
	genvar _gv_hpm_idx_1;
	generate
		for (_gv_hpm_idx_1 = 0; _gv_hpm_idx_1 < 16; _gv_hpm_idx_1 = _gv_hpm_idx_1 + 1) begin : genblk5
			localparam hpm_idx = _gv_hpm_idx_1;
			if (HPM_EVENT_FLOP[hpm_idx]) begin : hpm_event_flop
				always @(posedge clk or negedge rst_n)
					if (rst_n == 1'b0)
						hpm_events[hpm_idx] <= 1'b0;
					else if (!all_counters_disabled)
						hpm_events[hpm_idx] <= hpm_events_raw[hpm_idx];
			end
			else begin : hpm_even_no_flop
				wire [1:1] sv2v_tmp_E387E;
				assign sv2v_tmp_E387E = hpm_events_raw[hpm_idx];
				always @(*) hpm_events[hpm_idx] = sv2v_tmp_E387E;
			end
		end
	endgenerate
	assign hpm_events_raw[0] = 1'b1;
	assign hpm_events_raw[1] = ctrl_fsm_i[36];
	assign hpm_events_raw[2] = ctrl_fsm_i[35];
	assign hpm_events_raw[3] = ctrl_fsm_i[34];
	assign hpm_events_raw[4] = ctrl_fsm_i[33];
	assign hpm_events_raw[5] = ctrl_fsm_i[32];
	assign hpm_events_raw[6] = ctrl_fsm_i[31];
	assign hpm_events_raw[7] = ctrl_fsm_i[30];
	assign hpm_events_raw[8] = ctrl_fsm_i[29];
	assign hpm_events_raw[9] = ctrl_fsm_i[28];
	assign hpm_events_raw[10] = ctrl_fsm_i[27];
	assign hpm_events_raw[11] = ctrl_fsm_i[26];
	assign hpm_events_raw[12] = ctrl_fsm_i[25];
	assign hpm_events_raw[13] = ctrl_fsm_i[24];
	assign hpm_events_raw[14] = ctrl_fsm_i[23];
	assign hpm_events_raw[15] = ctrl_fsm_i[22];
	wire mcountinhibit_we;
	wire mhpmevent_we;
	assign mcountinhibit_we = csr_we_int & (csr_waddr == 12'h320);
	assign mhpmevent_we = csr_we_int & (((((((((((((((((((((((((((((csr_waddr == 12'h323) || (csr_waddr == 12'h324)) || (csr_waddr == 12'h325)) || (csr_waddr == 12'h326)) || (csr_waddr == 12'h327)) || (csr_waddr == 12'h328)) || (csr_waddr == 12'h329)) || (csr_waddr == 12'h32a)) || (csr_waddr == 12'h32b)) || (csr_waddr == 12'h32c)) || (csr_waddr == 12'h32d)) || (csr_waddr == 12'h32e)) || (csr_waddr == 12'h32f)) || (csr_waddr == 12'h330)) || (csr_waddr == 12'h331)) || (csr_waddr == 12'h332)) || (csr_waddr == 12'h333)) || (csr_waddr == 12'h334)) || (csr_waddr == 12'h335)) || (csr_waddr == 12'h336)) || (csr_waddr == 12'h337)) || (csr_waddr == 12'h338)) || (csr_waddr == 12'h339)) || (csr_waddr == 12'h33a)) || (csr_waddr == 12'h33b)) || (csr_waddr == 12'h33c)) || (csr_waddr == 12'h33d)) || (csr_waddr == 12'h33e)) || (csr_waddr == 12'h33f));
	genvar _gv_incr_gidx_1;
	generate
		for (_gv_incr_gidx_1 = 0; _gv_incr_gidx_1 < 32; _gv_incr_gidx_1 = _gv_incr_gidx_1 + 1) begin : gen_mhpmcounter_increment
			localparam incr_gidx = _gv_incr_gidx_1;
			assign mhpmcounter_increment[incr_gidx * 64+:64] = mhpmcounter_rdata[incr_gidx * 64+:64] + 1;
		end
	endgenerate
	always @(*) begin
		if (_sv2v_0)
			;
		mcountinhibit_n = mcountinhibit_rdata;
		mhpmevent_n = mhpmevent_rdata;
		if (mcountinhibit_we)
			mcountinhibit_n = csr_wdata_int & MCOUNTINHIBIT_MASK;
		if (mhpmevent_we)
			mhpmevent_n[csr_waddr[4:0] * 32+:32] = csr_wdata_int;
	end
	genvar _gv_wcnt_gidx_1;
	generate
		for (_gv_wcnt_gidx_1 = 0; _gv_wcnt_gidx_1 < 32; _gv_wcnt_gidx_1 = _gv_wcnt_gidx_1 + 1) begin : gen_mhpmcounter_write
			localparam wcnt_gidx = _gv_wcnt_gidx_1;
			assign mhpmcounter_write_lower[wcnt_gidx] = csr_we_int && (csr_waddr == (12'hb00 + wcnt_gidx));
			assign mhpmcounter_write_upper[wcnt_gidx] = (!mhpmcounter_write_lower[wcnt_gidx] && csr_we_int) && (csr_waddr == (12'hb80 + wcnt_gidx));
			if (wcnt_gidx == 0) begin : gen_mhpmcounter_mcycle
				assign mhpmcounter_write_increment[wcnt_gidx] = ((!mhpmcounter_write_lower[wcnt_gidx] && !mhpmcounter_write_upper[wcnt_gidx]) && !mcountinhibit_rdata[wcnt_gidx]) && !debug_stopcount;
			end
			else if (wcnt_gidx == 2) begin : gen_mhpmcounter_minstret
				assign mhpmcounter_write_increment[wcnt_gidx] = (((!mhpmcounter_write_lower[wcnt_gidx] && !mhpmcounter_write_upper[wcnt_gidx]) && !mcountinhibit_rdata[wcnt_gidx]) && !debug_stopcount) && hpm_events[1];
			end
			else if ((wcnt_gidx > 2) && (wcnt_gidx < (NUM_MHPMCOUNTERS + 3))) begin : gen_mhpmcounter_write_increment
				assign mhpmcounter_write_increment[wcnt_gidx] = (((!mhpmcounter_write_lower[wcnt_gidx] && !mhpmcounter_write_upper[wcnt_gidx]) && !mcountinhibit_rdata[wcnt_gidx]) && !debug_stopcount) && |(hpm_events & mhpmevent_rdata[(wcnt_gidx * 32) + 15-:16]);
			end
			else begin : gen_mhpmcounter_not_implemented
				assign mhpmcounter_write_increment[wcnt_gidx] = 1'b0;
			end
		end
	endgenerate
	genvar _gv_nxt_gidx_1;
	generate
		for (_gv_nxt_gidx_1 = 0; _gv_nxt_gidx_1 < 32; _gv_nxt_gidx_1 = _gv_nxt_gidx_1 + 1) begin : gen_mhpmcounter_nextvalue
			localparam nxt_gidx = _gv_nxt_gidx_1;
			if ((nxt_gidx == 1) || (nxt_gidx >= (NUM_MHPMCOUNTERS + 3))) begin : gen_non_implemented_nextvalue
				wire [64:1] sv2v_tmp_65194;
				assign sv2v_tmp_65194 = 'b0;
				always @(*) mhpmcounter_n[nxt_gidx * 64+:64] = sv2v_tmp_65194;
				wire [2:1] sv2v_tmp_C49DB;
				assign sv2v_tmp_C49DB = 2'b00;
				always @(*) mhpmcounter_we[nxt_gidx * 2+:2] = sv2v_tmp_C49DB;
			end
			else begin : gen_implemented_nextvalue
				always @(*) begin
					if (_sv2v_0)
						;
					mhpmcounter_we[nxt_gidx * 2+:2] = 2'b00;
					mhpmcounter_n[nxt_gidx * 64+:64] = mhpmcounter_rdata[nxt_gidx * 64+:64];
					if (mhpmcounter_write_lower[nxt_gidx]) begin
						mhpmcounter_n[(nxt_gidx * 64) + 31-:32] = csr_wdata_int;
						mhpmcounter_we[nxt_gidx * 2] = 1'b1;
					end
					else if (mhpmcounter_write_upper[nxt_gidx]) begin
						mhpmcounter_n[(nxt_gidx * 64) + 63-:32] = csr_wdata_int;
						mhpmcounter_we[(nxt_gidx * 2) + 1] = 1'b1;
					end
					else if (mhpmcounter_write_increment[nxt_gidx]) begin
						mhpmcounter_we[nxt_gidx * 2+:2] = 2'b11;
						mhpmcounter_n[nxt_gidx * 64+:64] = mhpmcounter_increment[nxt_gidx * 64+:64];
					end
				end
			end
		end
	endgenerate
	genvar _gv_cnt_gidx_1;
	generate
		for (_gv_cnt_gidx_1 = 0; _gv_cnt_gidx_1 < 32; _gv_cnt_gidx_1 = _gv_cnt_gidx_1 + 1) begin : gen_mhpmcounter
			localparam cnt_gidx = _gv_cnt_gidx_1;
			if ((cnt_gidx == 1) || (cnt_gidx >= (NUM_MHPMCOUNTERS + 3))) begin : gen_non_implemented_mhpmcounter
				wire [64:1] sv2v_tmp_F1990;
				assign sv2v_tmp_F1990 = 'b0;
				always @(*) mhpmcounter_q[cnt_gidx * 64+:64] = sv2v_tmp_F1990;
			end
			else begin : gen_implemented_mhpmcounter
				always @(posedge clk or negedge rst_n)
					if (!rst_n)
						mhpmcounter_q[cnt_gidx * 64+:64] <= 'b0;
					else begin
						if (mhpmcounter_we[cnt_gidx * 2])
							mhpmcounter_q[(cnt_gidx * 64) + 31-:32] <= mhpmcounter_n[(cnt_gidx * 64) + 31-:32];
						if (mhpmcounter_we[(cnt_gidx * 2) + 1])
							mhpmcounter_q[(cnt_gidx * 64) + 63-:32] <= mhpmcounter_n[(cnt_gidx * 64) + 63-:32];
					end
			end
			assign mhpmcounter_rdata[cnt_gidx * 64+:64] = mhpmcounter_q[cnt_gidx * 64+:64];
		end
	endgenerate
	genvar _gv_evt_gidx_1;
	generate
		for (_gv_evt_gidx_1 = 0; _gv_evt_gidx_1 < 32; _gv_evt_gidx_1 = _gv_evt_gidx_1 + 1) begin : gen_mhpmevent
			localparam evt_gidx = _gv_evt_gidx_1;
			if ((evt_gidx < 3) || (evt_gidx >= (NUM_MHPMCOUNTERS + 3))) begin : gen_non_implemented_mhpmevent
				wire [32:1] sv2v_tmp_132D4;
				assign sv2v_tmp_132D4 = 'b0;
				always @(*) mhpmevent_q[evt_gidx * 32+:32] = sv2v_tmp_132D4;
				wire unused_mhpmevent_signals;
				assign unused_mhpmevent_signals = (|mhpmevent_n[evt_gidx * 32+:32] | (|mhpmevent_q[evt_gidx * 32+:32])) | (|mhpmevent_rdata[evt_gidx * 32+:32]);
			end
			else begin : gen_implemented_mhpmevent
				if (1) begin : gen_tie_off
					wire [16:1] sv2v_tmp_2D83C;
					assign sv2v_tmp_2D83C = 'b0;
					always @(*) mhpmevent_q[(evt_gidx * 32) + 31-:16] = sv2v_tmp_2D83C;
				end
				always @(posedge clk or negedge rst_n)
					if (!rst_n)
						mhpmevent_q[(evt_gidx * 32) + 15-:16] <= 'b0;
					else
						mhpmevent_q[(evt_gidx * 32) + 15-:16] <= mhpmevent_n[(evt_gidx * 32) + 15-:16];
			end
			assign mhpmevent_rdata[evt_gidx * 32+:32] = mhpmevent_q[evt_gidx * 32+:32];
		end
	endgenerate
	always @(posedge clk or negedge rst_n)
		if (!rst_n)
			mcountinhibit_q <= MCOUNTINHIBIT_MASK;
		else
			mcountinhibit_q <= mcountinhibit_n;
	assign mcountinhibit_rdata = mcountinhibit_q;
	assign mscratchcswl_in_wb = ex_wb_pipe_i[206] && (csr_waddr == 12'h349);
	assign mnxti_in_wb = ex_wb_pipe_i[206] && (csr_waddr == 12'h345);
	assign unused_signals = ((((((((((((((((((((((mstatush_we | misa_we) | mip_we) | mvendorid_we) | marchid_we) | mimpid_we) | mhartid_we) | mconfigptr_we) | mtval_we) | (|mnxti_n)) | mscratchcswl_we) | (|mscratchcswl_rdata)) | (|mscratchcswl_n)) | mscratchcswl_in_wb) | mnxti_in_wb) | (|mtval_n)) | (|mconfigptr_n)) | (|mhartid_n)) | (|mimpid_n)) | (|marchid_n)) | (|mvendorid_n)) | (|mip_n)) | (|misa_n)) | (|mstatush_n);
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_csr (
	clk,
	rst_n,
	wr_data_i,
	wr_en_i,
	rd_data_o
);
	parameter [31:0] WIDTH = 32;
	parameter [WIDTH - 1:0] RESETVALUE = 1'sb0;
	parameter [WIDTH - 1:0] MASK = 1'sb1;
	input wire clk;
	input wire rst_n;
	input wire [WIDTH - 1:0] wr_data_i;
	input wire wr_en_i;
	output wire [WIDTH - 1:0] rd_data_o;
	reg [WIDTH - 1:0] rdata_q;
	genvar _gv_i_8;
	generate
		for (_gv_i_8 = 0; _gv_i_8 < WIDTH; _gv_i_8 = _gv_i_8 + 1) begin : gen_csr
			localparam i = _gv_i_8;
			if (MASK[i]) begin : gen_unmasked
				always @(posedge clk or negedge rst_n)
					if (!rst_n)
						rdata_q[i] <= RESETVALUE[i];
					else if (wr_en_i)
						rdata_q[i] <= wr_data_i[i];
			end
			else begin : gen_masked
				wire [1:1] sv2v_tmp_951C0;
				assign sv2v_tmp_951C0 = RESETVALUE[i];
				always @(*) rdata_q[i] = sv2v_tmp_951C0;
			end
		end
	endgenerate
	assign rd_data_o = rdata_q;
endmodule
module cv32e40x_debug_triggers (
	clk,
	rst_n,
	csr_wdata_i,
	tselect_we_i,
	tdata1_we_i,
	tdata2_we_i,
	tinfo_we_i,
	tselect_rdata_o,
	tdata1_rdata_o,
	tdata2_rdata_o,
	tinfo_rdata_o,
	pc_if_i,
	ptr_in_if_i,
	priv_lvl_if_i,
	lsu_valid_ex_i,
	lsu_addr_ex_i,
	lsu_we_ex_i,
	lsu_be_ex_i,
	priv_lvl_ex_i,
	lsu_atomic_ex_i,
	priv_lvl_wb_i,
	ctrl_fsm_i,
	trigger_match_if_o,
	trigger_match_ex_o,
	etrigger_wb_o
);
	reg _sv2v_0;
	parameter signed [31:0] DBG_NUM_TRIGGERS = 1;
	parameter [1:0] A_EXT = 2'd0;
	input wire clk;
	input wire rst_n;
	input wire [31:0] csr_wdata_i;
	input wire tselect_we_i;
	input wire tdata1_we_i;
	input wire tdata2_we_i;
	input wire tinfo_we_i;
	output wire [31:0] tselect_rdata_o;
	output reg [31:0] tdata1_rdata_o;
	output reg [31:0] tdata2_rdata_o;
	output wire [31:0] tinfo_rdata_o;
	input wire [31:0] pc_if_i;
	input wire ptr_in_if_i;
	input wire [1:0] priv_lvl_if_i;
	input wire lsu_valid_ex_i;
	input wire [31:0] lsu_addr_ex_i;
	input wire lsu_we_ex_i;
	input wire [3:0] lsu_be_ex_i;
	input wire [1:0] priv_lvl_ex_i;
	input wire [1:0] lsu_atomic_ex_i;
	input wire [1:0] priv_lvl_wb_i;
	input wire [200:0] ctrl_fsm_i;
	output wire [31:0] trigger_match_if_o;
	output wire [31:0] trigger_match_ex_o;
	output wire etrigger_wb_o;
	localparam cv32e40x_pkg_EXC_CAUSE_BREAKPOINT = 11'h003;
	localparam cv32e40x_pkg_EXC_CAUSE_ECALL_MMODE = 11'h00b;
	localparam cv32e40x_pkg_EXC_CAUSE_ILLEGAL_INSN = 11'h002;
	localparam cv32e40x_pkg_EXC_CAUSE_INSTR_BUS_FAULT = 11'h018;
	localparam cv32e40x_pkg_EXC_CAUSE_INSTR_FAULT = 11'h001;
	localparam cv32e40x_pkg_EXC_CAUSE_LOAD_FAULT = 11'h005;
	localparam cv32e40x_pkg_EXC_CAUSE_STORE_FAULT = 11'h007;
	localparam [31:0] ETRIGGER_TDATA2_MASK = 16779438;
	reg [31:0] tselect_n;
	reg [31:0] tdata2_n;
	reg [31:0] tinfo_n;
	reg [31:0] tdata1_n_r;
	reg [31:0] tdata2_n_r;
	reg tdata1_we_r;
	reg tdata2_we_r;
	wire unused_signals;
	localparam cv32e40x_pkg_ETRIGGER_M = 9;
	localparam cv32e40x_pkg_ETRIGGER_U = 6;
	localparam cv32e40x_pkg_MCONTROL2_6_EXECUTE = 2;
	localparam cv32e40x_pkg_MCONTROL2_6_LOAD = 0;
	localparam cv32e40x_pkg_MCONTROL2_6_M = 6;
	localparam cv32e40x_pkg_MCONTROL2_6_MATCH_HIGH = 10;
	localparam cv32e40x_pkg_MCONTROL2_6_MATCH_LOW = 7;
	localparam cv32e40x_pkg_MCONTROL2_6_STORE = 1;
	localparam cv32e40x_pkg_MCONTROL2_6_U = 3;
	localparam cv32e40x_pkg_MCONTROL_6_HIT0 = 22;
	localparam cv32e40x_pkg_MCONTROL_6_HIT1 = 25;
	localparam cv32e40x_pkg_MCONTROL_6_UNCERTAIN = 26;
	localparam cv32e40x_pkg_MCONTROL_6_UNCERTAINEN = 5;
	localparam [31:0] cv32e40x_pkg_TDATA1_RST_VAL = 32'h28001000;
	localparam cv32e40x_pkg_TDATA1_TTYPE_HIGH = 31;
	localparam cv32e40x_pkg_TDATA1_TTYPE_LOW = 28;
	function automatic cv32e40x_pkg_etrigger_u_resolve;
		input reg next_value;
		cv32e40x_pkg_etrigger_u_resolve = 1'b0;
	endfunction
	function automatic [3:0] cv32e40x_pkg_mcontrol2_6_match_resolve;
		input reg [3:0] next_value;
		cv32e40x_pkg_mcontrol2_6_match_resolve = (((next_value != 4'h0) && (next_value != 4'h2)) && (next_value != 4'h3) ? 4'h0 : next_value);
	endfunction
	function automatic cv32e40x_pkg_mcontrol2_6_u_resolve;
		input reg next_value;
		cv32e40x_pkg_mcontrol2_6_u_resolve = 1'b0;
	endfunction
	function automatic [1:0] cv32e40x_pkg_mcontrol6_hit_resolve;
		input reg [1:0] current_value;
		input reg [1:0] next_value;
		cv32e40x_pkg_mcontrol6_hit_resolve = ((next_value != 2'b00) && (next_value != 2'b01) ? current_value : next_value);
	endfunction
	function automatic cv32e40x_pkg_mcontrol6_uncertain_resolve;
		input reg next_value;
		cv32e40x_pkg_mcontrol6_uncertain_resolve = 1'b0;
	endfunction
	function automatic cv32e40x_pkg_mcontrol6_uncertainen_resolve;
		input reg next_value;
		cv32e40x_pkg_mcontrol6_uncertainen_resolve = 1'b0;
	endfunction
	function automatic signed [1:0] sv2v_cast_2_signed;
		input reg signed [1:0] inp;
		sv2v_cast_2_signed = inp;
	endfunction
	function automatic signed [10:0] sv2v_cast_11_signed;
		input reg signed [10:0] inp;
		sv2v_cast_11_signed = inp;
	endfunction
	generate
		if (DBG_NUM_TRIGGERS > 0) begin : gen_triggers
			wire [DBG_NUM_TRIGGERS - 1:0] tdata1_we_int;
			reg [DBG_NUM_TRIGGERS - 1:0] tdata1_we_hit;
			wire [DBG_NUM_TRIGGERS - 1:0] tdata2_we_int;
			reg [31:0] tdata1_n [0:DBG_NUM_TRIGGERS - 1];
			wire [31:0] tdata1_q [0:DBG_NUM_TRIGGERS - 1];
			wire [31:0] tdata2_q [0:DBG_NUM_TRIGGERS - 1];
			wire [31:0] tselect_q;
			wire [31:0] tdata1_rdata [0:DBG_NUM_TRIGGERS - 1];
			wire [31:0] tdata2_rdata [0:DBG_NUM_TRIGGERS - 1];
			wire [DBG_NUM_TRIGGERS - 1:0] trigger_match_if;
			wire [DBG_NUM_TRIGGERS - 1:0] trigger_match_ex;
			wire [DBG_NUM_TRIGGERS - 1:0] etrigger_wb;
			wire [DBG_NUM_TRIGGERS - 1:0] if_addr_match;
			wire [DBG_NUM_TRIGGERS - 1:0] lsu_addr_match_en;
			wire [DBG_NUM_TRIGGERS - 1:0] lsu_addr_match;
			reg [3:0] lsu_byte_addr_match [0:DBG_NUM_TRIGGERS - 1];
			wire [DBG_NUM_TRIGGERS - 1:0] priv_lvl_match_en_if;
			wire [DBG_NUM_TRIGGERS - 1:0] priv_lvl_match_en_ex;
			wire [DBG_NUM_TRIGGERS - 1:0] priv_lvl_match_en_wb;
			reg [1:0] lsu_addr_low_lsb;
			reg [1:0] lsu_addr_high_lsb;
			wire [31:0] lsu_addr_low;
			wire [31:0] lsu_addr_high;
			reg [31:0] exception_match [0:DBG_NUM_TRIGGERS - 1];
			reg [1:0] mcontrol6_hit_resolved [0:DBG_NUM_TRIGGERS - 1];
			genvar _gv_idx_1;
			for (_gv_idx_1 = 0; _gv_idx_1 < DBG_NUM_TRIGGERS; _gv_idx_1 = _gv_idx_1 + 1) begin : tdata1_wdata
				localparam idx = _gv_idx_1;
				always @(*) begin
					if (_sv2v_0)
						;
					tdata1_n[idx] = tdata1_rdata[idx];
					tdata1_we_hit[idx] = 1'b0;
					mcontrol6_hit_resolved[idx] = cv32e40x_pkg_mcontrol6_hit_resolve({tdata1_rdata[idx][cv32e40x_pkg_MCONTROL_6_HIT1], tdata1_rdata[idx][cv32e40x_pkg_MCONTROL_6_HIT0]}, {csr_wdata_i[cv32e40x_pkg_MCONTROL_6_HIT1], csr_wdata_i[cv32e40x_pkg_MCONTROL_6_HIT0]});
					if (tdata1_we_i && (tselect_rdata_o == idx)) begin
						if (csr_wdata_i[cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h2)
							tdata1_n[idx] = {21'h050002, cv32e40x_pkg_mcontrol2_6_match_resolve(csr_wdata_i[cv32e40x_pkg_MCONTROL2_6_MATCH_HIGH:cv32e40x_pkg_MCONTROL2_6_MATCH_LOW]), csr_wdata_i[6], 2'b00, cv32e40x_pkg_mcontrol2_6_u_resolve(csr_wdata_i[cv32e40x_pkg_MCONTROL2_6_U]), csr_wdata_i[2], csr_wdata_i[1], csr_wdata_i[0]};
						else if (csr_wdata_i[cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h6)
							tdata1_n[idx] = {5'h0d, cv32e40x_pkg_mcontrol6_uncertain_resolve(csr_wdata_i[cv32e40x_pkg_MCONTROL_6_UNCERTAIN]), mcontrol6_hit_resolved[idx][1], 2'b00, mcontrol6_hit_resolved[idx][0], 11'b00000000010, cv32e40x_pkg_mcontrol2_6_match_resolve(csr_wdata_i[cv32e40x_pkg_MCONTROL2_6_MATCH_HIGH:cv32e40x_pkg_MCONTROL2_6_MATCH_LOW]), csr_wdata_i[6], cv32e40x_pkg_mcontrol6_uncertainen_resolve(csr_wdata_i[cv32e40x_pkg_MCONTROL_6_UNCERTAINEN]), 1'b0, cv32e40x_pkg_mcontrol2_6_u_resolve(csr_wdata_i[cv32e40x_pkg_MCONTROL2_6_U]), csr_wdata_i[2], csr_wdata_i[1], csr_wdata_i[0]};
						else if (csr_wdata_i[cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h5) begin
							if (|(tdata2_rdata_o & ~ETRIGGER_TDATA2_MASK))
								tdata1_n[idx] = {5'h1f, {27 {1'b0}}};
							else
								tdata1_n[idx] = {22'h160000, csr_wdata_i[9], 2'b00, cv32e40x_pkg_etrigger_u_resolve(csr_wdata_i[cv32e40x_pkg_ETRIGGER_U]), 6'b000001};
						end
						else if (csr_wdata_i[cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'hf)
							tdata1_n[idx] = {5'h1f, {27 {1'b0}}};
						else
							tdata1_n[idx] = {5'h1f, {27 {1'b0}}};
					end
					if (ctrl_fsm_i[110]) begin
						if (tdata1_rdata[idx][cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h6) begin
							if (ctrl_fsm_i[111 + idx]) begin
								tdata1_n[idx][cv32e40x_pkg_MCONTROL_6_HIT1] = 1'b0;
								tdata1_n[idx][cv32e40x_pkg_MCONTROL_6_HIT0] = 1'b1;
								tdata1_we_hit[idx] = 1'b1;
							end
						end
					end
				end
			end
			always @(*) begin
				if (_sv2v_0)
					;
				tselect_n = (csr_wdata_i < DBG_NUM_TRIGGERS ? csr_wdata_i : tselect_rdata_o);
				tdata2_n = tdata2_rdata_o;
				if (tdata2_we_i) begin
					if (((tdata1_rdata_o[cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'hf) || (tdata1_rdata_o[cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h2)) || (tdata1_rdata_o[cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h6))
						tdata2_n = csr_wdata_i;
					else
						tdata2_n = csr_wdata_i & ETRIGGER_TDATA2_MASK;
				end
				tinfo_n = tinfo_rdata_o;
			end
			always @(*) begin
				if (_sv2v_0)
					;
				lsu_addr_high_lsb = 2'b00;
				lsu_addr_low_lsb = 2'b00;
				begin : sv2v_autoblock_1
					reg signed [31:0] b;
					for (b = 0; b < 4; b = b + 1)
						begin : gen_high_byte_checks
							if (lsu_be_ex_i[b])
								lsu_addr_high_lsb = sv2v_cast_2_signed(b);
						end
				end
				begin : sv2v_autoblock_2
					reg signed [31:0] b;
					for (b = 3; b >= 0; b = b - 1)
						begin : gen_low_byte_checks
							if (lsu_be_ex_i[b])
								lsu_addr_low_lsb = sv2v_cast_2_signed(b);
						end
				end
			end
			assign lsu_addr_high = {lsu_addr_ex_i[31:2], lsu_addr_high_lsb};
			assign lsu_addr_low = {lsu_addr_ex_i[31:2], lsu_addr_low_lsb};
			genvar _gv_idx_2;
			for (_gv_idx_2 = 0; _gv_idx_2 < DBG_NUM_TRIGGERS; _gv_idx_2 = _gv_idx_2 + 1) begin : tmatch_csr
				localparam idx = _gv_idx_2;
				assign if_addr_match[idx] = (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_MATCH_HIGH:cv32e40x_pkg_MCONTROL2_6_MATCH_LOW] == 4'h0 ? pc_if_i == tdata2_rdata[idx] : (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_MATCH_HIGH:cv32e40x_pkg_MCONTROL2_6_MATCH_LOW] == 4'h2 ? pc_if_i >= tdata2_rdata[idx] : pc_if_i < tdata2_rdata[idx]));
				assign priv_lvl_match_en_if[idx] = (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_M] && (priv_lvl_if_i == 2'b11)) || (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_U] && (priv_lvl_if_i == 2'b00));
				assign trigger_match_if[idx] = ((((((tdata1_rdata[idx][cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h2) || (tdata1_rdata[idx][cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h6)) && tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_EXECUTE]) && priv_lvl_match_en_if[idx]) && !ctrl_fsm_i[147]) && !ptr_in_if_i) && if_addr_match[idx];
				always @(*) begin
					if (_sv2v_0)
						;
					begin : sv2v_autoblock_3
						reg signed [31:0] b;
						for (b = 0; b < 4; b = b + 1)
							if (lsu_be_ex_i[b] && (sv2v_cast_2_signed(b) == tdata2_rdata[idx][1:0]))
								lsu_byte_addr_match[idx][b] = 1'b1;
							else
								lsu_byte_addr_match[idx][b] = 1'b0;
					end
				end
				assign lsu_addr_match[idx] = (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_MATCH_HIGH:cv32e40x_pkg_MCONTROL2_6_MATCH_LOW] == 4'h0 ? (lsu_addr_ex_i[31:2] == tdata2_rdata[idx][31:2]) && |lsu_byte_addr_match[idx] : (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_MATCH_HIGH:cv32e40x_pkg_MCONTROL2_6_MATCH_LOW] == 4'h2 ? lsu_addr_high >= tdata2_rdata[idx] : lsu_addr_low < tdata2_rdata[idx]));
				assign priv_lvl_match_en_ex[idx] = (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_M] && (priv_lvl_ex_i == 2'b11)) || (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_U] && (priv_lvl_ex_i == 2'b00));
				assign lsu_addr_match_en[idx] = lsu_valid_ex_i && ((tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_LOAD] && (!lsu_we_ex_i || (lsu_atomic_ex_i == 2'b11))) || (tdata1_rdata[idx][cv32e40x_pkg_MCONTROL2_6_STORE] && lsu_we_ex_i));
				assign trigger_match_ex[idx] = (((((tdata1_rdata[idx][cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h2) || (tdata1_rdata[idx][cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h6)) && priv_lvl_match_en_ex[idx]) && lsu_addr_match_en[idx]) && lsu_addr_match[idx]) && !ctrl_fsm_i[147];
				always @(*) begin
					if (_sv2v_0)
						;
					exception_match[idx] = 32'd0;
					begin : sv2v_autoblock_4
						reg signed [31:0] i;
						for (i = 0; i < 32; i = i + 1)
							exception_match[idx][i] = (tdata2_rdata[idx][i] && ctrl_fsm_i[11]) && (ctrl_fsm_i[10-:11] == sv2v_cast_11_signed(i));
					end
				end
				assign priv_lvl_match_en_wb[idx] = (tdata1_rdata[idx][cv32e40x_pkg_ETRIGGER_M] && (priv_lvl_wb_i == 2'b11)) || (tdata1_rdata[idx][cv32e40x_pkg_ETRIGGER_U] && (priv_lvl_wb_i == 2'b00));
				assign etrigger_wb[idx] = (((tdata1_rdata[idx][cv32e40x_pkg_TDATA1_TTYPE_HIGH:cv32e40x_pkg_TDATA1_TTYPE_LOW] == 4'h5) && priv_lvl_match_en_wb[idx]) && |exception_match[idx]) && !ctrl_fsm_i[147];
				cv32e40x_csr #(
					.WIDTH(32),
					.RESETVALUE(cv32e40x_pkg_TDATA1_RST_VAL)
				) tdata1_csr_i(
					.clk(clk),
					.rst_n(rst_n),
					.wr_data_i(tdata1_n[idx]),
					.wr_en_i(tdata1_we_int[idx]),
					.rd_data_o(tdata1_q[idx])
				);
				cv32e40x_csr #(
					.WIDTH(32),
					.RESETVALUE(32'd0)
				) tdata2_csr_i(
					.clk(clk),
					.rst_n(rst_n),
					.wr_data_i(tdata2_n),
					.wr_en_i(tdata2_we_int[idx]),
					.rd_data_o(tdata2_q[idx])
				);
				assign tdata1_we_int[idx] = (tdata1_we_i && (tselect_rdata_o == idx)) || tdata1_we_hit[idx];
				assign tdata2_we_int[idx] = tdata2_we_i && (tselect_rdata_o == idx);
				assign tdata1_rdata[idx] = tdata1_q[idx];
				assign tdata2_rdata[idx] = tdata2_q[idx];
			end
			cv32e40x_csr #(
				.WIDTH(32),
				.RESETVALUE(32'd0)
			) tselect_csr_i(
				.clk(clk),
				.rst_n(rst_n),
				.wr_data_i(tselect_n),
				.wr_en_i(tselect_we_i),
				.rd_data_o(tselect_q)
			);
			always @(*) begin
				if (_sv2v_0)
					;
				tdata1_rdata_o = tdata1_rdata[0];
				tdata2_rdata_o = tdata2_rdata[0];
				begin : sv2v_autoblock_5
					reg [31:0] i;
					for (i = 0; i < DBG_NUM_TRIGGERS; i = i + 1)
						if (tselect_rdata_o == i) begin
							tdata1_rdata_o = tdata1_rdata[i];
							tdata2_rdata_o = tdata2_rdata[i];
						end
				end
			end
			always @(*) begin
				if (_sv2v_0)
					;
				tdata1_we_r = tdata1_we_i || tselect_we_i;
				tdata2_we_r = tdata2_we_i || tselect_we_i;
				tdata1_n_r = tdata1_n[0];
				tdata2_n_r = tdata2_n;
				begin : sv2v_autoblock_6
					reg [31:0] i;
					for (i = 0; i < DBG_NUM_TRIGGERS; i = i + 1)
						if (tselect_rdata_o == i) begin
							tdata1_n_r = tdata1_n[i];
							tdata1_we_r = tdata1_we_int[i] || tselect_we_i;
						end
				end
				if (tselect_we_i) begin : sv2v_autoblock_7
					reg [31:0] i;
					for (i = 0; i < DBG_NUM_TRIGGERS; i = i + 1)
						if (tselect_n == i) begin
							tdata1_n_r = tdata1_rdata[i];
							tdata2_n_r = tdata2_rdata[i];
						end
				end
			end
			assign tselect_rdata_o = tselect_q;
			assign tinfo_rdata_o = 32'h01008064;
			assign trigger_match_if_o = {{32 - DBG_NUM_TRIGGERS {1'b0}}, trigger_match_if};
			assign trigger_match_ex_o = {{32 - DBG_NUM_TRIGGERS {1'b0}}, trigger_match_ex};
			assign etrigger_wb_o = |etrigger_wb;
			assign unused_signals = ((((tinfo_we_i | (|tinfo_n)) | (|tdata1_n_r)) | (|tdata2_n_r)) | tdata1_we_r) | tdata2_we_r;
		end
		else begin : gen_no_triggers
			wire [32:1] sv2v_tmp_276E1;
			assign sv2v_tmp_276E1 = 1'sb0;
			always @(*) tdata1_rdata_o = sv2v_tmp_276E1;
			wire [32:1] sv2v_tmp_FC382;
			assign sv2v_tmp_FC382 = 1'sb0;
			always @(*) tdata2_rdata_o = sv2v_tmp_FC382;
			assign tselect_rdata_o = 1'sb0;
			assign tinfo_rdata_o = 1'sb0;
			assign trigger_match_if_o = 1'sb0;
			assign trigger_match_ex_o = 1'sb0;
			assign etrigger_wb_o = 1'sb0;
			wire tdata1_n;
			assign tdata1_n = 1'sb0;
			wire [32:1] sv2v_tmp_508A8;
			assign sv2v_tmp_508A8 = 1'sb0;
			always @(*) tdata2_n = sv2v_tmp_508A8;
			wire [32:1] sv2v_tmp_27D73;
			assign sv2v_tmp_27D73 = 1'sb0;
			always @(*) tselect_n = sv2v_tmp_27D73;
			wire [32:1] sv2v_tmp_2CD3B;
			assign sv2v_tmp_2CD3B = 1'sb0;
			always @(*) tinfo_n = sv2v_tmp_2CD3B;
			wire [32:1] sv2v_tmp_A3014;
			assign sv2v_tmp_A3014 = 1'sb0;
			always @(*) tdata1_n_r = sv2v_tmp_A3014;
			wire [32:1] sv2v_tmp_931D7;
			assign sv2v_tmp_931D7 = 1'sb0;
			always @(*) tdata2_n_r = sv2v_tmp_931D7;
			wire [1:1] sv2v_tmp_A7C1B;
			assign sv2v_tmp_A7C1B = 1'b0;
			always @(*) tdata1_we_r = sv2v_tmp_A7C1B;
			wire [1:1] sv2v_tmp_EF438;
			assign sv2v_tmp_EF438 = 1'b0;
			always @(*) tdata2_we_r = sv2v_tmp_EF438;
			assign unused_signals = (((((((((((|tdata1_n | (|tdata2_n)) | (|tselect_n)) | (|tinfo_n)) | (|csr_wdata_i)) | tdata1_we_i) | tdata2_we_i) | tselect_we_i) | tinfo_we_i) | (|tdata1_n_r)) | (|tdata2_n_r)) | tdata1_we_r) | tdata2_we_r;
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_decoder (
	deassert_we_i,
	sys_en_o,
	illegal_insn_o,
	sys_ebrk_insn_o,
	sys_mret_insn_o,
	sys_dret_insn_o,
	sys_ecall_insn_o,
	sys_wfi_insn_o,
	sys_wfe_insn_o,
	sys_fence_insn_o,
	sys_fencei_insn_o,
	if_id_pipe_i,
	alu_en_o,
	alu_bch_o,
	alu_jmp_o,
	alu_jmpr_o,
	alu_operator_o,
	alu_op_a_mux_sel_o,
	alu_op_b_mux_sel_o,
	mul_operator_o,
	mul_en_o,
	mul_signed_mode_o,
	div_operator_o,
	div_en_o,
	csr_en_o,
	csr_en_raw_o,
	csr_op_o,
	lsu_en_o,
	lsu_we_o,
	lsu_size_o,
	lsu_sext_o,
	lsu_atop_o,
	rf_we_o,
	rf_re_o,
	rf_raddr_i,
	rf_waddr_i,
	rf_illegal_raddr_o,
	op_c_mux_sel_o,
	imm_a_mux_sel_o,
	imm_b_mux_sel_o,
	bch_jmp_mux_sel_o,
	ctrl_fsm_i,
	tbljmp_first_i
);
	reg _sv2v_0;
	parameter [0:0] RV32 = 1'd0;
	parameter [31:0] REGFILE_NUM_READ_PORTS = 2;
	parameter [1:0] A_EXT = 2'd0;
	parameter [1:0] B_EXT = 2'd0;
	parameter [1:0] M_EXT = 2'd1;
	parameter [0:0] CLIC = 1;
	input wire deassert_we_i;
	output wire sys_en_o;
	output wire illegal_insn_o;
	output wire sys_ebrk_insn_o;
	output wire sys_mret_insn_o;
	output wire sys_dret_insn_o;
	output wire sys_ecall_insn_o;
	output wire sys_wfi_insn_o;
	output wire sys_wfe_insn_o;
	output wire sys_fence_insn_o;
	output wire sys_fencei_insn_o;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	input wire [190:0] if_id_pipe_i;
	output wire alu_en_o;
	output wire alu_bch_o;
	output wire alu_jmp_o;
	output wire alu_jmpr_o;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	output wire [5:0] alu_operator_o;
	output wire [1:0] alu_op_a_mux_sel_o;
	output wire [1:0] alu_op_b_mux_sel_o;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	output wire [0:0] mul_operator_o;
	output wire mul_en_o;
	output wire [1:0] mul_signed_mode_o;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	output wire [1:0] div_operator_o;
	output wire div_en_o;
	output wire csr_en_o;
	output wire csr_en_raw_o;
	localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
	output wire [1:0] csr_op_o;
	output wire lsu_en_o;
	output wire lsu_we_o;
	output wire [1:0] lsu_size_o;
	output wire lsu_sext_o;
	output wire [5:0] lsu_atop_o;
	output wire rf_we_o;
	output wire [1:0] rf_re_o;
	localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
	input wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_ADDR_WIDTH) - 1:0] rf_raddr_i;
	input wire [4:0] rf_waddr_i;
	output wire [REGFILE_NUM_READ_PORTS - 1:0] rf_illegal_raddr_o;
	output wire [1:0] op_c_mux_sel_o;
	output wire imm_a_mux_sel_o;
	output wire [1:0] imm_b_mux_sel_o;
	output wire [1:0] bch_jmp_mux_sel_o;
	input wire [200:0] ctrl_fsm_i;
	input wire tbljmp_first_i;
	wire rf_we;
	wire lsu_en;
	wire csr_en;
	wire alu_en;
	wire mul_en;
	wire div_en;
	wire sys_en;
	wire [31:0] instr_rdata;
	wire dec_i_rf_illegal_addr;
	wire dec_a_rf_illegal_addr;
	wire dec_b_rf_illegal_addr;
	wire dec_m_rf_illegal_addr;
	wire rf_illegal_waddr;
	wire [54:0] decoder_i_ctrl;
	wire [54:0] decoder_i_ctrl_int;
	wire [54:0] decoder_m_ctrl;
	wire [54:0] decoder_m_ctrl_int;
	wire [54:0] decoder_a_ctrl;
	wire [54:0] decoder_a_ctrl_int;
	wire [54:0] decoder_b_ctrl;
	wire [54:0] decoder_b_ctrl_int;
	reg [54:0] decoder_ctrl_mux;
	assign instr_rdata = if_id_pipe_i[189-:32];
	genvar _gv_rf_rport_idx_1;
	generate
		for (_gv_rf_rport_idx_1 = 0; _gv_rf_rport_idx_1 < REGFILE_NUM_READ_PORTS; _gv_rf_rport_idx_1 = _gv_rf_rport_idx_1 + 1) begin : gen_rf_raddr_illegal
			localparam rf_rport_idx = _gv_rf_rport_idx_1;
			assign rf_illegal_raddr_o[rf_rport_idx] = (RV32 == 1'd0 ? 1'b0 : rf_raddr_i[(((REGFILE_NUM_READ_PORTS - 1) - rf_rport_idx) * cv32e40x_pkg_REGFILE_ADDR_WIDTH) + 4]);
		end
	endgenerate
	assign rf_illegal_waddr = (RV32 == 1'd0 ? 1'b0 : rf_waddr_i[4]);
	cv32e40x_i_decoder #(.CLIC(CLIC)) i_decoder_i(
		.instr_rdata_i(instr_rdata),
		.tbljmp_i(if_id_pipe_i[151]),
		.ctrl_fsm_i(ctrl_fsm_i),
		.decoder_ctrl_o(decoder_i_ctrl_int)
	);
	assign dec_i_rf_illegal_addr = ((decoder_i_ctrl_int[25] && rf_illegal_raddr_o[0]) || (decoder_i_ctrl_int[26] && rf_illegal_raddr_o[1])) || (decoder_i_ctrl_int[24] && rf_illegal_waddr);
	function automatic [5:0] sv2v_cast_9A8CC;
		input reg [5:0] inp;
		sv2v_cast_9A8CC = inp;
	endfunction
	function automatic [0:0] sv2v_cast_ACD50;
		input reg [0:0] inp;
		sv2v_cast_ACD50 = inp;
	endfunction
	function automatic [1:0] sv2v_cast_B845F;
		input reg [1:0] inp;
		sv2v_cast_B845F = inp;
	endfunction
	function automatic [1:0] sv2v_cast_1A666;
		input reg [1:0] inp;
		sv2v_cast_1A666 = inp;
	endfunction
	localparam [54:0] cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN = {4'b0000, sv2v_cast_9A8CC(6'b010011), 12'b111010100010, sv2v_cast_ACD50(1'b0), 3'b000, sv2v_cast_B845F(2'b00), 4'b0000, sv2v_cast_1A666(2'b00), 21'b000000000000100000000};
	assign decoder_i_ctrl = (dec_i_rf_illegal_addr || if_id_pipe_i[101] ? cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN : decoder_i_ctrl_int);
	generate
		if (A_EXT != 2'd0) begin : a_decoder
			cv32e40x_a_decoder #(.A_EXT(A_EXT)) a_decoder_i(
				.instr_rdata_i(instr_rdata),
				.decoder_ctrl_o(decoder_a_ctrl_int)
			);
			assign dec_a_rf_illegal_addr = ((decoder_a_ctrl_int[25] && rf_illegal_raddr_o[0]) || (decoder_a_ctrl_int[26] && rf_illegal_raddr_o[1])) || (decoder_a_ctrl_int[24] && rf_illegal_waddr);
			assign decoder_a_ctrl = (dec_a_rf_illegal_addr || if_id_pipe_i[101] ? cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN : decoder_a_ctrl_int);
		end
		else begin : no_a_decoder
			assign dec_a_rf_illegal_addr = 1'b0;
			assign decoder_a_ctrl = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		end
		if (B_EXT != 2'd0) begin : b_decoder
			cv32e40x_b_decoder #(.B_EXT(B_EXT)) b_decoder_i(
				.instr_rdata_i(instr_rdata),
				.decoder_ctrl_o(decoder_b_ctrl_int)
			);
			assign dec_b_rf_illegal_addr = ((decoder_b_ctrl_int[25] && rf_illegal_raddr_o[0]) || (decoder_b_ctrl_int[26] && rf_illegal_raddr_o[1])) || (decoder_b_ctrl_int[24] && rf_illegal_waddr);
			assign decoder_b_ctrl = (dec_b_rf_illegal_addr || if_id_pipe_i[101] ? cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN : decoder_b_ctrl_int);
		end
		else begin : no_b_decoder
			assign dec_b_rf_illegal_addr = 1'b0;
			assign decoder_b_ctrl = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		end
		if (M_EXT != 2'd0) begin : m_decoder
			cv32e40x_m_decoder #(.M_EXT(M_EXT)) m_decoder_i(
				.instr_rdata_i(instr_rdata),
				.decoder_ctrl_o(decoder_m_ctrl_int)
			);
			assign dec_m_rf_illegal_addr = ((decoder_m_ctrl_int[25] && rf_illegal_raddr_o[0]) || (decoder_m_ctrl_int[26] && rf_illegal_raddr_o[1])) || (decoder_m_ctrl_int[24] && rf_illegal_waddr);
			assign decoder_m_ctrl = (dec_m_rf_illegal_addr || if_id_pipe_i[101] ? cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN : decoder_m_ctrl_int);
		end
		else begin : no_m_decoder
			assign dec_m_rf_illegal_addr = 1'b0;
			assign decoder_m_ctrl = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		end
	endgenerate
	always @(*) begin
		if (_sv2v_0)
			;
		(* full_case, parallel_case *)
		case (1'b1)
			!decoder_m_ctrl[8]: decoder_ctrl_mux = decoder_m_ctrl;
			!decoder_a_ctrl[8]: decoder_ctrl_mux = decoder_a_ctrl;
			!decoder_i_ctrl[8]: decoder_ctrl_mux = decoder_i_ctrl;
			!decoder_b_ctrl[8]: decoder_ctrl_mux = decoder_b_ctrl;
			default: decoder_ctrl_mux = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		endcase
	end
	assign alu_en = decoder_ctrl_mux[54];
	assign alu_bch_o = decoder_i_ctrl[53];
	assign alu_jmp_o = decoder_i_ctrl[52];
	assign alu_jmpr_o = decoder_i_ctrl[51];
	assign alu_operator_o = decoder_ctrl_mux[50-:6];
	assign alu_op_a_mux_sel_o = decoder_ctrl_mux[44-:2];
	assign alu_op_b_mux_sel_o = decoder_ctrl_mux[42-:2];
	assign op_c_mux_sel_o = decoder_ctrl_mux[40-:2];
	assign imm_a_mux_sel_o = decoder_ctrl_mux[38];
	assign imm_b_mux_sel_o = decoder_ctrl_mux[37-:2];
	assign bch_jmp_mux_sel_o = decoder_i_ctrl[35-:2];
	assign mul_en = decoder_m_ctrl[33];
	assign mul_operator_o = decoder_m_ctrl[32-:1];
	assign mul_signed_mode_o = decoder_m_ctrl[31-:2];
	assign div_en = decoder_m_ctrl[29];
	assign div_operator_o = decoder_m_ctrl[28-:2];
	assign rf_re_o = decoder_ctrl_mux[26-:2];
	assign rf_we = decoder_ctrl_mux[24];
	assign csr_en = decoder_i_ctrl[23];
	assign csr_op_o = decoder_i_ctrl[22-:2];
	assign lsu_en = decoder_ctrl_mux[20];
	assign lsu_we_o = decoder_ctrl_mux[19];
	assign lsu_size_o = decoder_ctrl_mux[18-:2];
	assign lsu_sext_o = decoder_ctrl_mux[16];
	assign lsu_atop_o = decoder_a_ctrl[15-:6];
	assign sys_en = decoder_i_ctrl[9];
	assign sys_mret_insn_o = decoder_i_ctrl[2];
	assign sys_dret_insn_o = decoder_i_ctrl[7];
	assign sys_ebrk_insn_o = decoder_i_ctrl[6];
	assign sys_ecall_insn_o = decoder_i_ctrl[5];
	assign sys_wfi_insn_o = decoder_i_ctrl[1];
	assign sys_wfe_insn_o = decoder_i_ctrl[0];
	assign sys_fence_insn_o = decoder_i_ctrl[4];
	assign sys_fencei_insn_o = decoder_i_ctrl[3];
	assign alu_en_o = (deassert_we_i ? 1'b0 : alu_en);
	assign sys_en_o = (deassert_we_i ? 1'b0 : sys_en);
	assign mul_en_o = (deassert_we_i ? 1'b0 : mul_en);
	assign div_en_o = (deassert_we_i ? 1'b0 : div_en);
	assign lsu_en_o = (deassert_we_i ? 1'b0 : lsu_en);
	assign csr_en_o = (deassert_we_i ? 1'b0 : csr_en);
	assign rf_we_o = (deassert_we_i || tbljmp_first_i ? 1'b0 : rf_we);
	assign illegal_insn_o = (deassert_we_i ? 1'b0 : decoder_ctrl_mux[8]);
	assign csr_en_raw_o = csr_en;
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_div (
	clk,
	rst_n,
	operator_i,
	data_ind_timing_i,
	op_a_i,
	op_b_i,
	alu_clz_en_o,
	alu_clz_data_rev_o,
	alu_clz_result_i,
	alu_shift_en_o,
	alu_shift_amt_o,
	alu_op_b_shifted_i,
	halt_i,
	kill_i,
	valid_i,
	ready_o,
	ready_i,
	valid_o,
	result_o
);
	reg _sv2v_0;
	input wire clk;
	input wire rst_n;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	input wire [1:0] operator_i;
	input wire data_ind_timing_i;
	input wire [31:0] op_a_i;
	input wire [31:0] op_b_i;
	output wire alu_clz_en_o;
	output wire [31:0] alu_clz_data_rev_o;
	input wire [5:0] alu_clz_result_i;
	output wire alu_shift_en_o;
	output wire [5:0] alu_shift_amt_o;
	input wire [31:0] alu_op_b_shifted_i;
	input wire halt_i;
	input wire kill_i;
	input wire valid_i;
	output reg ready_o;
	input wire ready_i;
	output reg valid_o;
	output wire [31:0] result_o;
	reg [31:0] alu_clz_data;
	reg [31:0] quotient_q;
	wire [31:0] quotient_d;
	reg [31:0] remainder_q;
	wire [31:0] remainder_d;
	reg [31:0] divisor_q;
	wire [31:0] divisor_d;
	wire div_rem_d;
	reg div_rem_q;
	wire comp_inv_d;
	reg comp_inv_q;
	wire res_inv_d;
	reg res_inv_q;
	wire [31:0] add_a_mux;
	reg [31:0] add_out;
	wire [31:0] add_b_mux;
	wire [31:0] divisor_mux;
	wire [31:0] res_mux;
	wire [32:0] op_b_alt;
	reg [5:0] cnt_q;
	reg [5:0] cnt_d;
	wire [5:0] cnt_d_dummy;
	wire cnt_q_is_zero;
	reg init_dummy_cnt;
	reg remainder_en;
	reg divisor_en;
	reg quotient_en;
	wire comp_out;
	wire init_remainder_pos;
	reg init_en;
	reg [1:0] next_state;
	reg [1:0] state;
	wire div_signed;
	wire div_rem;
	wire op_b_is_neg;
	wire op_b_is_zero;
	function automatic [1:0] sv2v_cast_B845F;
		input reg [1:0] inp;
		sv2v_cast_B845F = inp;
	endfunction
	assign div_signed = (operator_i == sv2v_cast_B845F(2'b01)) || (operator_i == sv2v_cast_B845F(2'b11));
	assign div_rem = (operator_i == sv2v_cast_B845F(2'b11)) || (operator_i == sv2v_cast_B845F(2'b10));
	assign op_b_alt = {~op_b_i, 1'b0};
	always @(*) begin
		if (_sv2v_0)
			;
		alu_clz_data = op_b_i;
		case (operator_i)
			sv2v_cast_B845F(2'b00), sv2v_cast_B845F(2'b10): alu_clz_data = op_b_i;
			sv2v_cast_B845F(2'b01), sv2v_cast_B845F(2'b11):
				if (op_b_is_neg)
					alu_clz_data = {op_b_alt[31:1], 1'b1};
				else
					alu_clz_data = op_b_i;
			default:
				;
		endcase
	end
	genvar _gv_l_3;
	generate
		for (_gv_l_3 = 0; _gv_l_3 < 32; _gv_l_3 = _gv_l_3 + 1) begin : gen_div_clz_data_rev
			localparam l = _gv_l_3;
			assign alu_clz_data_rev_o[l] = alu_clz_data[31 - l];
		end
	endgenerate
	assign alu_clz_en_o = valid_i;
	assign op_b_is_neg = op_b_i[31] & div_signed;
	assign alu_shift_amt_o = alu_clz_result_i;
	assign alu_shift_en_o = valid_i;
	assign op_b_is_zero = !(|op_b_i);
	assign init_remainder_pos = init_en && !(div_signed && (op_a_i[31] ^ op_b_is_neg));
	assign divisor_mux = (init_en ? alu_op_b_shifted_i : {comp_inv_q, divisor_q[31:1]});
	assign comp_out = ((remainder_q == divisor_q) || ((remainder_q > divisor_q) ^ comp_inv_q)) && (|remainder_q || op_b_is_zero);
	assign add_b_mux = (init_en ? 0 : remainder_q);
	assign add_a_mux = (init_en ? op_a_i : divisor_q);
	always @(*) begin
		if (_sv2v_0)
			;
		if (init_remainder_pos)
			add_out = add_b_mux + add_a_mux;
		else
			add_out = add_b_mux - $signed(add_a_mux);
	end
	assign res_mux = (div_rem_q ? remainder_q : quotient_q);
	assign result_o = (res_inv_q ? -$signed(res_mux) : res_mux);
	assign cnt_d_dummy = 6'd32 - alu_shift_amt_o;
	always @(*) begin
		if (_sv2v_0)
			;
		cnt_d = cnt_q;
		if (init_en)
			cnt_d = alu_shift_amt_o;
		else if (init_dummy_cnt)
			cnt_d = cnt_d_dummy - 6'd1;
		else if (!cnt_q_is_zero)
			cnt_d = cnt_q - 6'd1;
	end
	assign cnt_q_is_zero = !(|cnt_q);
	always @(*) begin : p_fsm
		if (_sv2v_0)
			;
		next_state = state;
		valid_o = 1'b0;
		ready_o = 1'b0;
		init_en = 1'b0;
		init_dummy_cnt = 1'b0;
		remainder_en = 1'b0;
		divisor_en = 1'b0;
		quotient_en = 1'b0;
		case (state)
			2'd0: begin
				remainder_en = 1'b1;
				divisor_en = 1'b1;
				init_en = 1'b1;
				next_state = 2'd1;
			end
			2'd1: begin
				remainder_en = comp_out;
				divisor_en = 1'b1;
				quotient_en = 1'b1;
				if (cnt_q_is_zero) begin
					if (data_ind_timing_i && |cnt_d_dummy) begin
						init_dummy_cnt = 1'b1;
						next_state = 2'd2;
					end
					else
						next_state = 2'd3;
				end
			end
			2'd2:
				if (cnt_q_is_zero)
					next_state = 2'd3;
			2'd3: begin
				valid_o = 1'b1;
				if (ready_i) begin
					ready_o = 1'b1;
					next_state = 2'd0;
				end
			end
			default:
				;
		endcase
		if (!valid_i || kill_i) begin
			ready_o = 1'b1;
			valid_o = 1'b0;
		end
		else if (halt_i) begin
			ready_o = 1'b0;
			valid_o = 1'b0;
		end
		if (kill_i) begin
			next_state = 2'd0;
			init_en = 1'b0;
			init_dummy_cnt = 1'b0;
			remainder_en = 1'b0;
			divisor_en = 1'b0;
			quotient_en = 1'b0;
		end
	end
	assign div_rem_d = (init_en ? div_rem : div_rem_q);
	assign comp_inv_d = (init_en ? op_b_is_neg : comp_inv_q);
	assign res_inv_d = (init_en ? ((!op_b_is_zero || div_rem) && div_signed) && (op_a_i[31] ^ op_b_is_neg) : res_inv_q);
	assign remainder_d = (remainder_en ? add_out : remainder_q);
	assign divisor_d = (divisor_en ? divisor_mux : divisor_q);
	assign quotient_d = (init_en ? {32 {1'sb0}} : (quotient_en ? {quotient_q[30:0], comp_out} : quotient_q));
	always @(posedge clk or negedge rst_n) begin : p_regs
		if (rst_n == 1'b0) begin
			state <= 2'd0;
			remainder_q <= 1'sb0;
			divisor_q <= 1'sb0;
			quotient_q <= 1'sb0;
			cnt_q <= 1'sb0;
			div_rem_q <= 1'b0;
			comp_inv_q <= 1'b0;
			res_inv_q <= 1'b0;
		end
		else if ((valid_i && !halt_i) || kill_i) begin
			state <= next_state;
			remainder_q <= remainder_d;
			divisor_q <= divisor_d;
			quotient_q <= quotient_d;
			cnt_q <= cnt_d;
			div_rem_q <= div_rem_d;
			comp_inv_q <= comp_inv_d;
			res_inv_q <= res_inv_d;
		end
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_ex_stage (
	clk,
	rst_n,
	id_ex_pipe_i,
	csr_rdata_i,
	csr_illegal_i,
	csr_mnxti_read_i,
	csr_hz_i,
	ex_wb_pipe_o,
	ctrl_fsm_i,
	rf_wdata_o,
	branch_decision_o,
	branch_target_o,
	xif_csr_error_o,
	lsu_valid_i,
	lsu_ready_o,
	lsu_valid_o,
	lsu_ready_i,
	lsu_split_i,
	lsu_last_op_i,
	lsu_first_op_i,
	ex_ready_o,
	ex_valid_o,
	wb_ready_i,
	last_op_o
);
	reg _sv2v_0;
	parameter [0:0] X_EXT = 1'b0;
	parameter [1:0] B_EXT = 2'd0;
	parameter [1:0] M_EXT = 2'd1;
	input wire clk;
	input wire rst_n;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
	input wire [352:0] id_ex_pipe_i;
	input wire [31:0] csr_rdata_i;
	input wire csr_illegal_i;
	input wire csr_mnxti_read_i;
	input wire [27:0] csr_hz_i;
	output reg [247:0] ex_wb_pipe_o;
	input wire [200:0] ctrl_fsm_i;
	output reg [31:0] rf_wdata_o;
	output wire branch_decision_o;
	output wire [31:0] branch_target_o;
	output wire xif_csr_error_o;
	input wire lsu_valid_i;
	output wire lsu_ready_o;
	output wire lsu_valid_o;
	input wire lsu_ready_i;
	input wire lsu_split_i;
	input wire lsu_last_op_i;
	input wire lsu_first_op_i;
	output wire ex_ready_o;
	output wire ex_valid_o;
	input wire wb_ready_i;
	output wire last_op_o;
	wire instr_valid;
	wire alu_ready;
	wire alu_valid;
	wire csr_ready;
	wire csr_valid;
	wire sys_ready;
	wire sys_valid;
	wire mul_ready;
	wire mul_valid;
	wire div_ready;
	wire div_valid;
	wire xif_ready;
	wire xif_valid;
	wire [31:0] alu_result;
	wire alu_cmp_result;
	wire [31:0] mul_result;
	wire [31:0] div_result;
	wire lsu_en_gated;
	wire div_en;
	wire div_clz_en;
	wire [31:0] div_clz_data_rev;
	wire [5:0] div_clz_result;
	wire div_shift_en;
	wire [5:0] div_shift_amt;
	wire [31:0] div_op_b_shifted;
	wire mul_en;
	wire forced_nop;
	wire forced_nop_valid;
	wire first_op;
	wire csr_is_illegal;
	assign instr_valid = (id_ex_pipe_i[42] && !ctrl_fsm_i[14]) && !ctrl_fsm_i[19];
	assign mul_en = id_ex_pipe_i[247] && id_ex_pipe_i[42];
	assign div_en = id_ex_pipe_i[243] && id_ex_pipe_i[42];
	assign lsu_en_gated = id_ex_pipe_i[173] && instr_valid;
	assign xif_csr_error_o = (instr_valid && (id_ex_pipe_i[39] && id_ex_pipe_i[3])) && (id_ex_pipe_i[176] && !csr_illegal_i);
	assign csr_is_illegal = ((csr_illegal_i && !(id_ex_pipe_i[39] && id_ex_pipe_i[3])) || xif_csr_error_o) && instr_valid;
	assign forced_nop = (((id_ex_pipe_i[153] || id_ex_pipe_i[50]) || (id_ex_pipe_i[49-:2] != 2'h0)) || |id_ex_pipe_i[152-:32]) && id_ex_pipe_i[42];
	always @(*) begin
		if (_sv2v_0)
			;
		(* full_case, parallel_case *)
		case (1'b1)
			id_ex_pipe_i[352]: rf_wdata_o = alu_result;
			id_ex_pipe_i[247]: rf_wdata_o = mul_result;
			id_ex_pipe_i[243]: rf_wdata_o = div_result;
			id_ex_pipe_i[176]: rf_wdata_o = csr_rdata_i;
			default: rf_wdata_o = alu_result;
		endcase
	end
	assign branch_decision_o = alu_cmp_result;
	assign branch_target_o = id_ex_pipe_i[279-:32];
	assign last_op_o = (id_ex_pipe_i[173] ? lsu_last_op_i && id_ex_pipe_i[1] : id_ex_pipe_i[1]);
	assign first_op = (id_ex_pipe_i[173] ? lsu_first_op_i && id_ex_pipe_i[2] : id_ex_pipe_i[2]);
	cv32e40x_alu #(.B_EXT(B_EXT)) alu_i(
		.operator_i(id_ex_pipe_i[349-:6]),
		.operand_a_i(id_ex_pipe_i[343-:32]),
		.operand_b_i(id_ex_pipe_i[311-:32]),
		.muldiv_operand_b_i(id_ex_pipe_i[208-:32]),
		.div_clz_en_i(div_clz_en),
		.div_clz_data_rev_i(div_clz_data_rev),
		.div_clz_result_o(div_clz_result),
		.div_shift_en_i(div_shift_en),
		.div_shift_amt_i(div_shift_amt),
		.div_op_b_shifted_o(div_op_b_shifted),
		.result_o(alu_result),
		.cmp_result_o(alu_cmp_result)
	);
	generate
		if (M_EXT == 2'd1) begin : div
			cv32e40x_div div_i(
				.clk(clk),
				.rst_n(rst_n),
				.data_ind_timing_i(1'b0),
				.operator_i(id_ex_pipe_i[242-:2]),
				.op_a_i(id_ex_pipe_i[240-:32]),
				.op_b_i(id_ex_pipe_i[208-:32]),
				.alu_clz_result_i(div_clz_result),
				.alu_clz_en_o(div_clz_en),
				.alu_clz_data_rev_o(div_clz_data_rev),
				.alu_op_b_shifted_i(div_op_b_shifted),
				.alu_shift_en_o(div_shift_en),
				.alu_shift_amt_o(div_shift_amt),
				.result_o(div_result),
				.halt_i(ctrl_fsm_i[19]),
				.kill_i(ctrl_fsm_i[14]),
				.valid_i(div_en),
				.ready_o(div_ready),
				.valid_o(div_valid),
				.ready_i(wb_ready_i)
			);
		end
		else begin : no_div
			assign div_clz_en = 1'b0;
			assign div_clz_data_rev = 32'h00000000;
			assign div_shift_en = 1'b0;
			assign div_shift_amt = 6'h00;
			assign div_ready = 1'b1;
			assign div_valid = 1'b0;
			assign div_result = 32'h00000000;
		end
		if (M_EXT != 2'd0) begin : mul
			cv32e40x_mult mult_i(
				.clk(clk),
				.rst_n(rst_n),
				.operator_i(id_ex_pipe_i[246]),
				.signed_mode_i(id_ex_pipe_i[245-:2]),
				.op_a_i(id_ex_pipe_i[240-:32]),
				.op_b_i(id_ex_pipe_i[208-:32]),
				.result_o(mul_result),
				.halt_i(ctrl_fsm_i[19]),
				.kill_i(ctrl_fsm_i[14]),
				.valid_i(mul_en),
				.ready_o(mul_ready),
				.valid_o(mul_valid),
				.ready_i(wb_ready_i)
			);
		end
		else begin : no_mul
			assign mul_result = 32'h00000000;
			assign mul_ready = 1'b1;
			assign mul_valid = 1'b0;
		end
	endgenerate
	function automatic [31:0] sv2v_cast_EA60D;
		input reg [31:0] inp;
		sv2v_cast_EA60D = inp;
	endfunction
	function automatic [32:0] sv2v_cast_33;
		input reg [32:0] inp;
		sv2v_cast_33 = inp;
	endfunction
	localparam [34:0] cv32e40x_pkg_INST_RESP_RESET_VAL = {sv2v_cast_33({sv2v_cast_EA60D(32'h00000003), 1'b0}), 2'h0};
	function automatic [1:0] sv2v_cast_1A666;
		input reg [1:0] inp;
		sv2v_cast_1A666 = inp;
	endfunction
	always @(posedge clk or negedge rst_n) begin : EX_WB_PIPE_REGISTERS
		if (rst_n == 1'b0) begin
			ex_wb_pipe_o[53] <= 1'b0;
			ex_wb_pipe_o[247] <= 1'b0;
			ex_wb_pipe_o[246-:5] <= 1'sb0;
			ex_wb_pipe_o[241-:32] <= 32'b00000000000000000000000000000000;
			ex_wb_pipe_o[125-:32] <= 32'h00000000;
			ex_wb_pipe_o[93-:35] <= cv32e40x_pkg_INST_RESP_RESET_VAL;
			ex_wb_pipe_o[58-:5] <= 1'sb0;
			ex_wb_pipe_o[52] <= 1'b0;
			ex_wb_pipe_o[209] <= 1'b0;
			ex_wb_pipe_o[208] <= 1'b0;
			ex_wb_pipe_o[207] <= 1'b0;
			ex_wb_pipe_o[49] <= 1'b0;
			ex_wb_pipe_o[48] <= 1'b0;
			ex_wb_pipe_o[47] <= 1'b0;
			ex_wb_pipe_o[46] <= 1'b0;
			ex_wb_pipe_o[45] <= 1'b0;
			ex_wb_pipe_o[44] <= 1'b0;
			ex_wb_pipe_o[43] <= 1'b0;
			ex_wb_pipe_o[42] <= 1'b0;
			ex_wb_pipe_o[41] <= 1'b0;
			ex_wb_pipe_o[157-:32] <= 1'sb0;
			ex_wb_pipe_o[158] <= 1'b0;
			ex_wb_pipe_o[206] <= 1'b0;
			ex_wb_pipe_o[205-:2] <= sv2v_cast_1A666(2'b00);
			ex_wb_pipe_o[203-:12] <= 12'h000;
			ex_wb_pipe_o[191-:32] <= 32'h00000000;
			ex_wb_pipe_o[159] <= 1'b0;
			ex_wb_pipe_o[40] <= 1'b0;
			ex_wb_pipe_o[39-:36] <= 1'sb0;
			ex_wb_pipe_o[3] <= 1'b0;
			ex_wb_pipe_o[2] <= 1'b0;
			ex_wb_pipe_o[1] <= 1'b0;
			ex_wb_pipe_o[0] <= 1'b0;
			ex_wb_pipe_o[51-:2] <= 2'b11;
		end
		else if (ex_valid_o && wb_ready_i) begin
			ex_wb_pipe_o[53] <= 1'b1;
			ex_wb_pipe_o[51-:2] <= id_ex_pipe_i[41-:2];
			ex_wb_pipe_o[2] <= last_op_o;
			ex_wb_pipe_o[3] <= first_op;
			ex_wb_pipe_o[1] <= id_ex_pipe_i[0];
			ex_wb_pipe_o[247] <= (csr_is_illegal || lsu_split_i ? 1'b0 : id_ex_pipe_i[120]);
			ex_wb_pipe_o[158] <= id_ex_pipe_i[173];
			if (id_ex_pipe_i[120]) begin
				ex_wb_pipe_o[246-:5] <= id_ex_pipe_i[119-:5];
				if (!id_ex_pipe_i[173])
					ex_wb_pipe_o[241-:32] <= rf_wdata_o;
			end
			ex_wb_pipe_o[209] <= id_ex_pipe_i[350] && id_ex_pipe_i[352];
			ex_wb_pipe_o[208] <= id_ex_pipe_i[351] && id_ex_pipe_i[352];
			ex_wb_pipe_o[207] <= (id_ex_pipe_i[351] && id_ex_pipe_i[352]) && branch_decision_o;
			ex_wb_pipe_o[206] <= (csr_illegal_i || xif_csr_error_o ? 1'b0 : id_ex_pipe_i[176]);
			if (id_ex_pipe_i[176]) begin
				ex_wb_pipe_o[203-:12] <= id_ex_pipe_i[291:280];
				ex_wb_pipe_o[191-:32] <= id_ex_pipe_i[343-:32];
				ex_wb_pipe_o[205-:2] <= id_ex_pipe_i[175-:2];
				ex_wb_pipe_o[159] <= csr_mnxti_read_i;
				ex_wb_pipe_o[0] <= csr_hz_i[26];
			end
			ex_wb_pipe_o[125-:32] <= id_ex_pipe_i[114-:32];
			ex_wb_pipe_o[93-:35] <= id_ex_pipe_i[82-:35];
			ex_wb_pipe_o[58-:5] <= id_ex_pipe_i[47-:5];
			ex_wb_pipe_o[49] <= id_ex_pipe_i[162];
			if (id_ex_pipe_i[162]) begin
				ex_wb_pipe_o[48] <= id_ex_pipe_i[161];
				ex_wb_pipe_o[47] <= id_ex_pipe_i[160];
				ex_wb_pipe_o[46] <= id_ex_pipe_i[159];
				ex_wb_pipe_o[45] <= id_ex_pipe_i[158];
				ex_wb_pipe_o[44] <= id_ex_pipe_i[157];
				ex_wb_pipe_o[43] <= id_ex_pipe_i[156];
				ex_wb_pipe_o[42] <= id_ex_pipe_i[155];
				ex_wb_pipe_o[41] <= id_ex_pipe_i[154];
			end
			ex_wb_pipe_o[52] <= id_ex_pipe_i[153] || csr_is_illegal;
			ex_wb_pipe_o[157-:32] <= id_ex_pipe_i[152-:32];
			ex_wb_pipe_o[40] <= (ctrl_fsm_i[12] ? 1'b0 : id_ex_pipe_i[39]);
			ex_wb_pipe_o[39-:36] <= id_ex_pipe_i[38-:36];
		end
		else if (wb_ready_i)
			ex_wb_pipe_o[53] <= 1'b0;
	end
	assign lsu_valid_o = lsu_en_gated;
	assign lsu_ready_o = wb_ready_i;
	assign alu_valid = 1'b1;
	assign alu_ready = wb_ready_i;
	assign csr_valid = 1'b1;
	assign csr_ready = wb_ready_i;
	assign sys_valid = 1'b1;
	assign sys_ready = wb_ready_i;
	assign forced_nop_valid = 1'b1;
	wire clic_ptr_valid;
	assign clic_ptr_valid = 1'b1;
	wire mret_ptr_valid;
	assign mret_ptr_valid = 1'b1;
	assign ex_ready_o = ctrl_fsm_i[14] || (((((((alu_ready && csr_ready) && sys_ready) && mul_ready) && div_ready) && lsu_ready_i) && xif_ready) && !ctrl_fsm_i[19]);
	assign ex_valid_o = ((((((((((id_ex_pipe_i[352] && alu_valid) || (id_ex_pipe_i[176] && csr_valid)) || (id_ex_pipe_i[162] && sys_valid)) || (id_ex_pipe_i[247] && mul_valid)) || (id_ex_pipe_i[243] && div_valid)) || (id_ex_pipe_i[173] && lsu_valid_i)) || (id_ex_pipe_i[39] && xif_valid)) || (id_ex_pipe_i[46] && clic_ptr_valid)) || (id_ex_pipe_i[45] && mret_ptr_valid)) || (forced_nop && forced_nop_valid)) && instr_valid;
	assign xif_valid = 1'b1;
	assign xif_ready = wb_ready_i;
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_ff_one (
	in_i,
	first_one_o,
	no_ones_o
);
	parameter [31:0] LEN = 32;
	input wire [LEN - 1:0] in_i;
	output wire [$clog2(LEN) - 1:0] first_one_o;
	output wire no_ones_o;
	localparam NUM_LEVELS = $clog2(LEN);
	wire [(LEN * NUM_LEVELS) - 1:0] index_lut;
	wire [(2 ** NUM_LEVELS) - 1:0] sel_nodes;
	wire [((2 ** NUM_LEVELS) * NUM_LEVELS) - 1:0] index_nodes;
	genvar _gv_j_2;
	generate
		for (_gv_j_2 = 0; _gv_j_2 < LEN; _gv_j_2 = _gv_j_2 + 1) begin : gen_index_lut
			localparam j = _gv_j_2;
			assign index_lut[j * NUM_LEVELS+:NUM_LEVELS] = $unsigned(j);
		end
	endgenerate
	genvar _gv_k_2;
	genvar _gv_l_4;
	genvar _gv_level_3;
	assign sel_nodes[(2 ** NUM_LEVELS) - 1] = 1'b0;
	generate
		for (_gv_level_3 = 0; _gv_level_3 < NUM_LEVELS; _gv_level_3 = _gv_level_3 + 1) begin : gen_tree
			localparam level = _gv_level_3;
			if (level < (NUM_LEVELS - 1)) begin : gen_non_root_level
				for (_gv_l_4 = 0; _gv_l_4 < (2 ** level); _gv_l_4 = _gv_l_4 + 1) begin : gen_node_non_root
					localparam l = _gv_l_4;
					assign sel_nodes[((2 ** level) - 1) + l] = sel_nodes[((2 ** (level + 1)) - 1) + (l * 2)] | sel_nodes[(((2 ** (level + 1)) - 1) + (l * 2)) + 1];
					assign index_nodes[(((2 ** level) - 1) + l) * NUM_LEVELS+:NUM_LEVELS] = (sel_nodes[((2 ** (level + 1)) - 1) + (l * 2)] == 1'b1 ? index_nodes[(((2 ** (level + 1)) - 1) + (l * 2)) * NUM_LEVELS+:NUM_LEVELS] : index_nodes[((((2 ** (level + 1)) - 1) + (l * 2)) + 1) * NUM_LEVELS+:NUM_LEVELS]);
				end
			end
			if (level == (NUM_LEVELS - 1)) begin : gen_root_level
				for (_gv_k_2 = 0; _gv_k_2 < (2 ** level); _gv_k_2 = _gv_k_2 + 1) begin : gen_node_root
					localparam k = _gv_k_2;
					if ((k * 2) < (LEN - 1)) begin : gen_two
						assign sel_nodes[((2 ** level) - 1) + k] = in_i[k * 2] | in_i[(k * 2) + 1];
						assign index_nodes[(((2 ** level) - 1) + k) * NUM_LEVELS+:NUM_LEVELS] = (in_i[k * 2] == 1'b1 ? index_lut[(k * 2) * NUM_LEVELS+:NUM_LEVELS] : index_lut[((k * 2) + 1) * NUM_LEVELS+:NUM_LEVELS]);
					end
					if ((k * 2) == (LEN - 1)) begin : gen_one
						assign sel_nodes[((2 ** level) - 1) + k] = in_i[k * 2];
						assign index_nodes[(((2 ** level) - 1) + k) * NUM_LEVELS+:NUM_LEVELS] = index_lut[(k * 2) * NUM_LEVELS+:NUM_LEVELS];
					end
					if ((k * 2) > (LEN - 1)) begin : gen_out_of_range
						assign sel_nodes[((2 ** level) - 1) + k] = 1'b0;
						assign index_nodes[(((2 ** level) - 1) + k) * NUM_LEVELS+:NUM_LEVELS] = 1'sb0;
					end
				end
			end
		end
	endgenerate
	assign first_one_o = index_nodes[0+:NUM_LEVELS];
	assign no_ones_o = ~sel_nodes[0];
endmodule
module cv32e40x_i_decoder (
	instr_rdata_i,
	tbljmp_i,
	ctrl_fsm_i,
	decoder_ctrl_o
);
	reg _sv2v_0;
	parameter [0:0] CLIC = 1;
	input wire [31:0] instr_rdata_i;
	input wire tbljmp_i;
	input wire [200:0] ctrl_fsm_i;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	output reg [54:0] decoder_ctrl_o;
	localparam CUSTOM_EXT = 1;
	function automatic [5:0] sv2v_cast_9A8CC;
		input reg [5:0] inp;
		sv2v_cast_9A8CC = inp;
	endfunction
	function automatic [0:0] sv2v_cast_ACD50;
		input reg [0:0] inp;
		sv2v_cast_ACD50 = inp;
	endfunction
	function automatic [1:0] sv2v_cast_B845F;
		input reg [1:0] inp;
		sv2v_cast_B845F = inp;
	endfunction
	function automatic [1:0] sv2v_cast_1A666;
		input reg [1:0] inp;
		sv2v_cast_1A666 = inp;
	endfunction
	localparam [54:0] cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN = {4'b0000, sv2v_cast_9A8CC(6'b010011), 12'b111010100010, sv2v_cast_ACD50(1'b0), 3'b000, sv2v_cast_B845F(2'b00), 4'b0000, sv2v_cast_1A666(2'b00), 21'b000000000000100000000};
	always @(*) begin
		if (_sv2v_0)
			;
		decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		decoder_ctrl_o[8] = 1'b0;
		(* full_case, parallel_case *)
		case (instr_rdata_i[6:0])
			7'h6f: begin
				decoder_ctrl_o[54] = 1'b1;
				decoder_ctrl_o[52] = 1'b1;
				decoder_ctrl_o[51] = 1'b0;
				decoder_ctrl_o[44-:2] = 2'b01;
				decoder_ctrl_o[42-:2] = 2'b01;
				decoder_ctrl_o[37-:2] = 2'b11;
				decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000000);
				decoder_ctrl_o[24] = 1'b1;
				decoder_ctrl_o[25] = 1'b0;
				decoder_ctrl_o[26] = 1'b0;
				decoder_ctrl_o[35-:2] = (tbljmp_i ? 2'b00 : 2'b01);
			end
			7'h67:
				if (instr_rdata_i[14:12] != 3'b000)
					decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
				else begin
					decoder_ctrl_o[54] = 1'b1;
					decoder_ctrl_o[52] = 1'b1;
					decoder_ctrl_o[51] = 1'b1;
					decoder_ctrl_o[44-:2] = 2'b01;
					decoder_ctrl_o[42-:2] = 2'b01;
					decoder_ctrl_o[37-:2] = 2'b11;
					decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000000);
					decoder_ctrl_o[24] = 1'b1;
					decoder_ctrl_o[25] = 1'b1;
					decoder_ctrl_o[26] = 1'b0;
					decoder_ctrl_o[35-:2] = 2'b10;
				end
			7'h63: begin
				decoder_ctrl_o[54] = 1'b1;
				decoder_ctrl_o[53] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b00;
				decoder_ctrl_o[42-:2] = 2'b00;
				decoder_ctrl_o[40-:2] = 2'b01;
				decoder_ctrl_o[24] = 1'b0;
				decoder_ctrl_o[25] = 1'b1;
				decoder_ctrl_o[26] = 1'b1;
				decoder_ctrl_o[35-:2] = 2'b11;
				(* full_case, parallel_case *)
				case (instr_rdata_i[14:12])
					3'b000: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010000);
					3'b001: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010001);
					3'b100: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b011100);
					3'b101: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b011101);
					3'b110: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010110);
					3'b111: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010111);
					default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
				endcase
			end
			7'h23: begin
				decoder_ctrl_o[20] = 1'b1;
				decoder_ctrl_o[19] = 1'b1;
				decoder_ctrl_o[25] = 1'b1;
				decoder_ctrl_o[26] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b00;
				decoder_ctrl_o[42-:2] = 2'b01;
				decoder_ctrl_o[40-:2] = 2'b00;
				decoder_ctrl_o[37-:2] = 2'b01;
				decoder_ctrl_o[18-:2] = instr_rdata_i[13:12];
				if ((instr_rdata_i[14] == 1'b1) || (instr_rdata_i[13:12] == 2'b11))
					decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
			end
			7'h03: begin
				decoder_ctrl_o[20] = 1'b1;
				decoder_ctrl_o[24] = 1'b1;
				decoder_ctrl_o[25] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b00;
				decoder_ctrl_o[42-:2] = 2'b01;
				decoder_ctrl_o[40-:2] = 2'b10;
				decoder_ctrl_o[37-:2] = 2'b00;
				decoder_ctrl_o[16] = !instr_rdata_i[14];
				decoder_ctrl_o[18-:2] = instr_rdata_i[13:12];
				if (((instr_rdata_i[14:12] == 3'b111) || (instr_rdata_i[14:12] == 3'b110)) || (instr_rdata_i[14:12] == 3'b011))
					decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
			end
			7'h37: begin
				decoder_ctrl_o[54] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b10;
				decoder_ctrl_o[42-:2] = 2'b01;
				decoder_ctrl_o[38] = 1'b1;
				decoder_ctrl_o[37-:2] = 2'b10;
				decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000000);
				decoder_ctrl_o[24] = 1'b1;
			end
			7'h17: begin
				decoder_ctrl_o[54] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b01;
				decoder_ctrl_o[42-:2] = 2'b01;
				decoder_ctrl_o[37-:2] = 2'b10;
				decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000000);
				decoder_ctrl_o[24] = 1'b1;
			end
			7'h13: begin
				decoder_ctrl_o[54] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b00;
				decoder_ctrl_o[42-:2] = 2'b01;
				decoder_ctrl_o[37-:2] = 2'b00;
				decoder_ctrl_o[24] = 1'b1;
				decoder_ctrl_o[25] = 1'b1;
				(* full_case, parallel_case *)
				case (instr_rdata_i[14:12])
					3'b000: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000000);
					3'b010: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b011010);
					3'b011: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010011);
					3'b100: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000100);
					3'b110: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000110);
					3'b111: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000111);
					3'b001: begin
						decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000001);
						if (instr_rdata_i[31:25] != 7'b0000000)
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					end
					3'b101:
						if (instr_rdata_i[31:25] == 7'b0000000)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000101);
						else if (instr_rdata_i[31:25] == 7'b0100000)
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b001101);
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					default:
						;
				endcase
			end
			7'h33:
				if ((instr_rdata_i[31:30] == 2'b11) || (instr_rdata_i[31:30] == 2'b10))
					decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
				else begin
					decoder_ctrl_o[54] = 1'b1;
					decoder_ctrl_o[44-:2] = 2'b00;
					decoder_ctrl_o[42-:2] = 2'b00;
					decoder_ctrl_o[24] = 1'b1;
					decoder_ctrl_o[25] = 1'b1;
					if (!instr_rdata_i[28])
						decoder_ctrl_o[26] = 1'b1;
					(* full_case, parallel_case *)
					case ({instr_rdata_i[30:25], instr_rdata_i[14:12]})
						9'b000000000: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000000);
						9'b100000000: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b001000);
						9'b000000010: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b011010);
						9'b000000011: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b010011);
						9'b000000100: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000100);
						9'b000000110: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000110);
						9'b000000111: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000111);
						9'b000000001: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000001);
						9'b000000101: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000101);
						9'b100000101: decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b001101);
						default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					endcase
				end
			7'h0f: begin
				decoder_ctrl_o[9] = 1'b1;
				(* full_case, parallel_case *)
				case (instr_rdata_i[14:12])
					3'b000: decoder_ctrl_o[4] = 1'b1;
					3'b001: decoder_ctrl_o[3] = 1'b1;
					default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
				endcase
			end
			7'h73:
				if (instr_rdata_i[14:12] == 3'b000) begin
					if ({instr_rdata_i[19:15], instr_rdata_i[11:7]} == {10 {1'sb0}}) begin
						decoder_ctrl_o[9] = 1'b1;
						(* full_case, parallel_case *)
						case (instr_rdata_i[31:20])
							12'h000: decoder_ctrl_o[5] = 1'b1;
							12'h001: decoder_ctrl_o[6] = 1'b1;
							12'h302:
								if (ctrl_fsm_i[147])
									decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
								else
									decoder_ctrl_o[2] = 1'b1;
							12'h7b2:
								if (ctrl_fsm_i[147])
									decoder_ctrl_o[7] = 1'b1;
								else
									decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
							12'h105: decoder_ctrl_o[1] = (ctrl_fsm_i[109] ? 1'b0 : 1'b1);
							12'h8c0: decoder_ctrl_o[0] = (ctrl_fsm_i[109] ? 1'b0 : 1'b1);
							default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
						endcase
					end
					else
						decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
				end
				else begin
					decoder_ctrl_o[23] = 1'b1;
					decoder_ctrl_o[24] = 1'b1;
					if (instr_rdata_i[14] == 1'b1)
						decoder_ctrl_o[44-:2] = 2'b10;
					else begin
						decoder_ctrl_o[25] = 1'b1;
						decoder_ctrl_o[44-:2] = 2'b00;
					end
					decoder_ctrl_o[42-:2] = 2'b01;
					decoder_ctrl_o[38] = 1'b0;
					decoder_ctrl_o[37-:2] = 2'b00;
					(* full_case, parallel_case *)
					case (instr_rdata_i[13:12])
						2'b01: decoder_ctrl_o[22-:2] = sv2v_cast_1A666(2'b01);
						2'b10: decoder_ctrl_o[22-:2] = (instr_rdata_i[19:15] == 5'b00000 ? sv2v_cast_1A666(2'b00) : sv2v_cast_1A666(2'b10));
						2'b11: decoder_ctrl_o[22-:2] = (instr_rdata_i[19:15] == 5'b00000 ? sv2v_cast_1A666(2'b00) : sv2v_cast_1A666(2'b11));
						default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					endcase
					if (CLIC) begin
						if (instr_rdata_i[31:20] == 12'h349) begin
							if (instr_rdata_i[14:12] == 3'b001) begin
								if ((instr_rdata_i[11:7] == 5'b00000) || (instr_rdata_i[19:15] == 5'b00000))
									decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
							end
							else
								decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
						end
						if (instr_rdata_i[31:20] == 12'h345) begin
							if (instr_rdata_i[14:12] == 3'b010) begin
								if (instr_rdata_i[19:15] != 5'b00000)
									decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
							end
							else if (instr_rdata_i[14:12] == 3'b110) begin
								if ((instr_rdata_i[19] || instr_rdata_i[17]) || instr_rdata_i[15])
									decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
							end
							else if (instr_rdata_i[14:12] != 3'b111)
								decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
						end
					end
				end
			default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_int_controller (
	clk,
	rst_n,
	irq_i,
	irq_req_ctrl_o,
	irq_id_ctrl_o,
	irq_wu_ctrl_o,
	mie_i,
	mstatus_i,
	priv_lvl_i,
	mip_o
);
	reg _sv2v_0;
	input wire clk;
	input wire rst_n;
	input wire [31:0] irq_i;
	output wire irq_req_ctrl_o;
	output reg [4:0] irq_id_ctrl_o;
	output wire irq_wu_ctrl_o;
	input wire [31:0] mie_i;
	input wire [31:0] mstatus_i;
	input wire [1:0] priv_lvl_i;
	output wire [31:0] mip_o;
	wire global_irq_enable;
	wire [31:0] irq_local_qual;
	reg [31:0] irq_q;
	localparam cv32e40x_pkg_IRQ_MASK = 32'hffff0888;
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0)
			irq_q <= 1'sb0;
		else
			irq_q <= irq_i & cv32e40x_pkg_IRQ_MASK;
	assign mip_o = irq_q;
	assign irq_local_qual = irq_q & mie_i;
	assign irq_wu_ctrl_o = |(irq_i & mie_i);
	assign global_irq_enable = mstatus_i[3] || (priv_lvl_i < 2'b11);
	assign irq_req_ctrl_o = |irq_local_qual && global_irq_enable;
	localparam [31:0] cv32e40x_pkg_CSR_MEIX_BIT = 11;
	localparam [31:0] cv32e40x_pkg_CSR_MSIX_BIT = 3;
	localparam [31:0] cv32e40x_pkg_CSR_MTIX_BIT = 7;
	always @(*) begin
		if (_sv2v_0)
			;
		if (irq_local_qual[31])
			irq_id_ctrl_o = 5'd31;
		else if (irq_local_qual[30])
			irq_id_ctrl_o = 5'd30;
		else if (irq_local_qual[29])
			irq_id_ctrl_o = 5'd29;
		else if (irq_local_qual[28])
			irq_id_ctrl_o = 5'd28;
		else if (irq_local_qual[27])
			irq_id_ctrl_o = 5'd27;
		else if (irq_local_qual[26])
			irq_id_ctrl_o = 5'd26;
		else if (irq_local_qual[25])
			irq_id_ctrl_o = 5'd25;
		else if (irq_local_qual[24])
			irq_id_ctrl_o = 5'd24;
		else if (irq_local_qual[23])
			irq_id_ctrl_o = 5'd23;
		else if (irq_local_qual[22])
			irq_id_ctrl_o = 5'd22;
		else if (irq_local_qual[21])
			irq_id_ctrl_o = 5'd21;
		else if (irq_local_qual[20])
			irq_id_ctrl_o = 5'd20;
		else if (irq_local_qual[19])
			irq_id_ctrl_o = 5'd19;
		else if (irq_local_qual[18])
			irq_id_ctrl_o = 5'd18;
		else if (irq_local_qual[17])
			irq_id_ctrl_o = 5'd17;
		else if (irq_local_qual[16])
			irq_id_ctrl_o = 5'd16;
		else if (irq_local_qual[cv32e40x_pkg_CSR_MEIX_BIT])
			irq_id_ctrl_o = cv32e40x_pkg_CSR_MEIX_BIT;
		else if (irq_local_qual[cv32e40x_pkg_CSR_MSIX_BIT])
			irq_id_ctrl_o = cv32e40x_pkg_CSR_MSIX_BIT;
		else
			irq_id_ctrl_o = cv32e40x_pkg_CSR_MTIX_BIT;
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_lsu_response_filter (
	clk,
	rst_n,
	valid_i,
	trans_i,
	ready_i,
	resp_valid_i,
	resp_i,
	valid_o,
	trans_o,
	ready_o,
	busy_o,
	bus_busy_o,
	resp_valid_o,
	resp_o
);
	reg _sv2v_0;
	parameter [31:0] DEPTH = 2;
	input wire clk;
	input wire rst_n;
	input wire valid_i;
	localparam cv32e40x_pkg_DATA_ADDR_WIDTH = 32;
	localparam cv32e40x_pkg_DATA_DATA_WIDTH = 32;
	input wire [80:0] trans_i;
	input wire ready_i;
	input wire resp_valid_i;
	input wire [34:0] resp_i;
	output wire valid_o;
	output wire [80:0] trans_o;
	output wire ready_o;
	output wire busy_o;
	output wire bus_busy_o;
	output wire resp_valid_o;
	output wire [34:0] resp_o;
	localparam CNT_WIDTH = $clog2(DEPTH + 1);
	reg [CNT_WIDTH - 1:0] bus_cnt_q;
	reg [CNT_WIDTH - 1:0] bus_next_cnt;
	wire bus_count_up;
	wire bus_count_down;
	reg [CNT_WIDTH - 1:0] core_cnt_q;
	reg [CNT_WIDTH - 1:0] core_next_cnt;
	wire core_count_up;
	wire core_count_down;
	wire core_trans_accepted;
	wire bus_trans_accepted;
	wire bus_resp_is_bufferable;
	wire core_resp_is_bufferable;
	reg [(DEPTH >= 0 ? ((DEPTH + 1) * 2) - 1 : ((1 - DEPTH) * 2) + ((DEPTH * 2) - 1)):(DEPTH >= 0 ? 0 : DEPTH * 2)] outstanding_q;
	reg [(DEPTH >= 0 ? ((DEPTH + 1) * 2) - 1 : ((1 - DEPTH) * 2) + ((DEPTH * 2) - 1)):(DEPTH >= 0 ? 0 : DEPTH * 2)] outstanding_next;
	assign busy_o = (bus_cnt_q != {CNT_WIDTH {1'sb0}}) || valid_i;
	assign bus_busy_o = bus_cnt_q != {CNT_WIDTH {1'sb0}};
	assign core_trans_accepted = ready_o && valid_i;
	assign bus_trans_accepted = ready_i && valid_o;
	assign bus_resp_is_bufferable = outstanding_q[((DEPTH >= 0 ? bus_cnt_q : DEPTH - bus_cnt_q) * 2) + 1];
	assign core_resp_is_bufferable = outstanding_q[((DEPTH >= 0 ? core_cnt_q : DEPTH - core_cnt_q) * 2) + 1];
	function automatic [1:0] sv2v_cast_2;
		input reg [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		outstanding_next = outstanding_q;
		if (bus_trans_accepted) begin
			outstanding_next[2 * (DEPTH >= 0 ? (DEPTH >= 0 ? (DEPTH >= 1 ? DEPTH : (DEPTH + (DEPTH >= 1 ? DEPTH : 2 - DEPTH)) - 1) - ((DEPTH >= 1 ? DEPTH : 2 - DEPTH) - 1) : (DEPTH >= 1 ? DEPTH : (DEPTH + (DEPTH >= 1 ? DEPTH : 2 - DEPTH)) - 1)) : DEPTH - (DEPTH >= 0 ? (DEPTH >= 1 ? DEPTH : (DEPTH + (DEPTH >= 1 ? DEPTH : 2 - DEPTH)) - 1) - ((DEPTH >= 1 ? DEPTH : 2 - DEPTH) - 1) : (DEPTH >= 1 ? DEPTH : (DEPTH + (DEPTH >= 1 ? DEPTH : 2 - DEPTH)) - 1)))+:2 * (DEPTH >= 1 ? DEPTH : 2 - DEPTH)] = outstanding_q[2 * (DEPTH >= 0 ? (DEPTH >= 0 ? (DEPTH - 1) - (DEPTH - 1) : DEPTH - 1) : DEPTH - (DEPTH >= 0 ? (DEPTH - 1) - (DEPTH - 1) : DEPTH - 1))+:2 * DEPTH];
			outstanding_next[(DEPTH >= 0 ? 1 : DEPTH - 1) * 2+:2] = sv2v_cast_2({trans_i[4], trans_i[42]});
			outstanding_next[(DEPTH >= 0 ? 0 : DEPTH) * 2+:2] = 1'sb0;
		end
	end
	assign core_count_up = core_trans_accepted;
	assign core_count_down = resp_valid_o;
	assign bus_count_up = bus_trans_accepted;
	assign bus_count_down = resp_valid_i;
	always @(*) begin
		if (_sv2v_0)
			;
		core_next_cnt = core_cnt_q;
		if (core_count_up)
			core_next_cnt = core_next_cnt + 1;
		if (core_count_down)
			core_next_cnt = core_next_cnt - 1;
		bus_next_cnt = bus_cnt_q;
		if (bus_count_up)
			bus_next_cnt = bus_next_cnt + 1;
		if (bus_count_down)
			bus_next_cnt = bus_next_cnt - 1;
	end
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0) begin
			bus_cnt_q <= 1'sb0;
			core_cnt_q <= 1'sb0;
			outstanding_q <= 1'sb0;
		end
		else begin
			bus_cnt_q <= bus_next_cnt;
			core_cnt_q <= core_next_cnt;
			outstanding_q <= outstanding_next;
		end
	assign ready_o = ready_i && (bus_cnt_q < DEPTH);
	assign valid_o = valid_i && (bus_cnt_q < DEPTH);
	assign resp_valid_o = (bus_resp_is_bufferable ? core_resp_is_bufferable : resp_valid_i);
	assign trans_o = trans_i;
	assign resp_o[34-:32] = resp_i[34-:32];
	assign resp_o[2-:2] = {outstanding_q[(DEPTH >= 0 ? bus_cnt_q : DEPTH - bus_cnt_q) * 2], resp_valid_i && resp_i[1]};
	assign resp_o[0] = resp_i[0];
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_m_decoder (
	instr_rdata_i,
	decoder_ctrl_o
);
	reg _sv2v_0;
	parameter [1:0] M_EXT = 2'd1;
	input wire [31:0] instr_rdata_i;
	localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
	localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
	localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	output reg [54:0] decoder_ctrl_o;
	function automatic [5:0] sv2v_cast_9A8CC;
		input reg [5:0] inp;
		sv2v_cast_9A8CC = inp;
	endfunction
	function automatic [0:0] sv2v_cast_ACD50;
		input reg [0:0] inp;
		sv2v_cast_ACD50 = inp;
	endfunction
	function automatic [1:0] sv2v_cast_B845F;
		input reg [1:0] inp;
		sv2v_cast_B845F = inp;
	endfunction
	function automatic [1:0] sv2v_cast_1A666;
		input reg [1:0] inp;
		sv2v_cast_1A666 = inp;
	endfunction
	localparam [54:0] cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN = {4'b0000, sv2v_cast_9A8CC(6'b010011), 12'b111010100010, sv2v_cast_ACD50(1'b0), 3'b000, sv2v_cast_B845F(2'b00), 4'b0000, sv2v_cast_1A666(2'b00), 21'b000000000000100000000};
	always @(*) begin
		if (_sv2v_0)
			;
		decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		decoder_ctrl_o[8] = 1'b0;
		(* full_case, parallel_case *)
		case (instr_rdata_i[6:0])
			7'h33: begin
				decoder_ctrl_o[24] = 1'b1;
				decoder_ctrl_o[25] = 1'b1;
				decoder_ctrl_o[26] = 1'b1;
				decoder_ctrl_o[44-:2] = 2'b11;
				decoder_ctrl_o[42-:2] = 2'b10;
				decoder_ctrl_o[40-:2] = 2'b10;
				(* full_case, parallel_case *)
				case ({instr_rdata_i[31:25], instr_rdata_i[14:12]})
					10'b0000001000: begin
						decoder_ctrl_o[33] = 1'b1;
						decoder_ctrl_o[32-:1] = sv2v_cast_ACD50(1'b0);
					end
					10'b0000001001: begin
						decoder_ctrl_o[33] = 1'b1;
						decoder_ctrl_o[31-:2] = 2'b11;
						decoder_ctrl_o[32-:1] = sv2v_cast_ACD50(1'b1);
					end
					10'b0000001010: begin
						decoder_ctrl_o[33] = 1'b1;
						decoder_ctrl_o[31-:2] = 2'b01;
						decoder_ctrl_o[32-:1] = sv2v_cast_ACD50(1'b1);
					end
					10'b0000001011: begin
						decoder_ctrl_o[33] = 1'b1;
						decoder_ctrl_o[31-:2] = 2'b00;
						decoder_ctrl_o[32-:1] = sv2v_cast_ACD50(1'b1);
					end
					10'b0000001100:
						if (M_EXT == 2'd1) begin
							decoder_ctrl_o[29] = 1'b1;
							decoder_ctrl_o[28-:2] = sv2v_cast_B845F(2'b01);
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000001);
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000001101:
						if (M_EXT == 2'd1) begin
							decoder_ctrl_o[29] = 1'b1;
							decoder_ctrl_o[28-:2] = sv2v_cast_B845F(2'b00);
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000001);
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000001110:
						if (M_EXT == 2'd1) begin
							decoder_ctrl_o[29] = 1'b1;
							decoder_ctrl_o[28-:2] = sv2v_cast_B845F(2'b11);
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000001);
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					10'b0000001111:
						if (M_EXT == 2'd1) begin
							decoder_ctrl_o[29] = 1'b1;
							decoder_ctrl_o[28-:2] = sv2v_cast_B845F(2'b10);
							decoder_ctrl_o[50-:6] = sv2v_cast_9A8CC(6'b000001);
						end
						else
							decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
					default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
				endcase
			end
			default: decoder_ctrl_o = cv32e40x_pkg_DECODER_CTRL_ILLEGAL_INSN;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_mpu_if_DEA60_825B7 (
	clk,
	rst_n,
	atomic_access_i,
	misaligned_access_i,
	modified_access_i,
	bus_trans_ready_i,
	bus_trans_valid_o,
	bus_trans_o,
	bus_resp_valid_i,
	bus_resp_i,
	core_trans_valid_i,
	core_trans_pushpop_i,
	core_trans_ready_o,
	core_trans_i,
	core_resp_valid_o,
	core_resp_o,
	core_one_txn_pend_n,
	core_mpu_err_wait_i,
	core_mpu_err_o
);
	parameter signed [31:0] BUS_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH = 0;
	parameter signed [31:0] CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH = 0;
	parameter signed [31:0] CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH = 0;
	reg _sv2v_0;
	parameter [0:0] IF_STAGE = 1;
	parameter [1:0] A_EXT = 2'd0;
	localparam cv32e40x_pkg_INSTR_ADDR_WIDTH = 32;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	localparam cv32e40x_pkg_DATA_DATA_WIDTH = 32;
	parameter signed [31:0] PMA_NUM_REGIONS = 0;
	localparam [67:0] cv32e40x_pkg_PMA_R_DEFAULT = 68'h00000000000000000;
	parameter [(PMA_NUM_REGIONS * 68) - 1:0] PMA_CFG = {PMA_NUM_REGIONS {cv32e40x_pkg_PMA_R_DEFAULT}};
	parameter [0:0] DEBUG = 1;
	parameter [31:0] DM_REGION_START = 32'hf0000000;
	parameter [31:0] DM_REGION_END = 32'hf0003fff;
	input wire clk;
	input wire rst_n;
	input wire atomic_access_i;
	input wire misaligned_access_i;
	input wire modified_access_i;
	input wire bus_trans_ready_i;
	output wire bus_trans_valid_o;
	output reg [CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5:0] bus_trans_o;
	input wire bus_resp_valid_i;
	input wire [BUS_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0:0] bus_resp_i;
	input wire core_trans_valid_i;
	input wire core_trans_pushpop_i;
	output wire core_trans_ready_o;
	input wire [CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5:0] core_trans_i;
	output wire core_resp_valid_o;
	output wire [((CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 1 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0)) + 1:0] core_resp_o;
	input wire core_one_txn_pend_n;
	input wire core_mpu_err_wait_i;
	output wire core_mpu_err_o;
	wire pma_err;
	wire mpu_err;
	reg mpu_block_core;
	reg mpu_block_bus;
	reg mpu_err_trans_valid;
	reg mpu_err_trans_ready;
	reg [1:0] mpu_status;
	reg [2:0] state_q;
	reg [2:0] state_n;
	wire bus_trans_cacheable;
	wire bus_trans_bufferable;
	wire core_trans_we;
	wire instr_fetch_access;
	wire load_access;
	wire core_trans_debug_region;
	assign core_trans_debug_region = ((core_trans_i[CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5-:((CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5) >= 6 ? CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 0 : 7 - (CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5))] >= DM_REGION_START) && (core_trans_i[CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5-:((CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5) >= 6 ? CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 0 : 7 - (CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5))] <= DM_REGION_END)) && core_trans_i[0];
	always @(*) begin
		if (_sv2v_0)
			;
		state_n = state_q;
		mpu_status = 2'h0;
		mpu_block_core = 1'b0;
		mpu_block_bus = 1'b0;
		mpu_err_trans_valid = 1'b0;
		mpu_err_trans_ready = 1'b0;
		case (state_q)
			3'd0:
				if (mpu_err && core_trans_valid_i) begin
					mpu_block_bus = 1'b1;
					mpu_err_trans_ready = 1'b1;
					if (core_mpu_err_wait_i) begin
						if (core_trans_we)
							state_n = (core_one_txn_pend_n ? 3'd3 : 3'd4);
						else
							state_n = (core_one_txn_pend_n ? 3'd1 : 3'd2);
					end
				end
			3'd2, 3'd4: begin
				mpu_block_bus = 1'b1;
				mpu_block_core = 1'b1;
				if (core_one_txn_pend_n)
					state_n = (state_q == 3'd2 ? 3'd1 : 3'd3);
			end
			3'd1, 3'd3: begin
				mpu_block_bus = 1'b1;
				mpu_block_core = 1'b1;
				mpu_err_trans_valid = 1'b1;
				mpu_status = (state_q == 3'd1 ? 2'h1 : 2'h2);
				state_n = 3'd0;
			end
			default:
				;
		endcase
	end
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0)
			state_q <= 3'd0;
		else
			state_q <= state_n;
	assign bus_trans_valid_o = core_trans_valid_i && !mpu_block_bus;
	always @(*) begin
		if (_sv2v_0)
			;
		bus_trans_o = core_trans_i;
		bus_trans_o[4] = bus_trans_bufferable;
		bus_trans_o[5] = bus_trans_cacheable;
	end
	assign core_resp_valid_o = bus_resp_valid_i || mpu_err_trans_valid;
	assign core_resp_o[1-:2] = mpu_status;
	assign core_mpu_err_o = mpu_err;
	assign core_trans_ready_o = (bus_trans_ready_i && !mpu_block_core) || mpu_err_trans_ready;
	cv32e40x_pma #(
		.A_EXT(A_EXT),
		.PMA_NUM_REGIONS(PMA_NUM_REGIONS),
		.PMA_CFG(PMA_CFG)
	) pma_i(
		.trans_addr_i(core_trans_i[CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5-:((CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5) >= 6 ? CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 0 : 7 - (CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH + 5))]),
		.trans_debug_region_i(core_trans_debug_region),
		.trans_pushpop_i(core_trans_pushpop_i),
		.instr_fetch_access_i(instr_fetch_access),
		.atomic_access_i(atomic_access_i),
		.misaligned_access_i(misaligned_access_i),
		.modified_access_i(modified_access_i),
		.load_access_i(load_access),
		.pma_err_o(pma_err),
		.pma_bufferable_o(bus_trans_bufferable),
		.pma_cacheable_o(bus_trans_cacheable)
	);
	assign mpu_err = pma_err;
	assign instr_fetch_access = 1'b1;
	assign load_access = 1'b0;
	assign core_trans_we = 1'b0;
	assign core_resp_o[((CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 1 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0)) + 1-:((((CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 1 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0)) + 1) >= 2 ? ((CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 1 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0)) + 0 : 3 - (((CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 1 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH + 0)) + 1))] = bus_resp_i;
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_mpu_38253_97F3A (
	clk,
	rst_n,
	atomic_access_i,
	misaligned_access_i,
	modified_access_i,
	bus_trans_ready_i,
	bus_trans_valid_o,
	bus_trans_o,
	bus_resp_valid_i,
	bus_resp_i,
	core_trans_valid_i,
	core_trans_pushpop_i,
	core_trans_ready_o,
	core_trans_i,
	core_resp_valid_o,
	core_resp_o,
	core_one_txn_pend_n,
	core_mpu_err_wait_i,
	core_mpu_err_o
);
	parameter signed [31:0] BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH = 0;
	parameter signed [31:0] CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH = 0;
	parameter signed [31:0] CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH = 0;
	parameter signed [31:0] CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH = 0;
	reg _sv2v_0;
	parameter [0:0] IF_STAGE = 1;
	parameter [1:0] A_EXT = 2'd0;
	localparam cv32e40x_pkg_INSTR_ADDR_WIDTH = 32;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	localparam cv32e40x_pkg_DATA_DATA_WIDTH = 32;
	parameter signed [31:0] PMA_NUM_REGIONS = 0;
	localparam [67:0] cv32e40x_pkg_PMA_R_DEFAULT = 68'h00000000000000000;
	parameter [(PMA_NUM_REGIONS * 68) - 1:0] PMA_CFG = {PMA_NUM_REGIONS {cv32e40x_pkg_PMA_R_DEFAULT}};
	parameter [0:0] DEBUG = 1;
	parameter [31:0] DM_REGION_START = 32'hf0000000;
	parameter [31:0] DM_REGION_END = 32'hf0003fff;
	input wire clk;
	input wire rst_n;
	input wire atomic_access_i;
	input wire misaligned_access_i;
	input wire modified_access_i;
	input wire bus_trans_ready_i;
	output wire bus_trans_valid_o;
	output reg [(((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + 7) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8)) + CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH) + 5:0] bus_trans_o;
	input wire bus_resp_valid_i;
	input wire [((BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35:0] bus_resp_i;
	input wire core_trans_valid_i;
	input wire core_trans_pushpop_i;
	output wire core_trans_ready_o;
	input wire [(((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + 7) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8)) + CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH) + 5:0] core_trans_i;
	output wire core_resp_valid_o;
	output wire [((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35:0] core_resp_o;
	input wire core_one_txn_pend_n;
	input wire core_mpu_err_wait_i;
	output wire core_mpu_err_o;
	wire pma_err;
	wire mpu_err;
	reg mpu_block_core;
	reg mpu_block_bus;
	reg mpu_err_trans_valid;
	reg mpu_err_trans_ready;
	reg [1:0] mpu_status;
	reg [2:0] state_q;
	reg [2:0] state_n;
	wire bus_trans_cacheable;
	wire bus_trans_bufferable;
	wire core_trans_we;
	wire instr_fetch_access;
	wire load_access;
	wire core_trans_debug_region;
	assign core_trans_debug_region = ((core_trans_i[CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))-:((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))) >= (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6))) ? ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))) - (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6)))) + 1 : ((7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6))) - (CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5))))) + 1)] >= DM_REGION_START) && (core_trans_i[CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))-:((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))) >= (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6))) ? ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))) - (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6)))) + 1 : ((7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6))) - (CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5))))) + 1)] <= DM_REGION_END)) && core_trans_i[0];
	always @(*) begin
		if (_sv2v_0)
			;
		state_n = state_q;
		mpu_status = 2'h0;
		mpu_block_core = 1'b0;
		mpu_block_bus = 1'b0;
		mpu_err_trans_valid = 1'b0;
		mpu_err_trans_ready = 1'b0;
		case (state_q)
			3'd0:
				if (mpu_err && core_trans_valid_i) begin
					mpu_block_bus = 1'b1;
					mpu_err_trans_ready = 1'b1;
					if (core_mpu_err_wait_i) begin
						if (core_trans_we)
							state_n = (core_one_txn_pend_n ? 3'd3 : 3'd4);
						else
							state_n = (core_one_txn_pend_n ? 3'd1 : 3'd2);
					end
				end
			3'd2, 3'd4: begin
				mpu_block_bus = 1'b1;
				mpu_block_core = 1'b1;
				if (core_one_txn_pend_n)
					state_n = (state_q == 3'd2 ? 3'd1 : 3'd3);
			end
			3'd1, 3'd3: begin
				mpu_block_bus = 1'b1;
				mpu_block_core = 1'b1;
				mpu_err_trans_valid = 1'b1;
				mpu_status = (state_q == 3'd1 ? 2'h1 : 2'h2);
				state_n = 3'd0;
			end
			default:
				;
		endcase
	end
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0)
			state_q <= 3'd0;
		else
			state_q <= state_n;
	assign bus_trans_valid_o = core_trans_valid_i && !mpu_block_bus;
	always @(*) begin
		if (_sv2v_0)
			;
		bus_trans_o = core_trans_i;
		bus_trans_o[4] = bus_trans_bufferable;
		bus_trans_o[5] = bus_trans_cacheable;
	end
	assign core_resp_valid_o = bus_resp_valid_i || mpu_err_trans_valid;
	assign core_resp_o[35-:2] = mpu_status;
	assign core_mpu_err_o = mpu_err;
	assign core_trans_ready_o = (bus_trans_ready_i && !mpu_block_core) || mpu_err_trans_ready;
	cv32e40x_pma #(
		.A_EXT(A_EXT),
		.PMA_NUM_REGIONS(PMA_NUM_REGIONS),
		.PMA_CFG(PMA_CFG)
	) pma_i(
		.trans_addr_i(core_trans_i[CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))-:((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))) >= (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6))) ? ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5)))) - (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6)))) + 1 : ((7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 6))) - (CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH + (7 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5))))) + 1)]),
		.trans_debug_region_i(core_trans_debug_region),
		.trans_pushpop_i(core_trans_pushpop_i),
		.instr_fetch_access_i(instr_fetch_access),
		.atomic_access_i(atomic_access_i),
		.misaligned_access_i(misaligned_access_i),
		.modified_access_i(modified_access_i),
		.load_access_i(load_access),
		.pma_err_o(pma_err),
		.pma_bufferable_o(bus_trans_bufferable),
		.pma_cacheable_o(bus_trans_cacheable)
	);
	assign mpu_err = pma_err;
	assign instr_fetch_access = 1'b0;
	assign load_access = !core_trans_i[1 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5))];
	assign core_trans_we = core_trans_i[1 + ((CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH / 8) + (CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 5))];
	assign core_resp_o[33-:32] = 1'sb0;
	assign core_resp_o[1-:2] = bus_resp_i[1-:2];
	assign core_resp_o[((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35-:((((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35) >= 36 ? ((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 0 : 37 - (((CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35))] = bus_resp_i[((BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35-:((((BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35) >= 36 ? ((BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 0 : 37 - (((BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2) >= 0 ? BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 3 : 1 - (BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH + 2)) + 35))];
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_mult (
	clk,
	rst_n,
	valid_i,
	operator_i,
	signed_mode_i,
	op_a_i,
	op_b_i,
	result_o,
	halt_i,
	kill_i,
	ready_o,
	valid_o,
	ready_i
);
	reg _sv2v_0;
	input wire clk;
	input wire rst_n;
	input wire valid_i;
	localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
	input wire [0:0] operator_i;
	input wire [1:0] signed_mode_i;
	input wire [31:0] op_a_i;
	input wire [31:0] op_b_i;
	output wire [31:0] result_o;
	input wire halt_i;
	input wire kill_i;
	output reg ready_o;
	output reg valid_o;
	input wire ready_i;
	wire [31:0] op_a;
	wire [31:0] op_b;
	wire [33:0] int_result;
	reg mulh_shift;
	reg [1:0] mulh_state;
	reg [1:0] mulh_state_next;
	wire [16:0] mulh_al;
	wire [16:0] mulh_bl;
	wire [16:0] mulh_ah;
	wire [16:0] mulh_bh;
	reg [16:0] mulh_a;
	reg [16:0] mulh_b;
	reg [32:0] mulh_acc;
	reg [32:0] mulh_acc_next;
	wire [32:0] mulh_acc_res;
	wire [33:0] result;
	wire [33:0] result_shifted;
	assign mulh_al[15:0] = op_a_i[15:0];
	assign mulh_bl[15:0] = op_b_i[15:0];
	assign mulh_ah[15:0] = op_a_i[31:16];
	assign mulh_bh[15:0] = op_b_i[31:16];
	assign mulh_al[16] = 1'b0;
	assign mulh_bl[16] = 1'b0;
	assign mulh_ah[16] = signed_mode_i[0] && op_a_i[31];
	assign mulh_bh[16] = signed_mode_i[1] && op_b_i[31];
	function automatic [0:0] sv2v_cast_ACD50;
		input reg [0:0] inp;
		sv2v_cast_ACD50 = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		mulh_shift = 1'b0;
		mulh_a = mulh_al;
		mulh_b = mulh_bl;
		mulh_state_next = mulh_state;
		ready_o = 1'b0;
		valid_o = 1'b0;
		mulh_acc_next = mulh_acc;
		case (mulh_state)
			2'd0:
				if (operator_i == sv2v_cast_ACD50(1'b1)) begin
					mulh_shift = 1'b1;
					mulh_state_next = 2'd1;
					mulh_acc_next = mulh_acc_res;
				end
				else begin
					valid_o = 1'b1;
					if (ready_i)
						ready_o = 1'b1;
				end
			2'd1: begin
				mulh_state_next = 2'd2;
				mulh_acc_next = mulh_acc_res;
				mulh_a = mulh_al;
				mulh_b = mulh_bh;
			end
			2'd2: begin
				mulh_state_next = 2'd3;
				mulh_acc_next = mulh_acc_res;
				mulh_shift = 1'b1;
				mulh_a = mulh_ah;
				mulh_b = mulh_bl;
			end
			2'd3: begin
				valid_o = 1'b1;
				mulh_a = mulh_ah;
				mulh_b = mulh_bh;
				if (ready_i) begin
					ready_o = 1'b1;
					mulh_state_next = 2'd0;
					mulh_acc_next = 1'sb0;
				end
			end
			default:
				;
		endcase
		if (!valid_i || kill_i) begin
			valid_o = 1'b0;
			ready_o = 1'b1;
			mulh_shift = 1'b0;
			mulh_a = mulh_al;
			mulh_b = mulh_bl;
		end
		else if (halt_i) begin
			valid_o = 1'b0;
			ready_o = 1'b0;
			mulh_shift = 1'b0;
			mulh_a = mulh_al;
			mulh_b = mulh_bl;
		end
		if (kill_i) begin
			mulh_state_next = 2'd0;
			mulh_acc_next = 1'sb0;
		end
	end
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0) begin
			mulh_acc <= 1'sb0;
			mulh_state <= 2'd0;
		end
		else if ((valid_i && !halt_i) || kill_i) begin
			mulh_acc <= mulh_acc_next;
			mulh_state <= mulh_state_next;
		end
	assign result_shifted = $signed(result) >>> 16;
	assign mulh_acc_res = (mulh_shift ? result_shifted[32:0] : result[32:0]);
	assign op_a = (operator_i == sv2v_cast_ACD50(1'b0) ? op_a_i : {{16 {mulh_a[16]}}, mulh_a[15:0]});
	assign op_b = (operator_i == sv2v_cast_ACD50(1'b0) ? op_b_i : {{16 {mulh_b[16]}}, mulh_b[15:0]});
	assign int_result = $signed(op_a) * $signed(op_b);
	assign result = $signed(int_result) + $signed(mulh_acc);
	assign result_o = result[31:0];
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_pc_target (
	bch_jmp_mux_sel_i,
	pc_id_i,
	imm_uj_type_i,
	imm_sb_type_i,
	imm_i_type_i,
	jalr_fw_i,
	jvt_addr_i,
	jvt_index_i,
	bch_target_o,
	jmp_target_o
);
	reg _sv2v_0;
	input wire [1:0] bch_jmp_mux_sel_i;
	input wire [31:0] pc_id_i;
	input wire [31:0] imm_uj_type_i;
	input wire [31:0] imm_sb_type_i;
	input wire [31:0] imm_i_type_i;
	input wire [31:0] jalr_fw_i;
	localparam cv32e40x_pkg_JVT_ADDR_WIDTH = 26;
	input wire [25:0] jvt_addr_i;
	input wire [7:0] jvt_index_i;
	output wire [31:0] bch_target_o;
	output wire [31:0] jmp_target_o;
	reg [31:0] pc_target;
	assign bch_target_o = pc_target;
	assign jmp_target_o = pc_target;
	always @(*) begin : pc_target_mux
		if (_sv2v_0)
			;
		(* full_case, parallel_case *)
		case (bch_jmp_mux_sel_i)
			2'b00: pc_target = {jvt_addr_i, {6 {1'b0}}} + {22'd0, jvt_index_i, 2'b00};
			2'b01: pc_target = pc_id_i + imm_uj_type_i;
			2'b11: pc_target = pc_id_i + imm_sb_type_i;
			2'b10: pc_target = jalr_fw_i + imm_i_type_i;
			default: pc_target = jalr_fw_i + imm_i_type_i;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_pma (
	trans_addr_i,
	trans_debug_region_i,
	trans_pushpop_i,
	instr_fetch_access_i,
	atomic_access_i,
	misaligned_access_i,
	modified_access_i,
	load_access_i,
	pma_err_o,
	pma_bufferable_o,
	pma_cacheable_o
);
	reg _sv2v_0;
	parameter [1:0] A_EXT = 2'd0;
	parameter signed [31:0] PMA_NUM_REGIONS = 0;
	localparam [67:0] cv32e40x_pkg_PMA_R_DEFAULT = 68'h00000000000000000;
	parameter [(PMA_NUM_REGIONS * 68) - 1:0] PMA_CFG = {PMA_NUM_REGIONS {cv32e40x_pkg_PMA_R_DEFAULT}};
	input wire [31:0] trans_addr_i;
	input wire trans_debug_region_i;
	input wire trans_pushpop_i;
	input wire instr_fetch_access_i;
	input wire atomic_access_i;
	input wire misaligned_access_i;
	input wire modified_access_i;
	input wire load_access_i;
	output reg pma_err_o;
	output wire pma_bufferable_o;
	output wire pma_cacheable_o;
	localparam [67:0] PMA_DBG = 68'b00000000000000000000000000000000000000000000000000000000000000001000;
	reg [67:0] pma_cfg;
	wire [31:0] word_addr;
	wire pma_cfg_atomic;
	assign word_addr = {2'b00, trans_addr_i[31:2]};
	localparam [67:0] cv32e40x_pkg_NO_PMA_R_DEFAULT = 68'h00000000000000009;
	generate
		if (PMA_NUM_REGIONS == 0) begin : no_pma
			always @(*) begin
				if (_sv2v_0)
					;
				pma_cfg = cv32e40x_pkg_NO_PMA_R_DEFAULT;
				if (trans_debug_region_i)
					pma_cfg = PMA_DBG;
			end
		end
		else begin : pma
			always @(*) begin
				if (_sv2v_0)
					;
				pma_cfg = cv32e40x_pkg_PMA_R_DEFAULT;
				begin : sv2v_autoblock_1
					reg signed [31:0] i;
					for (i = PMA_NUM_REGIONS - 1; i >= 0; i = i - 1)
						if ((word_addr >= PMA_CFG[(i * 68) + 67-:32]) && (word_addr < PMA_CFG[(i * 68) + 35-:32]))
							pma_cfg = PMA_CFG[i * 68+:68];
				end
				if (trans_debug_region_i)
					pma_cfg = PMA_DBG;
			end
		end
		if (A_EXT) begin : pma_atomic
			assign pma_cfg_atomic = pma_cfg[0];
		end
		else begin : pma_no_atomic
			assign pma_cfg_atomic = 1'b0;
		end
	endgenerate
	always @(*) begin
		if (_sv2v_0)
			;
		pma_err_o = 1'b0;
		if (atomic_access_i && !pma_cfg_atomic)
			pma_err_o = 1'b1;
		if (instr_fetch_access_i && !pma_cfg[3])
			pma_err_o = 1'b1;
		if ((misaligned_access_i || modified_access_i) && !pma_cfg[3])
			pma_err_o = 1'b1;
		if (trans_pushpop_i && !pma_cfg[3])
			pma_err_o = 1'b1;
	end
	assign pma_bufferable_o = ((pma_cfg[2] && !instr_fetch_access_i) && !atomic_access_i) && !load_access_i;
	assign pma_cacheable_o = pma_cfg[1];
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_prefetcher (
	clk,
	rst_n,
	fetch_branch_i,
	fetch_branch_addr_i,
	fetch_valid_i,
	fetch_ready_o,
	fetch_ptr_access_i,
	fetch_ptr_access_o,
	fetch_priv_lvl_access_i,
	fetch_priv_lvl_access_o,
	trans_valid_o,
	trans_ready_i,
	trans_addr_o
);
	reg _sv2v_0;
	parameter [0:0] CLIC = 1'b0;
	input wire clk;
	input wire rst_n;
	input wire fetch_branch_i;
	input wire [31:0] fetch_branch_addr_i;
	input wire fetch_valid_i;
	output wire fetch_ready_o;
	input wire fetch_ptr_access_i;
	output reg fetch_ptr_access_o;
	input wire [1:0] fetch_priv_lvl_access_i;
	output reg [1:0] fetch_priv_lvl_access_o;
	output wire trans_valid_o;
	input wire trans_ready_i;
	output reg [31:0] trans_addr_o;
	reg state_q;
	reg next_state;
	reg [31:0] trans_addr_q;
	wire [31:0] trans_addr_incr;
	reg trans_ptr_access_q;
	reg [1:0] trans_priv_lvl_q;
	assign trans_addr_incr = {trans_addr_q[31:1], 1'b0} + 32'd4;
	assign trans_valid_o = fetch_valid_i;
	assign fetch_ready_o = trans_valid_o && trans_ready_i;
	always @(*) begin
		if (_sv2v_0)
			;
		next_state = state_q;
		trans_addr_o = trans_addr_q;
		fetch_ptr_access_o = trans_ptr_access_q;
		fetch_priv_lvl_access_o = trans_priv_lvl_q;
		case (state_q)
			1'd0: begin
				if (fetch_branch_i) begin
					trans_addr_o = fetch_branch_addr_i;
					fetch_ptr_access_o = fetch_ptr_access_i;
					fetch_priv_lvl_access_o = fetch_priv_lvl_access_i;
				end
				else begin
					trans_addr_o = trans_addr_incr;
					fetch_ptr_access_o = 1'b0;
					fetch_priv_lvl_access_o = fetch_priv_lvl_access_i;
				end
				if (fetch_branch_i && !(trans_valid_o && trans_ready_i))
					next_state = 1'd1;
			end
			1'd1: begin
				trans_addr_o = (fetch_branch_i ? fetch_branch_addr_i : trans_addr_q);
				fetch_ptr_access_o = (fetch_branch_i ? fetch_ptr_access_i : trans_ptr_access_q);
				fetch_priv_lvl_access_o = (fetch_branch_i ? fetch_priv_lvl_access_i : trans_priv_lvl_q);
				if (trans_valid_o && trans_ready_i)
					next_state = 1'd0;
			end
			default:
				;
		endcase
	end
	always @(posedge clk or negedge rst_n)
		if (rst_n == 1'b0) begin
			state_q <= 1'd0;
			trans_addr_q <= 1'sb0;
			trans_ptr_access_q <= 1'b0;
			trans_priv_lvl_q <= 2'b11;
		end
		else begin
			state_q <= next_state;
			if (fetch_branch_i || (trans_valid_o && trans_ready_i)) begin
				trans_addr_q <= trans_addr_o;
				trans_ptr_access_q <= fetch_ptr_access_o;
				trans_priv_lvl_q <= fetch_priv_lvl_access_o;
			end
		end
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_prefetch_unit (
	clk,
	rst_n,
	ctrl_fsm_i,
	priv_lvl_ctrl_i,
	branch_addr_i,
	prefetch_ready_i,
	prefetch_valid_o,
	prefetch_instr_o,
	prefetch_addr_o,
	prefetch_priv_lvl_o,
	prefetch_is_clic_ptr_o,
	prefetch_is_mret_ptr_o,
	prefetch_is_tbljmp_ptr_o,
	trans_valid_o,
	trans_ready_i,
	trans_addr_o,
	resp_valid_i,
	resp_i,
	one_txn_pend_n,
	outstnd_cnt_q_o,
	prefetch_busy_o
);
	parameter [0:0] CLIC = 1'b0;
	parameter [31:0] ALBUF_DEPTH = 3;
	parameter [31:0] ALBUF_CNT_WIDTH = $clog2(ALBUF_DEPTH);
	input wire clk;
	input wire rst_n;
	input wire [200:0] ctrl_fsm_i;
	input wire [2:0] priv_lvl_ctrl_i;
	input wire [31:0] branch_addr_i;
	input wire prefetch_ready_i;
	output wire prefetch_valid_o;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	output wire [34:0] prefetch_instr_o;
	output wire [31:0] prefetch_addr_o;
	output wire [1:0] prefetch_priv_lvl_o;
	output wire prefetch_is_clic_ptr_o;
	output wire prefetch_is_mret_ptr_o;
	output wire prefetch_is_tbljmp_ptr_o;
	output wire trans_valid_o;
	input wire trans_ready_i;
	output wire [31:0] trans_addr_o;
	input wire resp_valid_i;
	input wire [34:0] resp_i;
	output wire one_txn_pend_n;
	output wire [ALBUF_CNT_WIDTH - 1:0] outstnd_cnt_q_o;
	output wire prefetch_busy_o;
	wire fetch_valid;
	wire fetch_ready;
	wire fetch_branch;
	wire [31:0] fetch_branch_addr;
	wire fetch_ptr_access;
	wire fetch_ptr_resp;
	wire [1:0] fetch_priv_lvl_access;
	wire [1:0] fetch_priv_lvl_resp;
	cv32e40x_prefetcher #(.CLIC(CLIC)) prefetcher_i(
		.clk(clk),
		.rst_n(rst_n),
		.fetch_branch_i(fetch_branch),
		.fetch_branch_addr_i(fetch_branch_addr),
		.fetch_valid_i(fetch_valid),
		.fetch_ready_o(fetch_ready),
		.fetch_ptr_access_i(fetch_ptr_access),
		.fetch_ptr_access_o(fetch_ptr_resp),
		.fetch_priv_lvl_access_i(fetch_priv_lvl_access),
		.fetch_priv_lvl_access_o(fetch_priv_lvl_resp),
		.trans_valid_o(trans_valid_o),
		.trans_ready_i(trans_ready_i),
		.trans_addr_o(trans_addr_o)
	);
	cv32e40x_alignment_buffer #(
		.ALBUF_DEPTH(ALBUF_DEPTH),
		.ALBUF_CNT_WIDTH(ALBUF_CNT_WIDTH)
	) alignment_buffer_i(
		.clk(clk),
		.rst_n(rst_n),
		.ctrl_fsm_i(ctrl_fsm_i),
		.priv_lvl_ctrl_i(priv_lvl_ctrl_i),
		.branch_addr_i(branch_addr_i),
		.prefetch_busy_o(prefetch_busy_o),
		.fetch_valid_o(fetch_valid),
		.fetch_ready_i(fetch_ready),
		.fetch_branch_o(fetch_branch),
		.fetch_branch_addr_o(fetch_branch_addr),
		.fetch_ptr_access_o(fetch_ptr_access),
		.fetch_ptr_access_i(fetch_ptr_resp),
		.fetch_priv_lvl_o(fetch_priv_lvl_access),
		.fetch_priv_lvl_i(fetch_priv_lvl_resp),
		.resp_valid_i(resp_valid_i),
		.resp_i(resp_i),
		.one_txn_pend_n(one_txn_pend_n),
		.outstnd_cnt_q_o(outstnd_cnt_q_o),
		.instr_valid_o(prefetch_valid_o),
		.instr_ready_i(prefetch_ready_i),
		.instr_instr_o(prefetch_instr_o),
		.instr_addr_o(prefetch_addr_o),
		.instr_priv_lvl_o(prefetch_priv_lvl_o),
		.instr_is_clic_ptr_o(prefetch_is_clic_ptr_o),
		.instr_is_mret_ptr_o(prefetch_is_mret_ptr_o),
		.instr_is_tbljmp_ptr_o(prefetch_is_tbljmp_ptr_o)
	);
endmodule
module cv32e40x_register_file (
	clk,
	rst_n,
	raddr_i,
	rdata_o,
	waddr_i,
	wdata_i,
	we_i
);
	parameter [31:0] REGFILE_NUM_READ_PORTS = 2;
	parameter [0:0] RV32 = 1'd0;
	input wire clk;
	input wire rst_n;
	localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
	input wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_ADDR_WIDTH) - 1:0] raddr_i;
	localparam cv32e40x_pkg_REGFILE_DATA_WIDTH = 32;
	localparam cv32e40x_pkg_REGFILE_WORD_WIDTH = cv32e40x_pkg_REGFILE_DATA_WIDTH;
	output wire [(REGFILE_NUM_READ_PORTS * 32) - 1:0] rdata_o;
	localparam cv32e40x_pkg_REGFILE_NUM_WRITE_PORTS = 1;
	input wire [4:0] waddr_i;
	input wire [31:0] wdata_i;
	input wire [0:0] we_i;
	localparam REGFILE_NUM_WORDS = (RV32 == 1'd0 ? 32 : 16);
	localparam REGFILE_IMPL_ADDR_WIDTH = $clog2(REGFILE_NUM_WORDS);
	reg [31:0] mem [0:REGFILE_NUM_WORDS - 1];
	wire [REGFILE_NUM_WORDS - 1:0] we_dec [0:0];
	genvar _gv_ridx_1;
	generate
		for (_gv_ridx_1 = 0; _gv_ridx_1 < REGFILE_NUM_READ_PORTS; _gv_ridx_1 = _gv_ridx_1 + 1) begin : gen_regfile_rdata
			localparam ridx = _gv_ridx_1;
			assign rdata_o[((REGFILE_NUM_READ_PORTS - 1) - ridx) * 32+:32] = mem[raddr_i[(((REGFILE_NUM_READ_PORTS - 1) - ridx) * cv32e40x_pkg_REGFILE_ADDR_WIDTH) + (REGFILE_IMPL_ADDR_WIDTH - 1)-:REGFILE_IMPL_ADDR_WIDTH]];
		end
	endgenerate
	genvar _gv_reg_index_1;
	genvar _gv_port_index_1;
	generate
		for (_gv_reg_index_1 = 0; _gv_reg_index_1 < REGFILE_NUM_WORDS; _gv_reg_index_1 = _gv_reg_index_1 + 1) begin : gen_we_decoder
			localparam reg_index = _gv_reg_index_1;
			for (_gv_port_index_1 = 0; _gv_port_index_1 < cv32e40x_pkg_REGFILE_NUM_WRITE_PORTS; _gv_port_index_1 = _gv_port_index_1 + 1) begin : gen_we_ports
				localparam port_index = _gv_port_index_1;
				assign we_dec[port_index][reg_index] = (waddr_i[port_index * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH] == reg_index ? we_i[port_index] : 1'b0);
			end
		end
	endgenerate
	genvar _gv_i_9;
	always @(posedge clk or negedge rst_n)
		if (~rst_n)
			mem[0] <= 1'sb0;
		else
			mem[0] <= 1'sb0;
	generate
		for (_gv_i_9 = 1; _gv_i_9 < REGFILE_NUM_WORDS; _gv_i_9 = _gv_i_9 + 1) begin : gen_rf
			localparam i = _gv_i_9;
			always @(posedge clk or negedge rst_n) begin : register_write_behavioral
				if (rst_n == 1'b0)
					mem[i] <= 1'sb0;
				else begin : sv2v_autoblock_1
					reg signed [31:0] j;
					for (j = 0; j < cv32e40x_pkg_REGFILE_NUM_WRITE_PORTS; j = j + 1)
						begin : rf_write_ports
							if (we_dec[j][i] == 1'b1)
								mem[i] <= wdata_i[j * 32+:32];
						end
				end
			end
		end
	endgenerate
endmodule
module cv32e40x_register_file_wrapper (
	clk,
	rst_n,
	raddr_i,
	rdata_o,
	waddr_i,
	wdata_i,
	we_i
);
	parameter [31:0] REGFILE_NUM_READ_PORTS = 2;
	parameter [0:0] RV32 = 1'd0;
	input wire clk;
	input wire rst_n;
	localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
	input wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_ADDR_WIDTH) - 1:0] raddr_i;
	localparam cv32e40x_pkg_REGFILE_DATA_WIDTH = 32;
	output wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_DATA_WIDTH) - 1:0] rdata_o;
	localparam cv32e40x_pkg_REGFILE_NUM_WRITE_PORTS = 1;
	input wire [4:0] waddr_i;
	input wire [31:0] wdata_i;
	input wire [0:0] we_i;
	cv32e40x_register_file #(
		.REGFILE_NUM_READ_PORTS(REGFILE_NUM_READ_PORTS),
		.RV32(RV32)
	) register_file_i(
		.clk(clk),
		.rst_n(rst_n),
		.raddr_i(raddr_i),
		.rdata_o(rdata_o),
		.waddr_i(waddr_i),
		.wdata_i(wdata_i),
		.we_i(we_i)
	);
endmodule
module cv32e40x_sequencer (
	clk,
	rst_n,
	jvt_mode_i,
	instr_i,
	instr_is_clic_ptr_i,
	instr_is_mret_ptr_i,
	instr_is_tbljmp_ptr_i,
	valid_i,
	ready_i,
	halt_i,
	kill_i,
	instr_o,
	valid_o,
	ready_o,
	seq_first_o,
	seq_last_o,
	seq_tbljmp_o,
	seq_pushpop_o
);
	reg _sv2v_0;
	parameter [0:0] RV32 = 1'd0;
	input wire clk;
	input wire rst_n;
	input wire [5:0] jvt_mode_i;
	localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
	input wire [34:0] instr_i;
	input wire instr_is_clic_ptr_i;
	input wire instr_is_mret_ptr_i;
	input wire instr_is_tbljmp_ptr_i;
	input wire valid_i;
	input wire ready_i;
	input wire halt_i;
	input wire kill_i;
	output reg [34:0] instr_o;
	output wire valid_o;
	output wire ready_o;
	output wire seq_first_o;
	output wire seq_last_o;
	output reg seq_tbljmp_o;
	output reg seq_pushpop_o;
	reg [3:0] instr_cnt_q;
	reg [44:0] decode;
	reg [3:0] seq_instr;
	wire [31:0] instr;
	wire [3:0] rlist;
	reg seq_load;
	reg seq_store;
	reg seq_move_a2s;
	reg seq_move_s2a;
	reg [3:0] seq_state_n;
	reg [3:0] seq_state_q;
	reg seq_first_fsm;
	reg seq_last_fsm;
	wire instr_is_pointer;
	reg ready_fsm;
	wire dmove_legal_dest_s2a;
	wire dmove_legal_dest_a2s;
	wire pushpop_legal_rlist;
	assign instr = instr_i[34-:32];
	assign rlist = instr[7:4];
	assign instr_is_pointer = (instr_is_clic_ptr_i || instr_is_mret_ptr_i) || instr_is_tbljmp_ptr_i;
	always @(posedge clk or negedge rst_n)
		if (!rst_n) begin
			instr_cnt_q <= 1'sb0;
			seq_state_q <= 4'd0;
		end
		else if (valid_o && ready_i) begin
			if (!seq_last_o) begin
				if (!seq_tbljmp_o && !instr_is_tbljmp_ptr_i)
					instr_cnt_q <= instr_cnt_q + 1'd1;
			end
			else
				instr_cnt_q <= 1'sb0;
			seq_state_q <= seq_state_n;
		end
		else if (kill_i) begin
			instr_cnt_q <= 1'sb0;
			seq_state_q <= 4'd0;
		end
	assign pushpop_legal_rlist = (RV32 == 1'd0 ? rlist > 4'h3 : (rlist < 4'h7) && (rlist > 4'h3));
	assign dmove_legal_dest_s2a = (RV32 == 1'd0 ? 1'b1 : (instr[9:7] < 3'h2) && (instr[4:2] < 3'h2));
	assign dmove_legal_dest_a2s = (RV32 == 1'd0 ? instr[9:7] != instr[4:2] : ((instr[9:7] != instr[4:2]) && (instr[9:7] < 3'h2)) && (instr[4:2] < 3'h2));
	always @(*) begin
		if (_sv2v_0)
			;
		seq_instr = 4'd0;
		seq_load = 1'b0;
		seq_store = 1'b0;
		seq_move_a2s = 1'b0;
		seq_move_s2a = 1'b0;
		seq_tbljmp_o = 1'b0;
		seq_pushpop_o = 1'b0;
		if (!instr_is_pointer) begin
			if (instr[1:0] == 2'b10) begin
				if (instr[15:13] == 3'b101)
					(* full_case, parallel_case *)
					case (instr[12:10])
						3'b000:
							if (!(|jvt_mode_i)) begin
								seq_tbljmp_o = 1'b1;
								seq_instr = 4'd7;
							end
						3'b011:
							if (instr[6:5] == 2'b11) begin
								if (dmove_legal_dest_s2a) begin
									seq_instr = 4'd5;
									seq_move_s2a = 1'b1;
								end
							end
							else if (instr[6:5] == 2'b01) begin
								if (dmove_legal_dest_a2s) begin
									seq_instr = 4'd6;
									seq_move_a2s = 1'b1;
								end
							end
						3'b110:
							if (instr[9:8] == 2'b00) begin
								if (pushpop_legal_rlist) begin
									seq_instr = 4'd1;
									seq_store = 1'b1;
									seq_pushpop_o = 1'b1;
								end
							end
							else if (instr[9:8] == 2'b10) begin
								if (pushpop_legal_rlist) begin
									seq_instr = 4'd2;
									seq_load = 1'b1;
									seq_pushpop_o = 1'b1;
								end
							end
						3'b111:
							if (instr[9:8] == 2'b00) begin
								if (pushpop_legal_rlist) begin
									seq_instr = 4'd4;
									seq_load = 1'b1;
									seq_pushpop_o = 1'b1;
								end
							end
							else if (instr[9:8] == 2'b10) begin
								if (pushpop_legal_rlist) begin
									seq_instr = 4'd3;
									seq_load = 1'b1;
									seq_pushpop_o = 1'b1;
								end
							end
						default: seq_instr = 4'd0;
					endcase
			end
		end
	end
	assign valid_o = ((((seq_instr != 4'd0) || instr_is_tbljmp_ptr_i) && valid_i) && !halt_i) && !kill_i;
	function automatic [3:0] cv32e40x_pkg_pushpop_reg_length;
		input reg [3:0] rlist4;
		case (rlist4)
			'd0: cv32e40x_pkg_pushpop_reg_length = 4'd0;
			'd1: cv32e40x_pkg_pushpop_reg_length = 4'd0;
			'd2: cv32e40x_pkg_pushpop_reg_length = 4'd0;
			'd3: cv32e40x_pkg_pushpop_reg_length = 4'd0;
			'd4: cv32e40x_pkg_pushpop_reg_length = 4'd0;
			'd5: cv32e40x_pkg_pushpop_reg_length = 4'd1;
			'd6: cv32e40x_pkg_pushpop_reg_length = 4'd2;
			'd7: cv32e40x_pkg_pushpop_reg_length = 4'd3;
			'd8: cv32e40x_pkg_pushpop_reg_length = 4'd4;
			'd9: cv32e40x_pkg_pushpop_reg_length = 4'd5;
			'd10: cv32e40x_pkg_pushpop_reg_length = 4'd6;
			'd11: cv32e40x_pkg_pushpop_reg_length = 4'd7;
			'd12: cv32e40x_pkg_pushpop_reg_length = 4'd8;
			'd13: cv32e40x_pkg_pushpop_reg_length = 4'd9;
			'd14: cv32e40x_pkg_pushpop_reg_length = 4'd10;
			'd15: cv32e40x_pkg_pushpop_reg_length = 4'd12;
			default: cv32e40x_pkg_pushpop_reg_length = 4'd0;
		endcase
	endfunction
	wire [4:1] sv2v_tmp_BF71B;
	assign sv2v_tmp_BF71B = cv32e40x_pkg_pushpop_reg_length(rlist);
	always @(*) decode[32-:4] = sv2v_tmp_BF71B;
	function automatic [11:0] cv32e40x_pkg_get_stack_adj_base;
		input reg [3:0] rlist;
		case (rlist)
			4, 5, 6, 7: cv32e40x_pkg_get_stack_adj_base = 12'd16;
			8, 9, 10, 11: cv32e40x_pkg_get_stack_adj_base = 12'd32;
			12, 13, 14: cv32e40x_pkg_get_stack_adj_base = 12'd48;
			15: cv32e40x_pkg_get_stack_adj_base = 12'd64;
			default: cv32e40x_pkg_get_stack_adj_base = 12'd0;
		endcase
	endfunction
	wire [12:1] sv2v_tmp_B246C;
	assign sv2v_tmp_B246C = cv32e40x_pkg_get_stack_adj_base(rlist);
	always @(*) decode[44-:12] = sv2v_tmp_B246C;
	wire [12:1] sv2v_tmp_1AA40;
	assign sv2v_tmp_1AA40 = decode[44-:12] + (instr[3:2] << 4);
	always @(*) decode[28-:12] = sv2v_tmp_1AA40;
	function automatic [11:0] sv2v_cast_12;
		input reg [11:0] inp;
		sv2v_cast_12 = inp;
	endfunction
	always @(*) begin : current_stack_adj
		if (_sv2v_0)
			;
		case (seq_instr)
			4'd1: decode[16-:12] = -{{instr_cnt_q + 12'b000000000001} << 2};
			4'd2, 4'd3, 4'd4: decode[16-:12] = decode[28-:12] - sv2v_cast_12({instr_cnt_q + 5'b00001} << 2);
			default: decode[16-:12] = 1'sb0;
		endcase
	end
	wire [5:1] sv2v_tmp_1F0D2;
	assign sv2v_tmp_1F0D2 = (decode[32-:4] - instr_cnt_q) - 4'd1;
	always @(*) decode[4-:5] = sv2v_tmp_1F0D2;
	localparam cv32e40x_pkg_REG_RA = 5'd1;
	localparam cv32e40x_pkg_REG_SP = 5'd2;
	function automatic [4:0] sv2v_cast_5;
		input reg [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	function automatic [4:0] cv32e40x_pkg_sn_to_regnum;
		input reg [4:0] snum;
		case (snum)
			0, 1: cv32e40x_pkg_sn_to_regnum = sv2v_cast_5({snum[3:1] != 3'd0, 1'b1, snum[2:0]});
			default: cv32e40x_pkg_sn_to_regnum = sv2v_cast_5({snum[3:1] != 3'd0, snum[3], snum[2:0]});
		endcase
	endfunction
	always @(*) begin : sequencer_state_machine
		if (_sv2v_0)
			;
		instr_o = instr_i;
		seq_state_n = seq_state_q;
		seq_last_fsm = 1'b0;
		seq_first_fsm = 1'b1;
		ready_fsm = 1'b0;
		(* full_case, parallel_case *)
		case (seq_state_q)
			4'd0:
				if (seq_load) begin
					if (decode[32-:4] == 'd1) begin
						instr_o[34-:32] = {decode[16-:12], cv32e40x_pkg_REG_SP, 3'b010, cv32e40x_pkg_sn_to_regnum(decode[4-:5]), 7'h03};
						seq_state_n = 4'd4;
					end
					else if (decode[32-:4] > 'd1) begin
						instr_o[34-:32] = {decode[16-:12], cv32e40x_pkg_REG_SP, 3'b010, cv32e40x_pkg_sn_to_regnum(decode[4-:5]), 7'h03};
						seq_state_n = 4'd2;
					end
					else begin
						instr_o[34-:32] = {decode[16-:12], cv32e40x_pkg_REG_SP, 3'b010, cv32e40x_pkg_REG_RA, 7'h03};
						seq_state_n = 4'd5;
					end
				end
				else if (seq_store) begin
					if (decode[32-:4] == 'd1) begin
						instr_o[34-:32] = {7'b1111111, cv32e40x_pkg_sn_to_regnum(decode[4-:5]), 20'h12e23};
						seq_state_n = 4'd4;
					end
					else if (decode[32-:4] > 'd1) begin
						instr_o[34-:32] = {7'b1111111, cv32e40x_pkg_sn_to_regnum(decode[4-:5]), 20'h12e23};
						seq_state_n = 4'd1;
					end
					else begin
						instr_o[34-:32] = {7'b1111111, cv32e40x_pkg_REG_RA, 20'h12e23};
						seq_state_n = 4'd5;
					end
				end
				else if (seq_move_a2s) begin
					instr_o[34-:32] = {20'h00050, cv32e40x_pkg_sn_to_regnum({2'h0, instr[9:7]}), 7'h13};
					seq_state_n = 4'd3;
				end
				else if (seq_tbljmp_o) begin
					if (instr[9:7] == 3'b000)
						instr_o[34-:32] = {15'b000000000000000, instr[6:2], 12'h06f};
					else
						instr_o[34-:32] = {12'b000000000000, instr[9:2], 12'h0ef};
					ready_fsm = ready_i && !halt_i;
				end
				else if (seq_move_s2a) begin
					instr_o[34-:32] = {12'h000, cv32e40x_pkg_sn_to_regnum({2'h0, instr[9:7]}), 15'h0513};
					seq_state_n = 4'd3;
				end
			4'd1: begin
				seq_first_fsm = 1'b0;
				instr_o[34-:32] = {decode[16:10], cv32e40x_pkg_sn_to_regnum(decode[4-:5]), cv32e40x_pkg_REG_SP, 3'b010, decode[9:5], 7'h23};
				if (instr_cnt_q == (decode[32-:4] - 1))
					seq_state_n = 4'd4;
			end
			4'd2: begin
				seq_first_fsm = 1'b0;
				instr_o[34-:32] = {decode[16-:12], cv32e40x_pkg_REG_SP, 3'b010, cv32e40x_pkg_sn_to_regnum(decode[4-:5]), 7'h03};
				if (instr_cnt_q == (decode[32-:4] - 1))
					seq_state_n = 4'd4;
			end
			4'd3: begin
				seq_first_fsm = 1'b0;
				if (seq_move_a2s)
					instr_o[34-:32] = {20'h00058, cv32e40x_pkg_sn_to_regnum({2'h0, instr[4:2]}), 7'h13};
				else
					instr_o[34-:32] = {12'h000, cv32e40x_pkg_sn_to_regnum({2'h0, instr[4:2]}), 15'h0593};
				seq_state_n = 4'd0;
				ready_fsm = ready_i && !halt_i;
				seq_last_fsm = 1'b1;
			end
			4'd4: begin
				seq_first_fsm = 1'b0;
				if (seq_load)
					instr_o[34-:32] = {decode[16-:12], cv32e40x_pkg_REG_SP, 3'b010, cv32e40x_pkg_REG_RA, 7'h03};
				else
					instr_o[34-:32] = {decode[16:10], cv32e40x_pkg_REG_RA, cv32e40x_pkg_REG_SP, 3'b010, decode[9:5], 7'h23};
				seq_state_n = 4'd5;
			end
			4'd5: begin
				seq_first_fsm = 1'b0;
				if (seq_load)
					instr_o[34-:32] = {decode[28-:12], cv32e40x_pkg_REG_SP, 3'b000, cv32e40x_pkg_REG_SP, 7'h13};
				else
					instr_o[34-:32] = {-decode[28-:12], cv32e40x_pkg_REG_SP, 3'b000, cv32e40x_pkg_REG_SP, 7'h13};
				if (seq_instr == 4'd4)
					seq_state_n = 4'd6;
				else if (seq_instr == 4'd3)
					seq_state_n = 4'd7;
				else begin
					seq_state_n = 4'd0;
					ready_fsm = ready_i && !halt_i;
					seq_last_fsm = 1'b1;
				end
			end
			4'd6: begin
				seq_first_fsm = 1'b0;
				instr_o[34-:32] = 32'h00000513;
				seq_state_n = 4'd7;
			end
			4'd7: begin
				seq_first_fsm = 1'b0;
				instr_o[34-:32] = {12'b000000000000, cv32e40x_pkg_REG_RA, 15'h0067};
				seq_state_n = 4'd0;
				ready_fsm = ready_i && !halt_i;
				seq_last_fsm = 1'b1;
			end
			default: begin
				ready_fsm = 1'b1;
				seq_state_n = 4'd0;
			end
		endcase
		if ((!valid_o && !halt_i) || kill_i)
			ready_fsm = 1'b1;
	end
	assign seq_last_o = (instr_is_tbljmp_ptr_i ? 1'b1 : seq_last_fsm);
	assign seq_first_o = (instr_is_tbljmp_ptr_i ? 1'b0 : seq_first_fsm);
	assign ready_o = (instr_is_tbljmp_ptr_i ? (ready_i && !halt_i) || kill_i : ready_fsm);
	initial _sv2v_0 = 0;
endmodule
module cv32e40x_sleep_unit (
	clk_ungated_i,
	rst_n,
	clk_gated_o,
	scan_cg_en_i,
	core_sleep_o,
	fetch_enable_i,
	fetch_enable_o,
	if_busy_i,
	lsu_busy_i,
	ctrl_fsm_i
);
	parameter LIB = 0;
	input wire clk_ungated_i;
	input wire rst_n;
	output wire clk_gated_o;
	input wire scan_cg_en_i;
	output wire core_sleep_o;
	input wire fetch_enable_i;
	output wire fetch_enable_o;
	input wire if_busy_i;
	input wire lsu_busy_i;
	input wire [200:0] ctrl_fsm_i;
	reg fetch_enable_q;
	wire fetch_enable_d;
	reg core_busy_q;
	wire core_busy_d;
	wire clock_en;
	assign fetch_enable_d = (fetch_enable_i ? 1'b1 : fetch_enable_q);
	assign core_busy_d = (if_busy_i || ctrl_fsm_i[200]) || lsu_busy_i;
	assign clock_en = fetch_enable_q && (ctrl_fsm_i[105] || core_busy_q);
	assign core_sleep_o = fetch_enable_q && !clock_en;
	always @(posedge clk_ungated_i or negedge rst_n)
		if (rst_n == 1'b0) begin
			core_busy_q <= 1'b0;
			fetch_enable_q <= 1'b0;
		end
		else begin
			core_busy_q <= core_busy_d;
			fetch_enable_q <= fetch_enable_d;
		end
	assign fetch_enable_o = fetch_enable_q;
	cv32e40x_clock_gate #(.LIB(LIB)) core_clock_gate_i(
		.clk_i(clk_ungated_i),
		.en_i(clock_en),
		.scan_cg_en_i(scan_cg_en_i),
		.clk_o(clk_gated_o)
	);
endmodule
module cv32e40x_write_buffer (
	clk,
	rst_n,
	valid_i,
	trans_i,
	ready_i,
	valid_o,
	trans_o,
	ready_o
);
	reg _sv2v_0;
	parameter signed [31:0] PMA_NUM_REGIONS = 0;
	localparam [67:0] cv32e40x_pkg_PMA_R_DEFAULT = 68'h00000000000000000;
	parameter [(PMA_NUM_REGIONS * 68) - 1:0] PMA_CFG = {PMA_NUM_REGIONS {cv32e40x_pkg_PMA_R_DEFAULT}};
	input wire clk;
	input wire rst_n;
	input wire valid_i;
	localparam cv32e40x_pkg_DATA_ADDR_WIDTH = 32;
	localparam cv32e40x_pkg_DATA_DATA_WIDTH = 32;
	input wire [80:0] trans_i;
	input wire ready_i;
	output wire valid_o;
	output wire [80:0] trans_o;
	output wire ready_o;
	reg state;
	reg next_state;
	reg [80:0] trans_q;
	reg push;
	wire bufferable;
	assign bufferable = trans_i[4];
	always @(posedge clk or negedge rst_n)
		if (!rst_n)
			state <= 1'd0;
		else
			state <= next_state;
	always @(*) begin
		if (_sv2v_0)
			;
		next_state = state;
		push = 1'b0;
		case (state)
			1'd0:
				if ((bufferable && valid_i) && !ready_i) begin
					next_state = 1'd1;
					push = 1'b1;
				end
			1'd1:
				if (ready_i) begin
					if (bufferable && valid_i) begin
						next_state = 1'd1;
						push = 1'b1;
					end
					else
						next_state = 1'd0;
				end
			default:
				;
		endcase
	end
	function automatic [31:0] sv2v_cast_0C75D;
		input reg [31:0] inp;
		sv2v_cast_0C75D = inp;
	endfunction
	function automatic [3:0] sv2v_cast_2A47D;
		input reg [3:0] inp;
		sv2v_cast_2A47D = inp;
	endfunction
	function automatic [31:0] sv2v_cast_299DE;
		input reg [31:0] inp;
		sv2v_cast_299DE = inp;
	endfunction
	function automatic [80:0] sv2v_cast_62553;
		input reg [80:0] inp;
		sv2v_cast_62553 = inp;
	endfunction
	always @(posedge clk or negedge rst_n)
		if (!rst_n)
			trans_q <= sv2v_cast_62553({sv2v_cast_0C75D(1'sb0), 7'b0000001, sv2v_cast_2A47D(1'sb0), sv2v_cast_299DE(1'sb0), 6'b000000});
		else if (push)
			trans_q <= trans_i;
	assign ready_o = (state == 1'd1 ? bufferable && ready_i : bufferable || ready_i);
	assign valid_o = (state == 1'd1) || valid_i;
	assign trans_o = (state == 1'd1 ? trans_q : trans_i);
	initial _sv2v_0 = 0;
endmodule
`default_nettype none
module greyhound_soc (
	clk_i,
	rst_ni,
	fabric_irq_i,
	fabric_config_busy_i,
	bitstream_valid_o,
	bitstream_data_o,
	warmboot_boot_o,
	warmboot_slot_o,
	xif_or_periph_o,
	fabric_rs1_o,
	fabric_rs2_o,
	fabric_result_i,
	fabric_gnt_i,
	fabric_req_o,
	fabric_rvalid_i,
	fabric_we_o,
	fabric_be_o,
	fabric_addr_o,
	fabric_wdata_o,
	fabric_rdata_i,
	bank_rdata_i,
	bank_word_addr_o,
	bank_be_o,
	bank_wdata_o,
	bank_req_o,
	bank_we_o,
	flash_sck,
	flash_ce_n,
	flash_din,
	flash_dout,
	flash_douten,
	psram_sck,
	psram_ce_n,
	psram_din,
	psram_dout,
	psram_douten,
	uart0_rx,
	uart0_tx,
	fetch_enable_i,
	core_sleep_o
);
	reg _sv2v_0;
	input wire clk_i;
	input wire rst_ni;
	input wire [3:0] fabric_irq_i;
	input wire fabric_config_busy_i;
	output reg bitstream_valid_o;
	output reg [31:0] bitstream_data_o;
	output reg warmboot_boot_o;
	output reg [3:0] warmboot_slot_o;
	output reg xif_or_periph_o;
	output wire [31:0] fabric_rs1_o;
	output wire [31:0] fabric_rs2_o;
	input wire [31:0] fabric_result_i;
	input wire fabric_gnt_i;
	output wire fabric_req_o;
	input wire fabric_rvalid_i;
	output wire fabric_we_o;
	output wire [3:0] fabric_be_o;
	output wire [23:0] fabric_addr_o;
	output wire [31:0] fabric_wdata_o;
	input wire [31:0] fabric_rdata_i;
	input wire [31:0] bank_rdata_i;
	output wire [10:0] bank_word_addr_o;
	output wire [3:0] bank_be_o;
	output wire [31:0] bank_wdata_o;
	output wire bank_req_o;
	output wire bank_we_o;
	output wire flash_sck;
	output wire flash_ce_n;
	input wire [3:0] flash_din;
	output wire [3:0] flash_dout;
	output wire [3:0] flash_douten;
	output wire psram_sck;
	output wire psram_ce_n;
	input wire [3:0] psram_din;
	output wire [3:0] psram_dout;
	output wire [3:0] psram_douten;
	input wire uart0_rx;
	output wire uart0_tx;
	input wire fetch_enable_i;
	output wire core_sleep_o;
	generate
		if (1) begin : ext_if
			localparam [31:0] X_NUM_RS = 2;
			localparam [31:0] X_ID_WIDTH = 4;
			localparam [31:0] X_MEM_WIDTH = 32;
			localparam [31:0] X_RFR_WIDTH = 32;
			localparam [31:0] X_RFW_WIDTH = 32;
			localparam [31:0] X_MISA = 1'sb0;
			localparam [1:0] X_ECS_XS = 1'sb0;
			localparam signed [31:0] XLEN = 32;
			localparam signed [31:0] FLEN = 32;
			wire compressed_valid;
			wire compressed_ready;
			wire [21:0] compressed_req;
			wire [32:0] compressed_resp;
			wire issue_valid;
			wire issue_ready;
			reg [((38 + (X_NUM_RS * X_RFR_WIDTH)) + X_NUM_RS) + 6:0] issue_req;
			wire [8:0] issue_resp;
			wire commit_valid;
			wire [4:0] commit;
			wire mem_valid;
			wire mem_ready;
			wire [81:0] mem_req;
			wire [7:0] mem_resp;
			wire mem_result_valid;
			wire [(X_ID_WIDTH + X_MEM_WIDTH) + 1:0] mem_result;
			wire result_valid;
			wire result_ready;
			wire [(((X_ID_WIDTH + X_RFW_WIDTH) + 5) + (X_RFW_WIDTH / XLEN)) + 17:0] result;
		end
		if (1) begin : fabric_extension
			wire clk_i;
			wire rst_ni;
			wire [31:0] fabric_rs1_o;
			wire [31:0] fabric_rs2_o;
			wire [31:0] fabric_result_i;
			assign greyhound_soc.ext_if.compressed_ready = 1'sb0;
			assign greyhound_soc.ext_if.compressed_resp[0] = 1'sb0;
			assign greyhound_soc.ext_if.compressed_resp[32-:32] = 1'sb0;
			assign greyhound_soc.ext_if.issue_ready = 1'sb1;
			wire match;
			assign greyhound_soc.ext_if.issue_resp[8] = match;
			assign greyhound_soc.ext_if.issue_resp[7] = 1'sb1;
			assign greyhound_soc.ext_if.issue_resp[6] = 1'sb0;
			assign greyhound_soc.ext_if.issue_resp[5-:3] = 1'sb0;
			assign greyhound_soc.ext_if.issue_resp[2] = 1'sb0;
			assign greyhound_soc.ext_if.issue_resp[1] = 1'sb0;
			assign greyhound_soc.ext_if.issue_resp[0] = 1'sb0;
			assign greyhound_soc.ext_if.mem_valid = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[81-:4] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[77-:32] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[45-:2] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[43] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[42-:3] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[39-:4] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[35-:2] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[33-:32] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[1] = 1'sb0;
			assign greyhound_soc.ext_if.mem_req[0] = 1'sb0;
			reg done;
			assign greyhound_soc.ext_if.result_valid = done;
			reg [3:0] id_d;
			assign greyhound_soc.ext_if.result[41 + ((32'd32 / 32'sd32) + 17)-:((41 + ((32'd32 / 32'sd32) + 17)) >= (37 + ((32'd32 / 32'sd32) + 18)) ? ((41 + ((32'd32 / 32'sd32) + 17)) - (37 + ((32'd32 / 32'sd32) + 18))) + 1 : ((37 + ((32'd32 / 32'sd32) + 18)) - (41 + ((32'd32 / 32'sd32) + 17))) + 1)] = id_d;
			assign greyhound_soc.ext_if.result[37 + ((32'd32 / 32'sd32) + 17)-:((37 + ((32'd32 / 32'sd32) + 17)) >= (5 + ((32'd32 / 32'sd32) + 18)) ? ((37 + ((32'd32 / 32'sd32) + 17)) - (5 + ((32'd32 / 32'sd32) + 18))) + 1 : ((5 + ((32'd32 / 32'sd32) + 18)) - (37 + ((32'd32 / 32'sd32) + 17))) + 1)] = fabric_result_i;
			reg [3:0] rd_d;
			assign greyhound_soc.ext_if.result[5 + ((32'd32 / 32'sd32) + 17)-:((5 + ((32'd32 / 32'sd32) + 17)) >= ((32'd32 / 32'sd32) + 18) ? ((5 + ((32'd32 / 32'sd32) + 17)) - ((32'd32 / 32'sd32) + 18)) + 1 : (((32'd32 / 32'sd32) + 18) - (5 + ((32'd32 / 32'sd32) + 17))) + 1)] = rd_d;
			assign greyhound_soc.ext_if.result[(32'd32 / 32'sd32) + 17-:(((32'd32 / 32'sd32) + 17) >= 18 ? (32'd32 / 32'sd32) + 0 : 19 - ((32'd32 / 32'sd32) + 17))] = 1'sb0;
			assign greyhound_soc.ext_if.result[17-:6] = 1'sb0;
			assign greyhound_soc.ext_if.result[11-:3] = 1'sb0;
			assign greyhound_soc.ext_if.result[8] = 1'sb0;
			assign greyhound_soc.ext_if.result[7-:6] = 1'sb0;
			assign greyhound_soc.ext_if.result[1] = 1'sb0;
			assign greyhound_soc.ext_if.result[0] = 1'sb0;
			localparam OPCODE_XIF = 7'h5b;
			wire [6:0] opcode;
			wire [4:0] rs1;
			wire [4:0] rs2;
			wire [4:0] rd;
			wire [2:0] funct3;
			wire [6:0] funct7;
			assign opcode = greyhound_soc.ext_if.issue_req[(38 + ((32'd2 * 32'd32) + 8)) - 25:(38 + ((32'd2 * 32'd32) + 8)) - 31];
			assign rs1 = greyhound_soc.ext_if.issue_req[(38 + ((32'd2 * 32'd32) + 8)) - 12:(38 + ((32'd2 * 32'd32) + 8)) - 16];
			assign rs2 = greyhound_soc.ext_if.issue_req[(38 + ((32'd2 * 32'd32) + 8)) - 7:(38 + ((32'd2 * 32'd32) + 8)) - 11];
			assign rd = greyhound_soc.ext_if.issue_req[(38 + ((32'd2 * 32'd32) + 8)) - 20:(38 + ((32'd2 * 32'd32) + 8)) - 24];
			assign funct3 = greyhound_soc.ext_if.issue_req[(38 + ((32'd2 * 32'd32) + 8)) - 17:(38 + ((32'd2 * 32'd32) + 8)) - 19];
			assign funct7 = greyhound_soc.ext_if.issue_req[38 + ((32'd2 * 32'd32) + 8):(38 + ((32'd2 * 32'd32) + 8)) - 6];
			reg [31:0] rs1_d;
			reg [31:0] rs2_d;
			reg [6:0] counter;
			reg busy;
			assign match = opcode == OPCODE_XIF;
			always @(posedge clk_i or negedge rst_ni)
				if (!rst_ni) begin
					rs1_d <= 1'sb0;
					rs2_d <= 1'sb0;
					id_d <= 1'sb0;
					rd_d <= 1'sb0;
					counter <= 1'sb0;
					done <= 1'b0;
					busy <= 1'b0;
				end
				else begin
					done <= 1'b0;
					if (((greyhound_soc.ext_if.issue_valid && match) && (greyhound_soc.ext_if.issue_req[8-:2] == 2'b11)) && !busy) begin
						rs1_d <= greyhound_soc.ext_if.issue_req[((32'd2 * 32'd32) + 8) - ((32'd2 * 32'd32) - 1)+:32'd32];
						rs2_d <= greyhound_soc.ext_if.issue_req[((32'd2 * 32'd32) + 8) - ((32'd2 * 32'd32) - 33)+:32'd32];
						id_d <= greyhound_soc.ext_if.issue_req[32'd4 + ((32'd2 * 32'd32) + 8)-:((32'd4 + ((32'd2 * 32'd32) + 8)) >= ((32'd2 * 32'd32) + 9) ? ((32'd4 + ((32'd2 * 32'd32) + 8)) - ((32'd2 * 32'd32) + 9)) + 1 : (((32'd2 * 32'd32) + 9) - (32'd4 + ((32'd2 * 32'd32) + 8))) + 1)];
						rd_d <= rd;
						busy <= 1'b1;
						counter <= funct7;
					end
					if (busy && (counter == {7 {1'sb0}})) begin
						busy <= 1'b0;
						done <= 1'b1;
					end
					if (counter != {7 {1'sb0}})
						counter <= counter - 1;
				end
			assign fabric_rs1_o = rs1_d;
			assign fabric_rs2_o = rs2_d;
		end
	endgenerate
	assign fabric_extension.clk_i = clk_i;
	assign fabric_extension.rst_ni = rst_ni;
	assign fabric_rs1_o = fabric_extension.fabric_rs1_o;
	assign fabric_rs2_o = fabric_extension.fabric_rs2_o;
	assign fabric_extension.fabric_result_i = fabric_result_i;
	reg [63:0] time_counter;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			time_counter <= 1'sb0;
		else
			time_counter <= time_counter + 1;
	localparam [295:0] soc_pkg_SbrObiCfg = 296'h8000000080000000050000000000000000000000000000000000000000000000000;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] core_instr_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] core_instr_obi_rsp;
	assign core_instr_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))] = 1'sb0;
	assign core_instr_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))] = 1'sb0;
	assign core_instr_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)] = 1'sb1;
	assign core_instr_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)] = 1'sb0;
	assign core_instr_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)] = 1'sb0;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] core_data_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] core_data_obi_rsp;
	assign core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))] = 1'sb0;
	assign core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)] = 1'sb0;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] mux_demux_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] mux_demux_obi_rsp;
	localparam [31:0] soc_pkg_NumManagers = 2;
	wire [((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? (2 * (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1)) - 1 : (2 * (1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) - 1)):((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)] mgrs_mux_obi_req;
	wire [(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (2 * ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2)) - 1 : (2 * (1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0)):(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)] mgrs_mux_obi_rsp;
	assign mgrs_mux_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd0 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))] = core_instr_obi_req;
	assign core_instr_obi_rsp = mgrs_mux_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd0 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))];
	assign mgrs_mux_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd1 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))] = core_data_obi_req;
	assign core_data_obi_rsp = mgrs_mux_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd1 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))];
	localparam [31:0] soc_pkg_NumPeriphRules = 6;
	localparam [31:0] soc_pkg_NumPeriphs = 7;
	wire [((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? (7 * (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1)) - 1 : (7 * (1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))) + (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) - 1)):((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)] all_periph_obi_req;
	wire [(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (7 * ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2)) - 1 : (7 * (1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))) + ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 0)):(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)] all_periph_obi_rsp;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] error_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] error_obi_rsp;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] flash_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] flash_obi_rsp;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] sram_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] sram_obi_rsp;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] psram_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] psram_obi_rsp;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] uart0_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] uart0_obi_rsp;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] fabric_config_obi_req;
	reg [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] fabric_config_obi_rsp;
	wire [((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0:0] fabric_obi_req;
	wire [(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1:0] fabric_obi_rsp;
	assign error_obi_req = all_periph_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd0 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
	assign all_periph_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd0 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = error_obi_rsp;
	assign flash_obi_req = all_periph_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd1 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
	assign all_periph_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd1 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = flash_obi_rsp;
	assign sram_obi_req = all_periph_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd2 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
	assign all_periph_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd2 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = sram_obi_rsp;
	assign psram_obi_req = all_periph_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd3 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
	assign all_periph_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd3 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = psram_obi_rsp;
	assign uart0_obi_req = all_periph_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd4 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
	assign all_periph_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd4 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = uart0_obi_rsp;
	assign fabric_config_obi_req = all_periph_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd5 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
	assign all_periph_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd5 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = fabric_config_obi_rsp;
	assign fabric_obi_req = all_periph_obi_req[((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? 0 : ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) + (32'sd6 * ((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0)))+:((((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) >= 0 ? ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 1 : 1 - (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0))];
	assign all_periph_obi_rsp[(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? 0 : (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) + (32'sd6 * (((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1)))+:(((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) >= 0 ? (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 2 : 1 - ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1))] = fabric_obi_rsp;
	wire instr_req_o;
	wire instr_gnt_i;
	wire instr_rvalid_i;
	wire [31:0] instr_addr_o;
	wire [31:0] instr_rdata_i;
	wire instr_err_i;
	wire data_req_o;
	wire data_gnt_i;
	wire data_rvalid_i;
	wire [31:0] data_addr_o;
	wire [3:0] data_be_o;
	wire data_we_o;
	wire [31:0] data_wdata_o;
	wire [31:0] data_rdata_i;
	wire data_err_i;
	assign instr_req_o = core_instr_obi_req[0];
	assign instr_gnt_i = core_instr_obi_rsp[1];
	assign instr_rvalid_i = core_instr_obi_rsp[0];
	assign instr_addr_o = core_instr_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)];
	assign instr_rdata_i = core_instr_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)];
	assign instr_err_i = core_instr_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
	assign data_req_o = core_data_obi_req[0];
	assign data_gnt_i = core_data_obi_rsp[1];
	assign data_rvalid_i = core_data_obi_rsp[0];
	assign data_addr_o = core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)];
	assign data_be_o = core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)];
	assign data_we_o = core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))];
	assign data_wdata_o = core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)];
	assign data_rdata_i = core_data_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)];
	assign data_err_i = core_data_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
	wire [31:0] irq;
	wire uart0_irq;
	assign irq = {11'b00000000000, uart0_irq, fabric_irq_i, 16'b0000000000000000};
	localparam [31:0] soc_pkg_BootAddr = 32'h00000080;
	localparam [31:0] soc_pkg_HartId = 32'd0;
	localparam [31:0] soc_pkg_MtvecAddr = 32'h00000000;
	localparam [31:0] soc_pkg_NumPMARules = soc_pkg_NumPeriphRules;
	localparam [31:0] soc_pkg_FabricAddrOffset = 32'h50000000;
	localparam [31:0] soc_pkg_FabricAddrRange = 32'h01000000;
	localparam [31:0] soc_pkg_FabricConfigAddrOffset = 32'h40000000;
	localparam [31:0] soc_pkg_FabricConfigAddrRange = 32'h00000100;
	localparam [31:0] soc_pkg_FlashAddrOffset = 32'h00000000;
	localparam [31:0] soc_pkg_FlashAddrRange = 32'h01000000;
	localparam [31:0] soc_pkg_PsramAddrOffset = 32'h20000000;
	localparam [31:0] soc_pkg_PsramAddrRange = 32'h01000000;
	localparam [31:0] soc_pkg_SramAddrOffset = 32'h10000000;
	localparam [31:0] soc_pkg_SramAddrRange = 32'h00002000;
	localparam [31:0] soc_pkg_Uart0AddrOffset = 32'h30000000;
	localparam [31:0] soc_pkg_Uart0AddrRange = 32'h00010000;
	localparam [407:0] soc_pkg_pma_cfg = {soc_pkg_FlashAddrOffset >> 32'sd2, (soc_pkg_FlashAddrOffset + soc_pkg_FlashAddrRange) >> 32'sd2, 4'b1111, soc_pkg_SramAddrOffset >> 32'sd2, (soc_pkg_SramAddrOffset + soc_pkg_SramAddrRange) >> 32'sd2, 4'b1111, soc_pkg_PsramAddrOffset >> 32'sd2, (soc_pkg_PsramAddrOffset + soc_pkg_PsramAddrRange) >> 32'sd2, 4'b1111, soc_pkg_Uart0AddrOffset >> 32'sd2, (soc_pkg_Uart0AddrOffset + soc_pkg_Uart0AddrRange) >> 32'sd2, 4'b0000, soc_pkg_FabricConfigAddrOffset >> 32'sd2, (soc_pkg_FabricConfigAddrOffset + soc_pkg_FabricConfigAddrRange) >> 32'sd2, 4'b0000, soc_pkg_FabricAddrOffset >> 32'sd2, (soc_pkg_FabricAddrOffset + soc_pkg_FabricAddrRange) >> 32'sd2, 4'b1000};
	localparam _param_BEFD9_RV32 = 1'd0;
	localparam _param_BEFD9_A_EXT = 2'd2;
	localparam _param_BEFD9_B_EXT = 2'd3;
	localparam _param_BEFD9_M_EXT = 2'd1;
	localparam _param_BEFD9_DEBUG = 0;
	localparam _param_BEFD9_DM_REGION_START = 1'sb0;
	localparam _param_BEFD9_DM_REGION_END = 1'sb0;
	localparam _param_BEFD9_DBG_NUM_TRIGGERS = 0;
	localparam _param_BEFD9_PMA_NUM_REGIONS = soc_pkg_NumPMARules;
	localparam _param_BEFD9_PMA_CFG = soc_pkg_pma_cfg;
	localparam _param_BEFD9_X_EXT = 1;
	localparam _param_BEFD9_CLIC = 0;
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic [32:0] sv2v_cast_33;
		input reg [32:0] inp;
		sv2v_cast_33 = inp;
	endfunction
	generate
		if (1) begin : cv32e40x_core
			localparam LIB = 0;
			localparam [0:0] RV32 = _param_BEFD9_RV32;
			localparam [1:0] A_EXT = _param_BEFD9_A_EXT;
			localparam [1:0] B_EXT = _param_BEFD9_B_EXT;
			localparam [1:0] M_EXT = _param_BEFD9_M_EXT;
			localparam [0:0] DEBUG = _param_BEFD9_DEBUG;
			localparam [31:0] DM_REGION_START = _param_BEFD9_DM_REGION_START;
			localparam [31:0] DM_REGION_END = _param_BEFD9_DM_REGION_END;
			localparam signed [31:0] DBG_NUM_TRIGGERS = _param_BEFD9_DBG_NUM_TRIGGERS;
			localparam signed [31:0] PMA_NUM_REGIONS = _param_BEFD9_PMA_NUM_REGIONS;
			localparam [67:0] cv32e40x_pkg_PMA_R_DEFAULT = 68'h00000000000000000;
			localparam [407:0] PMA_CFG = _param_BEFD9_PMA_CFG;
			localparam [0:0] CLIC = _param_BEFD9_CLIC;
			localparam [31:0] CLIC_ID_WIDTH = 5;
			localparam [0:0] X_EXT = _param_BEFD9_X_EXT;
			localparam [31:0] X_NUM_RS = 2;
			localparam [31:0] X_ID_WIDTH = 4;
			localparam [31:0] X_MEM_WIDTH = 32;
			localparam [31:0] X_RFR_WIDTH = 32;
			localparam [31:0] X_RFW_WIDTH = 32;
			localparam [31:0] X_MISA = 32'h00000000;
			localparam [1:0] X_ECS_XS = 2'b00;
			localparam [31:0] NUM_MHPMCOUNTERS = 1;
			wire clk_i;
			wire rst_ni;
			wire scan_cg_en_i;
			wire [31:0] boot_addr_i;
			wire [31:0] dm_exception_addr_i;
			wire [31:0] dm_halt_addr_i;
			wire [31:0] mhartid_i;
			wire [3:0] mimpid_patch_i;
			wire [31:0] mtvec_addr_i;
			wire instr_req_o;
			wire instr_gnt_i;
			wire instr_rvalid_i;
			wire [31:0] instr_addr_o;
			wire [1:0] instr_memtype_o;
			wire [2:0] instr_prot_o;
			wire instr_dbg_o;
			wire [31:0] instr_rdata_i;
			wire instr_err_i;
			wire data_req_o;
			wire data_gnt_i;
			wire data_rvalid_i;
			wire [31:0] data_addr_o;
			wire [3:0] data_be_o;
			wire data_we_o;
			wire [31:0] data_wdata_o;
			wire [1:0] data_memtype_o;
			wire [2:0] data_prot_o;
			wire data_dbg_o;
			wire [5:0] data_atop_o;
			wire [31:0] data_rdata_i;
			wire data_err_i;
			wire data_exokay_i;
			wire [63:0] mcycle_o;
			wire [63:0] time_i;
			wire [31:0] irq_i;
			wire wu_wfe_i;
			wire clic_irq_i;
			wire [4:0] clic_irq_id_i;
			wire [7:0] clic_irq_level_i;
			wire [1:0] clic_irq_priv_i;
			wire clic_irq_shv_i;
			wire fencei_flush_req_o;
			wire fencei_flush_ack_i;
			wire debug_req_i;
			wire debug_havereset_o;
			wire debug_running_o;
			wire debug_halted_o;
			wire debug_pc_valid_o;
			wire [31:0] debug_pc_o;
			wire fetch_enable_i;
			wire core_sleep_o;
			localparam [31:0] REGFILE_NUM_READ_PORTS = (X_EXT ? X_NUM_RS : 2);
			localparam [0:0] ZC_EXT = 1;
			localparam [31:0] MTVT_LSB = 7;
			localparam [31:0] MTVT_ADDR_WIDTH = 25;
			wire clk;
			wire fetch_enable;
			wire [31:0] pc_if;
			wire ptr_in_if;
			wire [1:0] priv_lvl_if;
			wire [31:0] jump_target_id;
			wire [31:0] branch_target_ex;
			wire branch_decision_ex;
			wire if_busy;
			wire lsu_busy;
			wire lsu_bus_busy;
			wire lsu_interruptible;
			localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
			localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
			localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
			localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
			localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
			localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
			wire [352:0] id_ex_pipe;
			wire [247:0] ex_wb_pipe;
			wire [190:0] if_id_pipe;
			wire [17:0] ctrl_byp;
			wire [200:0] ctrl_fsm;
			wire debug_req_gated;
			wire rf_we_wb;
			wire [4:0] rf_waddr_wb;
			wire [31:0] rf_wdata_wb;
			wire [31:0] rf_wdata_ex;
			wire last_op_if;
			wire last_op_id;
			wire last_op_ex;
			wire last_op_wb;
			wire abort_op_if;
			wire abort_op_id;
			wire abort_op_wb;
			wire first_op_id;
			wire [REGFILE_NUM_READ_PORTS - 1:0] rf_re_id;
			wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_ADDR_WIDTH) - 1:0] rf_raddr_id;
			localparam cv32e40x_pkg_REGFILE_DATA_WIDTH = 32;
			wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_DATA_WIDTH) - 1:0] rf_rdata_id;
			localparam cv32e40x_pkg_REGFILE_NUM_WRITE_PORTS = 1;
			wire [4:0] rf_waddr;
			wire [31:0] rf_wdata;
			wire [0:0] rf_we;
			wire [24:0] mtvec_addr;
			wire [1:0] mtvec_mode;
			localparam cv32e40x_pkg_JVT_ADDR_WIDTH = 26;
			wire [25:0] jvt_addr;
			wire [5:0] jvt_mode;
			wire [24:0] mtvt_addr;
			wire [7:0] mintthresh_th;
			wire [31:0] mintstatus;
			wire [31:0] mcause;
			wire [31:0] csr_rdata;
			wire csr_counter_read;
			wire csr_wr_in_wb_flush;
			wire csr_irq_enable_write;
			wire [1:0] priv_lvl_lsu;
			wire [2:0] priv_lvl_if_ctrl;
			wire [1:0] priv_lvl;
			wire csr_mnxti_read;
			wire [27:0] csr_hz;
			wire csr_clic_pa_valid;
			wire [31:0] csr_clic_pa;
			wire lsu_split_ex;
			wire lsu_first_op_ex;
			wire lsu_last_op_ex;
			wire [1:0] lsu_atomic_ex;
			wire [1:0] lsu_mpu_status_wb;
			wire [31:0] lsu_wpt_match_wb;
			wire [1:0] lsu_align_status_wb;
			wire [31:0] lsu_rdata_wb;
			wire [1:0] lsu_err_wb;
			wire [1:0] lsu_atomic_wb;
			wire lsu_valid_0;
			wire lsu_ready_ex;
			wire lsu_valid_ex;
			wire lsu_ready_0;
			wire lsu_valid_1;
			wire lsu_ready_wb;
			wire lsu_valid_wb;
			wire lsu_ready_1;
			wire [31:0] lsu_addr_ex;
			wire lsu_we_ex;
			wire [3:0] lsu_be_ex;
			wire data_stall_wb;
			wire [31:0] wpt_match_wb;
			wire [1:0] mpu_status_wb;
			wire [1:0] align_status_wb;
			wire id_ready;
			wire ex_ready;
			wire wb_ready;
			wire if_valid;
			wire id_valid;
			wire ex_valid;
			wire wb_valid;
			wire [31:0] mstatus;
			wire [31:0] mepc;
			wire [31:0] dpc;
			wire [31:0] mie;
			wire [31:0] mip;
			wire csr_mtvec_init_if;
			wire [31:0] dcsr;
			wire [31:0] trigger_match_if;
			wire [31:0] trigger_match_ex;
			wire etrigger_wb;
			wire alu_jmp_id;
			wire alu_jmpr_id;
			wire alu_en_id;
			wire sys_en_id;
			wire sys_mret_insn_id;
			wire csr_en_raw_id;
			wire csr_illegal;
			wire xif_csr_error_ex;
			wire irq_req_ctrl;
			wire [9:0] irq_id_ctrl;
			wire irq_wu_ctrl;
			wire irq_clic_shv;
			wire [7:0] irq_clic_level;
			wire [1:0] irq_clic_priv;
			wire mnxti_irq_pending;
			wire [4:0] mnxti_irq_id;
			wire [7:0] mnxti_irq_level;
			wire irq_ack;
			wire [9:0] irq_id;
			wire [7:0] irq_level;
			wire [1:0] irq_priv;
			wire irq_shv;
			wire dbg_ack;
			wire xif_offloading_id;
			wire unused_signals;
			localparam cv32e40x_pkg_INSTR_ADDR_WIDTH = 32;
			if (1) begin : m_c_obi_instr_if
				localparam cv32e40x_pkg_INSTR_ADDR_WIDTH = 32;
				localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
				reg [0:0] s_req;
				wire [0:0] s_gnt;
				reg [37:0] req_payload;
				wire [0:0] s_rvalid;
				wire [32:0] resp_payload;
			end
			localparam cv32e40x_pkg_DATA_ADDR_WIDTH = 32;
			localparam cv32e40x_pkg_DATA_DATA_WIDTH = 32;
			if (1) begin : m_c_obi_data_if
				localparam cv32e40x_pkg_INSTR_ADDR_WIDTH = 32;
				localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
				wire [0:0] s_req;
				wire [0:0] s_gnt;
				wire [80:0] req_payload;
				wire [0:0] s_rvalid;
				wire [34:0] resp_payload;
			end
			assign instr_req_o = m_c_obi_instr_if.s_req[0];
			assign instr_addr_o = {m_c_obi_instr_if.req_payload[37:8], 2'b00};
			assign instr_memtype_o = m_c_obi_instr_if.req_payload[5-:2];
			assign instr_prot_o = m_c_obi_instr_if.req_payload[3-:3];
			assign instr_dbg_o = m_c_obi_instr_if.req_payload[0];
			assign m_c_obi_instr_if.s_gnt[0] = instr_gnt_i;
			assign m_c_obi_instr_if.s_rvalid[0] = instr_rvalid_i;
			assign m_c_obi_instr_if.resp_payload[32-:32] = instr_rdata_i;
			assign m_c_obi_instr_if.resp_payload[0] = instr_err_i;
			assign data_req_o = m_c_obi_data_if.s_req[0];
			assign data_we_o = m_c_obi_data_if.req_payload[42];
			assign data_be_o = m_c_obi_data_if.req_payload[41-:4];
			assign data_addr_o = m_c_obi_data_if.req_payload[80-:32];
			assign data_memtype_o = m_c_obi_data_if.req_payload[5-:2];
			assign data_prot_o = m_c_obi_data_if.req_payload[3-:3];
			assign data_dbg_o = m_c_obi_data_if.req_payload[0];
			assign data_wdata_o = m_c_obi_data_if.req_payload[37-:32];
			assign data_atop_o = m_c_obi_data_if.req_payload[48-:6];
			assign m_c_obi_data_if.s_gnt[0] = data_gnt_i;
			assign m_c_obi_data_if.s_rvalid[0] = data_rvalid_i;
			assign m_c_obi_data_if.resp_payload[34-:32] = data_rdata_i;
			assign m_c_obi_data_if.resp_payload[1] = data_err_i;
			assign m_c_obi_data_if.resp_payload[2] = 1'b0;
			assign m_c_obi_data_if.resp_payload[0] = data_exokay_i;
			assign debug_havereset_o = ctrl_fsm[108];
			assign debug_halted_o = ctrl_fsm[106];
			assign debug_running_o = ctrl_fsm[107];
			assign debug_pc_valid_o = ctrl_fsm[36];
			assign debug_pc_o = ex_wb_pipe[125-:32];
			assign irq_ack = ctrl_fsm[171];
			assign irq_id = ctrl_fsm[170-:10];
			assign irq_level = ctrl_fsm[160-:8];
			assign irq_priv = ctrl_fsm[152-:2];
			assign irq_shv = ctrl_fsm[150];
			assign dbg_ack = ctrl_fsm[149];
			assign debug_req_gated = (DEBUG ? debug_req_i : 1'b0);
			cv32e40x_sleep_unit #(.LIB(LIB)) sleep_unit_i(
				.clk_ungated_i(clk_i),
				.rst_n(rst_ni),
				.clk_gated_o(clk),
				.scan_cg_en_i(scan_cg_en_i),
				.core_sleep_o(core_sleep_o),
				.fetch_enable_i(fetch_enable_i),
				.fetch_enable_o(fetch_enable),
				.if_busy_i(if_busy),
				.lsu_busy_i(lsu_busy),
				.ctrl_fsm_i(ctrl_fsm)
			);
			localparam _param_2AEDE_RV32 = RV32;
			localparam _param_2AEDE_A_EXT = A_EXT;
			localparam _param_2AEDE_B_EXT = B_EXT;
			localparam _param_2AEDE_X_EXT = X_EXT;
			localparam _param_2AEDE_X_ID_WIDTH = X_ID_WIDTH;
			localparam _param_2AEDE_PMA_NUM_REGIONS = PMA_NUM_REGIONS;
			localparam _param_2AEDE_PMA_CFG = PMA_CFG;
			localparam _param_2AEDE_MTVT_ADDR_WIDTH = MTVT_ADDR_WIDTH;
			localparam _param_2AEDE_CLIC = CLIC;
			localparam _param_2AEDE_CLIC_ID_WIDTH = CLIC_ID_WIDTH;
			localparam _param_2AEDE_ZC_EXT = ZC_EXT;
			localparam _param_2AEDE_M_EXT = M_EXT;
			localparam _param_2AEDE_DEBUG = DEBUG;
			localparam _param_2AEDE_DM_REGION_START = DM_REGION_START;
			localparam _param_2AEDE_DM_REGION_END = DM_REGION_END;
			if (1) begin : if_stage_i
				reg _sv2v_0;
				localparam [0:0] RV32 = _param_2AEDE_RV32;
				localparam [1:0] A_EXT = _param_2AEDE_A_EXT;
				localparam [1:0] B_EXT = _param_2AEDE_B_EXT;
				localparam [0:0] X_EXT = _param_2AEDE_X_EXT;
				localparam [31:0] X_ID_WIDTH = _param_2AEDE_X_ID_WIDTH;
				localparam signed [31:0] PMA_NUM_REGIONS = _param_2AEDE_PMA_NUM_REGIONS;
				localparam [67:0] cv32e40x_pkg_PMA_R_DEFAULT = 68'h00000000000000000;
				localparam [407:0] PMA_CFG = _param_2AEDE_PMA_CFG;
				localparam [31:0] MTVT_ADDR_WIDTH = _param_2AEDE_MTVT_ADDR_WIDTH;
				localparam [0:0] CLIC = _param_2AEDE_CLIC;
				localparam [31:0] CLIC_ID_WIDTH = _param_2AEDE_CLIC_ID_WIDTH;
				localparam [0:0] ZC_EXT = _param_2AEDE_ZC_EXT;
				localparam [1:0] M_EXT = _param_2AEDE_M_EXT;
				localparam [0:0] DEBUG = _param_2AEDE_DEBUG;
				localparam [31:0] DM_REGION_START = _param_2AEDE_DM_REGION_START;
				localparam [31:0] DM_REGION_END = _param_2AEDE_DM_REGION_END;
				wire clk;
				wire rst_n;
				wire [31:0] boot_addr_i;
				wire [31:0] branch_target_ex_i;
				wire [31:0] dm_exception_addr_i;
				wire [31:0] dm_halt_addr_i;
				wire [31:0] dpc_i;
				wire [31:0] jump_target_id_i;
				wire [31:0] mepc_i;
				wire [24:0] mtvec_addr_i;
				wire [5:0] jvt_mode_i;
				wire [24:0] mtvt_addr_i;
				wire [200:0] ctrl_fsm_i;
				wire [31:0] trigger_match_i;
				localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
				reg [190:0] if_id_pipe_o;
				wire [31:0] pc_if_o;
				wire csr_mtvec_init_o;
				wire if_busy_o;
				wire ptr_in_if_o;
				wire [1:0] priv_lvl_if_o;
				wire last_op_o;
				wire abort_op_o;
				wire if_valid_o;
				wire id_ready_i;
				wire [2:0] priv_lvl_ctrl_i;
				wire xif_offloading_id_i;
				localparam [31:0] ALBUF_DEPTH = 3;
				localparam [31:0] ALBUF_CNT_WIDTH = 2;
				localparam [31:0] CLIC_MUX_WIDTH = CLIC_ID_WIDTH;
				wire if_ready;
				wire prefetch_busy;
				reg [31:0] branch_addr_n;
				wire prefetch_valid;
				wire prefetch_ready;
				wire [34:0] prefetch_instr;
				wire [1:0] prefetch_priv_lvl;
				wire prefetch_is_clic_ptr;
				wire prefetch_is_mret_ptr;
				wire prefetch_is_tbljmp_ptr;
				wire illegal_c_insn;
				wire [34:0] instr_decompressed;
				wire instr_compressed;
				wire prefetch_resp_valid;
				wire prefetch_trans_valid;
				wire prefetch_trans_ready;
				wire [31:0] prefetch_trans_addr;
				wire [34:0] prefetch_inst_resp;
				wire prefetch_one_txn_pend_n;
				wire [1:0] prefetch_outstnd_cnt_q;
				wire bus_resp_valid;
				wire [32:0] bus_resp;
				wire bus_trans_valid;
				wire bus_trans_ready;
				localparam cv32e40x_pkg_INSTR_ADDR_WIDTH = 32;
				wire [37:0] bus_trans;
				wire [37:0] core_trans;
				wire instr_valid;
				wire [3:0] xif_id;
				wire predec_ready;
				wire seq_valid;
				wire seq_ready;
				wire seq_instr_valid;
				wire seq_first;
				wire seq_last;
				wire [34:0] seq_instr;
				wire seq_tbljmp;
				wire seq_pushpop;
				wire first_op;
				wire unused_signals;
				always @(*) begin
					if (_sv2v_0)
						;
					branch_addr_n = {boot_addr_i[31:2], 2'b00};
					(* full_case, parallel_case *)
					case (ctrl_fsm_i[195-:4])
						4'b0000: branch_addr_n = {boot_addr_i[31:2], 2'b00};
						4'b0100: branch_addr_n = jump_target_id_i;
						4'b0101: branch_addr_n = branch_target_ex_i;
						4'b0001: branch_addr_n = {mepc_i[31:2], mepc_i[1] & !ctrl_fsm_i[197], mepc_i[0]};
						4'b0010: branch_addr_n = dpc_i;
						4'b0110: branch_addr_n = ctrl_fsm_i[104-:32];
						4'b1000: branch_addr_n = {mtvec_addr_i, 7'h00};
						4'b1001: branch_addr_n = {mtvec_addr_i, ctrl_fsm_i[191-:5], 2'b00};
						4'b1010: branch_addr_n = {dm_halt_addr_i[31:2], 2'b00};
						4'b1011: branch_addr_n = {dm_exception_addr_i[31:2], 2'b00};
						4'b1100: branch_addr_n = {mtvec_addr_i, ctrl_fsm_i[176-:5], 2'b00};
						4'b1101: branch_addr_n = {mtvt_addr_i, ctrl_fsm_i[181:177], 2'b00};
						4'b1110: branch_addr_n = if_id_pipe_o[34-:32];
						4'b1111: branch_addr_n = jump_target_id_i;
						default:
							;
					endcase
				end
				assign csr_mtvec_init_o = (ctrl_fsm_i[195-:4] == 4'b0000) & ctrl_fsm_i[198];
				cv32e40x_prefetch_unit #(
					.CLIC(CLIC),
					.ALBUF_DEPTH(ALBUF_DEPTH),
					.ALBUF_CNT_WIDTH(ALBUF_CNT_WIDTH)
				) prefetch_unit_i(
					.clk(clk),
					.rst_n(rst_n),
					.ctrl_fsm_i(ctrl_fsm_i),
					.priv_lvl_ctrl_i(priv_lvl_ctrl_i),
					.branch_addr_i({branch_addr_n[31:1], 1'b0}),
					.prefetch_ready_i(prefetch_ready),
					.prefetch_valid_o(prefetch_valid),
					.prefetch_instr_o(prefetch_instr),
					.prefetch_addr_o(pc_if_o),
					.prefetch_priv_lvl_o(prefetch_priv_lvl),
					.prefetch_is_clic_ptr_o(prefetch_is_clic_ptr),
					.prefetch_is_mret_ptr_o(prefetch_is_mret_ptr),
					.prefetch_is_tbljmp_ptr_o(prefetch_is_tbljmp_ptr),
					.trans_valid_o(prefetch_trans_valid),
					.trans_ready_i(prefetch_trans_ready),
					.trans_addr_o(prefetch_trans_addr),
					.resp_valid_i(prefetch_resp_valid),
					.resp_i(prefetch_inst_resp),
					.prefetch_busy_o(prefetch_busy),
					.one_txn_pend_n(prefetch_one_txn_pend_n),
					.outstnd_cnt_q_o(prefetch_outstnd_cnt_q)
				);
				assign core_trans[37-:32] = prefetch_trans_addr;
				assign core_trans[0] = ctrl_fsm_i[148];
				assign core_trans[1] = 1'b0;
				assign core_trans[3:2] = prefetch_priv_lvl;
				assign core_trans[5-:2] = 2'b00;
				cv32e40x_mpu_if_DEA60_825B7 #(
					.BUS_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH(cv32e40x_pkg_INSTR_DATA_WIDTH),
					.CORE_REQ_TYPE_cv32e40x_pkg_INSTR_ADDR_WIDTH(cv32e40x_pkg_INSTR_ADDR_WIDTH),
					.CORE_RESP_TYPE_cv32e40x_pkg_INSTR_DATA_WIDTH(cv32e40x_pkg_INSTR_DATA_WIDTH),
					.IF_STAGE(1),
					.A_EXT(A_EXT),
					.PMA_NUM_REGIONS(PMA_NUM_REGIONS),
					.PMA_CFG(PMA_CFG),
					.DEBUG(DEBUG),
					.DM_REGION_START(DM_REGION_START),
					.DM_REGION_END(DM_REGION_END)
				) mpu_i(
					.clk(clk),
					.rst_n(rst_n),
					.atomic_access_i(1'b0),
					.misaligned_access_i(1'b0),
					.modified_access_i(1'b0),
					.core_one_txn_pend_n(prefetch_one_txn_pend_n),
					.core_mpu_err_wait_i(1'b1),
					.core_mpu_err_o(),
					.core_trans_valid_i(prefetch_trans_valid),
					.core_trans_pushpop_i(1'b0),
					.core_trans_ready_o(prefetch_trans_ready),
					.core_trans_i(core_trans),
					.core_resp_valid_o(prefetch_resp_valid),
					.core_resp_o(prefetch_inst_resp),
					.bus_trans_valid_o(bus_trans_valid),
					.bus_trans_ready_i(bus_trans_ready),
					.bus_trans_o(bus_trans),
					.bus_resp_valid_i(bus_resp_valid),
					.bus_resp_i(bus_resp)
				);
				if (1) begin : instruction_obi_i
					reg _sv2v_0;
					wire clk;
					wire rst_n;
					wire trans_valid_i;
					wire trans_ready_o;
					localparam cv32e40x_pkg_INSTR_ADDR_WIDTH = 32;
					wire [37:0] trans_i;
					wire resp_valid_o;
					localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
					wire [32:0] resp_o;
					reg state_q;
					reg next_state;
					assign resp_valid_o = greyhound_soc.cv32e40x_core.m_c_obi_instr_if.s_rvalid[0];
					assign resp_o = greyhound_soc.cv32e40x_core.m_c_obi_instr_if.resp_payload;
					reg [37:0] obi_a_req_q;
					always @(*) begin
						if (_sv2v_0)
							;
						next_state = state_q;
						case (state_q)
							1'd0:
								if (greyhound_soc.cv32e40x_core.m_c_obi_instr_if.s_req[0] && !greyhound_soc.cv32e40x_core.m_c_obi_instr_if.s_gnt[0])
									next_state = 1'd1;
							1'd1:
								if (greyhound_soc.cv32e40x_core.m_c_obi_instr_if.s_gnt[0])
									next_state = 1'd0;
							default:
								;
						endcase
					end
					always @(*) begin
						if (_sv2v_0)
							;
						if (state_q == 1'd0) begin
							greyhound_soc.cv32e40x_core.m_c_obi_instr_if.s_req[0] = trans_valid_i;
							greyhound_soc.cv32e40x_core.m_c_obi_instr_if.req_payload = trans_i;
						end
						else begin
							greyhound_soc.cv32e40x_core.m_c_obi_instr_if.s_req[0] = 1'b1;
							greyhound_soc.cv32e40x_core.m_c_obi_instr_if.req_payload = obi_a_req_q;
						end
					end
					function automatic [31:0] sv2v_cast_7A53A;
						input reg [31:0] inp;
						sv2v_cast_7A53A = inp;
					endfunction
					localparam [37:0] cv32e40x_pkg_OBI_INST_REQ_RESET_VAL = {sv2v_cast_7A53A('h0), 6'h0c};
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0) begin
							state_q <= 1'd0;
							obi_a_req_q <= cv32e40x_pkg_OBI_INST_REQ_RESET_VAL;
						end
						else begin
							state_q <= next_state;
							if ((state_q == 1'd0) && (next_state == 1'd1))
								obi_a_req_q <= greyhound_soc.cv32e40x_core.m_c_obi_instr_if.req_payload;
						end
					assign trans_ready_o = state_q == 1'd0;
					initial _sv2v_0 = 0;
				end
				assign instruction_obi_i.clk = clk;
				assign instruction_obi_i.rst_n = rst_n;
				assign instruction_obi_i.trans_valid_i = bus_trans_valid;
				assign bus_trans_ready = instruction_obi_i.trans_ready_o;
				assign instruction_obi_i.trans_i = bus_trans;
				assign bus_resp_valid = instruction_obi_i.resp_valid_o;
				assign bus_resp = instruction_obi_i.resp_o;
				assign instr_valid = (prefetch_valid && !ctrl_fsm_i[16]) && !ctrl_fsm_i[21];
				assign if_ready = ctrl_fsm_i[16] || ((seq_ready && predec_ready) && !ctrl_fsm_i[21]);
				assign if_valid_o = instr_valid;
				assign if_busy_o = prefetch_busy;
				assign ptr_in_if_o = (prefetch_is_clic_ptr || prefetch_is_mret_ptr) || prefetch_is_tbljmp_ptr;
				assign prefetch_ready = if_ready;
				assign last_op_o = (seq_valid ? seq_last : (prefetch_is_mret_ptr ? 1'b1 : 1'b1));
				assign first_op = (seq_valid ? seq_first : (prefetch_is_mret_ptr ? 1'b0 : 1'b1));
				assign abort_op_o = (instr_decompressed[2] || (instr_decompressed[1-:2] != 2'h0)) || |trigger_match_i;
				assign priv_lvl_if_o = prefetch_priv_lvl;
				reg [4:0] instr_meta_n;
				always @(*) begin
					if (_sv2v_0)
						;
					instr_meta_n = 1'sb0;
					instr_meta_n[4] = if_id_pipe_o[154];
					instr_meta_n[3] = prefetch_is_clic_ptr;
					instr_meta_n[2] = prefetch_is_mret_ptr;
					instr_meta_n[1] = if_id_pipe_o[151];
					instr_meta_n[0] = if_id_pipe_o[150];
				end
				function automatic [31:0] sv2v_cast_7BA60;
					input reg [31:0] inp;
					sv2v_cast_7BA60 = inp;
				endfunction
				localparam [34:0] cv32e40x_pkg_INST_RESP_RESET_VAL = {sv2v_cast_33({sv2v_cast_7BA60(32'h00000003), 1'b0}), 2'h0};
				always @(posedge clk or negedge rst_n) begin : IF_ID_PIPE_REGISTERS
					if (rst_n == 1'b0) begin
						if_id_pipe_o[190] <= 1'b0;
						if_id_pipe_o[189-:35] <= cv32e40x_pkg_INST_RESP_RESET_VAL;
						if_id_pipe_o[154-:5] <= 1'sb0;
						if_id_pipe_o[149-:32] <= 1'sb0;
						if_id_pipe_o[101] <= 1'b0;
						if_id_pipe_o[117-:16] <= 1'sb0;
						if_id_pipe_o[100-:2] <= 2'b11;
						if_id_pipe_o[98-:32] <= 1'sb0;
						if_id_pipe_o[66-:32] <= 1'sb0;
						if_id_pipe_o[34-:32] <= 1'sb0;
						if_id_pipe_o[1] <= 1'b0;
						if_id_pipe_o[2] <= 1'b0;
						if_id_pipe_o[0] <= 1'b0;
					end
					else if (if_valid_o && id_ready_i) begin
						if_id_pipe_o[190] <= 1'b1;
						if_id_pipe_o[154-:5] <= instr_meta_n;
						if_id_pipe_o[101] <= (seq_valid ? 1'b0 : illegal_c_insn);
						if_id_pipe_o[100-:2] <= prefetch_priv_lvl;
						if_id_pipe_o[98-:32] <= trigger_match_i;
						if_id_pipe_o[66-:32] <= sv2v_cast_32(xif_id);
						if_id_pipe_o[1] <= last_op_o;
						if_id_pipe_o[2] <= first_op;
						if_id_pipe_o[0] <= abort_op_o;
						if (!prefetch_is_tbljmp_ptr) begin
							if ((prefetch_is_mret_ptr ? instr_decompressed[2] || (instr_decompressed[1-:2] != 2'h0) : 1'b1))
								if_id_pipe_o[149-:32] <= pc_if_o;
							if_id_pipe_o[154] <= instr_compressed;
							if_id_pipe_o[151] <= seq_tbljmp;
							if_id_pipe_o[150] <= seq_pushpop;
							if (instr_compressed)
								if_id_pipe_o[117-:16] <= prefetch_instr[18:3];
						end
						if (ptr_in_if_o) begin
							if_id_pipe_o[34-:32] <= instr_decompressed[34-:32];
							if_id_pipe_o[157] <= instr_decompressed[2];
							if_id_pipe_o[156-:2] <= instr_decompressed[1-:2];
						end
						else
							if_id_pipe_o[189-:35] <= (seq_valid ? seq_instr : instr_decompressed);
					end
					else if (id_ready_i)
						if_id_pipe_o[190] <= 1'b0;
				end
				cv32e40x_compressed_decoder #(
					.ZC_EXT(ZC_EXT),
					.B_EXT(B_EXT),
					.M_EXT(M_EXT)
				) compressed_decoder_i(
					.instr_i(prefetch_instr),
					.instr_is_ptr_i(ptr_in_if_o),
					.instr_o(instr_decompressed),
					.is_compressed_o(instr_compressed),
					.illegal_instr_o(illegal_c_insn)
				);
				assign predec_ready = id_ready_i;
				assign seq_instr_valid = prefetch_valid;
				if (ZC_EXT) begin : gen_seq
					cv32e40x_sequencer #(.RV32(RV32)) sequencer_i(
						.clk(clk),
						.rst_n(rst_n),
						.jvt_mode_i(jvt_mode_i),
						.instr_i(prefetch_instr),
						.instr_is_clic_ptr_i(prefetch_is_clic_ptr),
						.instr_is_mret_ptr_i(prefetch_is_mret_ptr),
						.instr_is_tbljmp_ptr_i(prefetch_is_tbljmp_ptr),
						.valid_i(seq_instr_valid),
						.ready_i(id_ready_i),
						.halt_i(ctrl_fsm_i[21]),
						.kill_i(ctrl_fsm_i[16]),
						.instr_o(seq_instr),
						.valid_o(seq_valid),
						.ready_o(seq_ready),
						.seq_first_o(seq_first),
						.seq_last_o(seq_last),
						.seq_tbljmp_o(seq_tbljmp),
						.seq_pushpop_o(seq_pushpop)
					);
				end
				else begin : gen_no_seq
					assign seq_valid = 1'b0;
					assign seq_last = 1'b0;
					assign seq_instr = 1'sb0;
					assign seq_ready = 1'b1;
					assign seq_first = 1'b0;
					assign seq_tbljmp = 1'b0;
					assign seq_pushpop = 1'b0;
				end
				if (X_EXT) begin : x_ext
					assign greyhound_soc.ext_if.compressed_valid = 1'sb0;
					assign greyhound_soc.ext_if.compressed_req = 1'sb0;
					assign xif_id = (xif_offloading_id_i ? if_id_pipe_o[66-:32] + 1 : if_id_pipe_o[66-:32]);
				end
				else begin : no_x_ext
					assign greyhound_soc.ext_if.compressed_valid = 1'sb0;
					assign greyhound_soc.ext_if.compressed_req = 1'sb0;
					assign xif_id = 1'sb0;
				end
				assign unused_signals = |prefetch_outstnd_cnt_q;
				initial _sv2v_0 = 0;
			end
			assign if_stage_i.clk = clk;
			assign if_stage_i.rst_n = rst_ni;
			assign if_stage_i.boot_addr_i = boot_addr_i;
			assign if_stage_i.branch_target_ex_i = branch_target_ex;
			assign if_stage_i.dm_exception_addr_i = dm_exception_addr_i;
			assign if_stage_i.dm_halt_addr_i = dm_halt_addr_i;
			assign if_stage_i.dpc_i = dpc;
			assign if_stage_i.jump_target_id_i = jump_target_id;
			assign if_stage_i.mepc_i = mepc;
			assign if_stage_i.mtvec_addr_i = mtvec_addr;
			assign if_stage_i.mtvt_addr_i = mtvt_addr;
			assign if_stage_i.jvt_mode_i = jvt_mode;
			assign if_id_pipe = if_stage_i.if_id_pipe_o;
			assign if_stage_i.ctrl_fsm_i = ctrl_fsm;
			assign if_stage_i.trigger_match_i = trigger_match_if;
			assign pc_if = if_stage_i.pc_if_o;
			assign csr_mtvec_init_if = if_stage_i.csr_mtvec_init_o;
			assign if_busy = if_stage_i.if_busy_o;
			assign ptr_in_if = if_stage_i.ptr_in_if_o;
			assign priv_lvl_if = if_stage_i.priv_lvl_if_o;
			assign last_op_if = if_stage_i.last_op_o;
			assign abort_op_if = if_stage_i.abort_op_o;
			assign if_valid = if_stage_i.if_valid_o;
			assign if_stage_i.id_ready_i = id_ready;
			assign if_stage_i.priv_lvl_ctrl_i = priv_lvl_if_ctrl;
			assign if_stage_i.xif_offloading_id_i = xif_offloading_id;
			localparam _param_86BBE_RV32 = RV32;
			localparam _param_86BBE_A_EXT = A_EXT;
			localparam _param_86BBE_B_EXT = B_EXT;
			localparam _param_86BBE_M_EXT = M_EXT;
			localparam _param_86BBE_X_EXT = X_EXT;
			localparam _param_86BBE_REGFILE_NUM_READ_PORTS = REGFILE_NUM_READ_PORTS;
			localparam _param_86BBE_CLIC = CLIC;
			if (1) begin : id_stage_i
				reg _sv2v_0;
				localparam [0:0] RV32 = _param_86BBE_RV32;
				localparam [1:0] A_EXT = _param_86BBE_A_EXT;
				localparam [1:0] B_EXT = _param_86BBE_B_EXT;
				localparam [1:0] M_EXT = _param_86BBE_M_EXT;
				localparam [0:0] X_EXT = _param_86BBE_X_EXT;
				localparam [31:0] REGFILE_NUM_READ_PORTS = _param_86BBE_REGFILE_NUM_READ_PORTS;
				localparam [0:0] CLIC = _param_86BBE_CLIC;
				wire clk;
				wire rst_n;
				wire [31:0] jmp_target_o;
				localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
				wire [190:0] if_id_pipe_i;
				localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
				localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
				localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
				localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
				localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
				reg [352:0] id_ex_pipe_o;
				wire [247:0] ex_wb_pipe_i;
				wire [17:0] ctrl_byp_i;
				wire [200:0] ctrl_fsm_i;
				wire [31:0] mcause_i;
				localparam cv32e40x_pkg_JVT_ADDR_WIDTH = 26;
				wire [25:0] jvt_addr_i;
				wire [31:0] rf_wdata_wb_i;
				wire [31:0] rf_wdata_ex_i;
				wire alu_jmp_o;
				wire alu_jmpr_o;
				wire sys_mret_insn_o;
				wire csr_en_raw_o;
				wire alu_en_o;
				wire sys_en_o;
				wire first_op_o;
				wire last_op_o;
				wire abort_op_o;
				wire [REGFILE_NUM_READ_PORTS - 1:0] rf_re_o;
				wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_ADDR_WIDTH) - 1:0] rf_raddr_o;
				localparam cv32e40x_pkg_REGFILE_DATA_WIDTH = 32;
				wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_DATA_WIDTH) - 1:0] rf_rdata_i;
				wire id_ready_o;
				wire id_valid_o;
				wire ex_ready_i;
				wire xif_offloading_o;
				localparam REG_S1_MSB = 19;
				localparam REG_S1_LSB = 15;
				localparam REG_S2_MSB = 24;
				localparam REG_S2_LSB = 20;
				localparam REG_S3_MSB = 31;
				localparam REG_S3_LSB = 27;
				localparam REG_D_MSB = 11;
				localparam REG_D_LSB = 7;
				wire [31:0] instr;
				wire [1:0] rf_re;
				wire rf_we;
				wire rf_we_dec;
				wire [4:0] rf_waddr;
				wire [REGFILE_NUM_READ_PORTS - 1:0] rf_illegal_raddr;
				wire alu_en;
				wire alu_bch;
				wire alu_jmp;
				wire alu_jmpr;
				wire [5:0] alu_operator;
				wire mul_en;
				wire [0:0] mul_operator;
				wire [1:0] mul_signed_mode;
				wire div_en;
				wire [1:0] div_operator;
				wire lsu_en;
				wire lsu_we;
				wire [1:0] lsu_size;
				wire lsu_sext;
				wire [5:0] lsu_atop;
				wire csr_en;
				wire csr_en_raw;
				wire [1:0] csr_op;
				wire sys_en;
				wire sys_fence_insn;
				wire sys_fencei_insn;
				wire sys_ecall_insn;
				wire sys_ebrk_insn;
				wire sys_mret_insn;
				wire sys_dret_insn;
				wire sys_wfi_insn;
				wire sys_wfe_insn;
				reg [31:0] operand_a;
				reg [31:0] operand_b;
				reg [31:0] operand_c;
				reg [31:0] operand_a_fw;
				reg [31:0] operand_b_fw;
				reg [31:0] jalr_fw;
				wire [1:0] alu_op_a_mux_sel;
				wire [1:0] alu_op_b_mux_sel;
				wire [1:0] op_c_mux_sel;
				wire imm_a_mux_sel;
				wire [1:0] imm_b_mux_sel;
				wire [1:0] bch_jmp_mux_sel;
				reg [31:0] imm_a;
				reg [31:0] imm_b;
				wire [31:0] imm_i_type;
				wire [31:0] imm_s_type;
				wire [31:0] imm_sb_type;
				wire [31:0] imm_u_type;
				wire [31:0] imm_uj_type;
				wire [31:0] imm_z_type;
				wire [31:0] bch_target;
				wire illegal_insn;
				wire instr_valid;
				wire xif_en;
				wire xif_waiting;
				wire xif_insn_accept;
				wire xif_insn_reject;
				wire xif_we;
				wire xif_exception;
				wire xif_dualwrite;
				wire xif_loadstore;
				wire tbljmp_first;
				wire [7:0] jvt_index;
				assign instr_valid = (if_id_pipe_i[190] && !ctrl_fsm_i[15]) && !ctrl_fsm_i[20];
				assign sys_mret_insn_o = sys_mret_insn;
				assign instr = if_id_pipe_i[189-:32];
				assign imm_i_type = {{20 {instr[31]}}, instr[31:20]};
				assign imm_s_type = {{20 {instr[31]}}, instr[31:25], instr[11:7]};
				assign imm_sb_type = {{19 {instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
				assign imm_u_type = {instr[31:12], 12'b000000000000};
				assign imm_uj_type = {{12 {instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
				assign imm_z_type = {27'b000000000000000000000000000, instr[REG_S1_MSB:REG_S1_LSB]};
				assign rf_raddr_o[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH] = instr[REG_S1_MSB:REG_S1_LSB];
				assign rf_raddr_o[(REGFILE_NUM_READ_PORTS - 2) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH] = instr[REG_S2_MSB:REG_S2_LSB];
				if (REGFILE_NUM_READ_PORTS == 3) begin : gen_rs3_raddr
					assign rf_raddr_o[(REGFILE_NUM_READ_PORTS - 3) * cv32e40x_pkg_REGFILE_ADDR_WIDTH+:cv32e40x_pkg_REGFILE_ADDR_WIDTH] = instr[REG_S3_MSB:REG_S3_LSB];
				end
				assign rf_waddr = instr[REG_D_MSB:REG_D_LSB];
				assign tbljmp_first = (if_id_pipe_i[151] ? !if_id_pipe_i[1] : 1'b0);
				assign jvt_index = if_id_pipe_i[177:170];
				cv32e40x_pc_target cv32e40x_pc_target_i(
					.bch_jmp_mux_sel_i(bch_jmp_mux_sel),
					.pc_id_i(if_id_pipe_i[149-:32]),
					.imm_uj_type_i(imm_uj_type),
					.imm_sb_type_i(imm_sb_type),
					.imm_i_type_i(imm_i_type),
					.jalr_fw_i(jalr_fw),
					.jvt_addr_i(jvt_addr_i),
					.jvt_index_i(jvt_index),
					.bch_target_o(bch_target),
					.jmp_target_o(jmp_target_o)
				);
				always @(*) begin : operand_a_mux
					if (_sv2v_0)
						;
					case (alu_op_a_mux_sel)
						2'b00: operand_a = operand_a_fw;
						2'b01: operand_a = if_id_pipe_i[149-:32];
						2'b10: operand_a = imm_a;
						default: operand_a = operand_a_fw;
					endcase
				end
				always @(*) begin : immediate_a_mux
					if (_sv2v_0)
						;
					(* full_case, parallel_case *)
					case (imm_a_mux_sel)
						1'b0: imm_a = imm_z_type;
						1'b1: imm_a = 1'sb0;
						default: imm_a = 1'sb0;
					endcase
				end
				always @(*) begin : operand_a_fw_mux
					if (_sv2v_0)
						;
					case (ctrl_byp_i[17-:2])
						2'b01: operand_a_fw = rf_wdata_ex_i;
						2'b10: operand_a_fw = rf_wdata_wb_i;
						2'b00: operand_a_fw = rf_rdata_i[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_DATA_WIDTH+:cv32e40x_pkg_REGFILE_DATA_WIDTH];
						default: operand_a_fw = rf_rdata_i[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_DATA_WIDTH+:cv32e40x_pkg_REGFILE_DATA_WIDTH];
					endcase
				end
				always @(*) begin : jalr_fw_mux
					if (_sv2v_0)
						;
					case (ctrl_byp_i[13])
						1'b1: jalr_fw = ex_wb_pipe_i[241-:32];
						1'b0: jalr_fw = rf_rdata_i[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_DATA_WIDTH+:cv32e40x_pkg_REGFILE_DATA_WIDTH];
						default: jalr_fw = rf_rdata_i[(REGFILE_NUM_READ_PORTS - 1) * cv32e40x_pkg_REGFILE_DATA_WIDTH+:cv32e40x_pkg_REGFILE_DATA_WIDTH];
					endcase
				end
				always @(*) begin : immediate_b_mux
					if (_sv2v_0)
						;
					(* full_case, parallel_case *)
					case (imm_b_mux_sel)
						2'b00: imm_b = imm_i_type;
						2'b01: imm_b = imm_s_type;
						2'b10: imm_b = imm_u_type;
						2'b11: imm_b = (if_id_pipe_i[154] ? 32'h00000002 : 32'h00000004);
						default: imm_b = imm_i_type;
					endcase
				end
				always @(*) begin : operand_b_mux
					if (_sv2v_0)
						;
					case (alu_op_b_mux_sel)
						2'b00: operand_b = operand_b_fw;
						2'b01: operand_b = imm_b;
						default: operand_b = operand_b_fw;
					endcase
				end
				always @(*) begin : operand_b_fw_mux
					if (_sv2v_0)
						;
					case (ctrl_byp_i[15-:2])
						2'b01: operand_b_fw = rf_wdata_ex_i;
						2'b10: operand_b_fw = rf_wdata_wb_i;
						2'b00: operand_b_fw = rf_rdata_i[(REGFILE_NUM_READ_PORTS - 2) * cv32e40x_pkg_REGFILE_DATA_WIDTH+:cv32e40x_pkg_REGFILE_DATA_WIDTH];
						default: operand_b_fw = rf_rdata_i[(REGFILE_NUM_READ_PORTS - 2) * cv32e40x_pkg_REGFILE_DATA_WIDTH+:cv32e40x_pkg_REGFILE_DATA_WIDTH];
					endcase
				end
				always @(*) begin : operand_c_mux
					if (_sv2v_0)
						;
					case (op_c_mux_sel)
						2'b00: operand_c = operand_b_fw;
						2'b01: operand_c = bch_target;
						default: operand_c = operand_b_fw;
					endcase
				end
				cv32e40x_decoder #(
					.RV32(RV32),
					.REGFILE_NUM_READ_PORTS(REGFILE_NUM_READ_PORTS),
					.A_EXT(A_EXT),
					.B_EXT(B_EXT),
					.M_EXT(M_EXT),
					.CLIC(CLIC)
				) decoder_i(
					.deassert_we_i(ctrl_byp_i[4]),
					.sys_en_o(sys_en),
					.illegal_insn_o(illegal_insn),
					.sys_ebrk_insn_o(sys_ebrk_insn),
					.sys_mret_insn_o(sys_mret_insn),
					.sys_dret_insn_o(sys_dret_insn),
					.sys_ecall_insn_o(sys_ecall_insn),
					.sys_wfi_insn_o(sys_wfi_insn),
					.sys_wfe_insn_o(sys_wfe_insn),
					.sys_fence_insn_o(sys_fence_insn),
					.sys_fencei_insn_o(sys_fencei_insn),
					.if_id_pipe_i(if_id_pipe_i),
					.alu_en_o(alu_en),
					.alu_bch_o(alu_bch),
					.alu_jmp_o(alu_jmp),
					.alu_jmpr_o(alu_jmpr),
					.alu_operator_o(alu_operator),
					.alu_op_a_mux_sel_o(alu_op_a_mux_sel),
					.alu_op_b_mux_sel_o(alu_op_b_mux_sel),
					.mul_en_o(mul_en),
					.mul_operator_o(mul_operator),
					.mul_signed_mode_o(mul_signed_mode),
					.div_en_o(div_en),
					.div_operator_o(div_operator),
					.csr_en_o(csr_en),
					.csr_en_raw_o(csr_en_raw),
					.csr_op_o(csr_op),
					.lsu_en_o(lsu_en),
					.lsu_we_o(lsu_we),
					.lsu_size_o(lsu_size),
					.lsu_sext_o(lsu_sext),
					.lsu_atop_o(lsu_atop),
					.rf_re_o(rf_re),
					.rf_we_o(rf_we_dec),
					.rf_raddr_i(rf_raddr_o),
					.rf_waddr_i(rf_waddr),
					.rf_illegal_raddr_o(rf_illegal_raddr),
					.imm_a_mux_sel_o(imm_a_mux_sel),
					.imm_b_mux_sel_o(imm_b_mux_sel),
					.op_c_mux_sel_o(op_c_mux_sel),
					.bch_jmp_mux_sel_o(bch_jmp_mux_sel),
					.ctrl_fsm_i(ctrl_fsm_i),
					.tbljmp_first_i(tbljmp_first)
				);
				if (X_EXT) begin : x_ext_rf_re
					function automatic [REGFILE_NUM_READ_PORTS - 1:0] sv2v_cast_59A84;
						input reg [REGFILE_NUM_READ_PORTS - 1:0] inp;
						sv2v_cast_59A84 = inp;
					endfunction
					assign rf_re_o = (illegal_insn ? {REGFILE_NUM_READ_PORTS {1'sb1}} : sv2v_cast_59A84(rf_re));
				end
				else begin : no_x_ext_rf_re
					assign rf_re_o = rf_re;
				end
				assign rf_we = rf_we_dec || xif_we;
				function automatic [31:0] sv2v_cast_50A82;
					input reg [31:0] inp;
					sv2v_cast_50A82 = inp;
				endfunction
				localparam [34:0] cv32e40x_pkg_INST_RESP_RESET_VAL = {sv2v_cast_33({sv2v_cast_50A82(32'h00000003), 1'b0}), 2'h0};
				always @(posedge clk or negedge rst_n) begin : ID_EX_PIPE_REGISTERS
					if (rst_n == 1'b0) begin
						id_ex_pipe_o[42] <= 1'b0;
						id_ex_pipe_o[352] <= 1'b0;
						id_ex_pipe_o[351] <= 1'b0;
						id_ex_pipe_o[350] <= 1'b0;
						begin : sv2v_autoblock_1
							reg [5:0] sv2v_tmp_cast;
							sv2v_tmp_cast = 6'b010011;
							id_ex_pipe_o[349-:6] <= sv2v_tmp_cast;
						end
						id_ex_pipe_o[343-:32] <= 32'b00000000000000000000000000000000;
						id_ex_pipe_o[311-:32] <= 32'b00000000000000000000000000000000;
						id_ex_pipe_o[279-:32] <= 32'b00000000000000000000000000000000;
						id_ex_pipe_o[247] <= 1'b0;
						begin : sv2v_autoblock_2
							reg [0:0] sv2v_tmp_cast_1;
							sv2v_tmp_cast_1 = 1'b0;
							id_ex_pipe_o[246] <= sv2v_tmp_cast_1;
						end
						id_ex_pipe_o[245-:2] <= 2'b00;
						id_ex_pipe_o[243] <= 1'b0;
						begin : sv2v_autoblock_3
							reg [1:0] sv2v_tmp_cast_2;
							sv2v_tmp_cast_2 = 2'b00;
							id_ex_pipe_o[242-:2] <= sv2v_tmp_cast_2;
						end
						id_ex_pipe_o[240-:32] <= 32'b00000000000000000000000000000000;
						id_ex_pipe_o[208-:32] <= 32'b00000000000000000000000000000000;
						id_ex_pipe_o[176] <= 1'b0;
						begin : sv2v_autoblock_4
							reg [1:0] sv2v_tmp_cast_3;
							sv2v_tmp_cast_3 = 2'b00;
							id_ex_pipe_o[175-:2] <= sv2v_tmp_cast_3;
						end
						id_ex_pipe_o[173] <= 1'b0;
						id_ex_pipe_o[172] <= 1'b0;
						id_ex_pipe_o[171-:2] <= 2'b00;
						id_ex_pipe_o[169] <= 1'b0;
						id_ex_pipe_o[168-:6] <= 6'b000000;
						id_ex_pipe_o[162] <= 1'b0;
						id_ex_pipe_o[161] <= 1'b0;
						id_ex_pipe_o[160] <= 1'b0;
						id_ex_pipe_o[159] <= 1'b0;
						id_ex_pipe_o[158] <= 1'b0;
						id_ex_pipe_o[157] <= 1'b0;
						id_ex_pipe_o[156] <= 1'b0;
						id_ex_pipe_o[155] <= 1'b0;
						id_ex_pipe_o[154] <= 1'b0;
						id_ex_pipe_o[39] <= 1'b0;
						id_ex_pipe_o[38-:36] <= 1'sb0;
						id_ex_pipe_o[41-:2] <= 2'b11;
						id_ex_pipe_o[153] <= 1'b0;
						id_ex_pipe_o[120] <= 1'b0;
						id_ex_pipe_o[119-:5] <= 1'sb0;
						id_ex_pipe_o[114-:32] <= 32'b00000000000000000000000000000000;
						id_ex_pipe_o[82-:35] <= cv32e40x_pkg_INST_RESP_RESET_VAL;
						id_ex_pipe_o[47-:5] <= 1'sb0;
						id_ex_pipe_o[152-:32] <= 1'sb0;
						id_ex_pipe_o[2] <= 1'b0;
						id_ex_pipe_o[1] <= 1'b0;
						id_ex_pipe_o[0] <= 1'b0;
					end
					else if (id_valid_o && ex_ready_i) begin
						id_ex_pipe_o[41-:2] <= if_id_pipe_i[100-:2];
						id_ex_pipe_o[42] <= 1'b1;
						id_ex_pipe_o[1] <= last_op_o;
						id_ex_pipe_o[2] <= first_op_o;
						id_ex_pipe_o[0] <= abort_op_o;
						if (alu_op_a_mux_sel != 2'b11)
							id_ex_pipe_o[343-:32] <= operand_a;
						if (alu_op_b_mux_sel != 2'b10)
							id_ex_pipe_o[311-:32] <= operand_b;
						if (op_c_mux_sel != 2'b10)
							id_ex_pipe_o[279-:32] <= operand_c;
						id_ex_pipe_o[352] <= alu_en;
						if (alu_en) begin
							id_ex_pipe_o[351] <= alu_bch;
							id_ex_pipe_o[350] <= alu_jmp;
						end
						if (alu_en || div_en)
							id_ex_pipe_o[349-:6] <= alu_operator;
						id_ex_pipe_o[243] <= div_en;
						if (div_en)
							id_ex_pipe_o[242-:2] <= div_operator;
						id_ex_pipe_o[247] <= mul_en;
						if (mul_en) begin
							id_ex_pipe_o[246] <= mul_operator;
							id_ex_pipe_o[245-:2] <= mul_signed_mode;
						end
						if (mul_en || div_en) begin
							id_ex_pipe_o[240-:32] <= operand_a_fw;
							id_ex_pipe_o[208-:32] <= operand_b_fw;
						end
						id_ex_pipe_o[176] <= csr_en;
						if (csr_en)
							id_ex_pipe_o[175-:2] <= csr_op;
						id_ex_pipe_o[173] <= lsu_en;
						if (lsu_en) begin
							id_ex_pipe_o[172] <= lsu_we;
							id_ex_pipe_o[171-:2] <= lsu_size;
							id_ex_pipe_o[169] <= lsu_sext;
							id_ex_pipe_o[168-:6] <= lsu_atop;
						end
						id_ex_pipe_o[162] <= sys_en;
						if (sys_en) begin
							id_ex_pipe_o[161] <= sys_dret_insn;
							id_ex_pipe_o[160] <= sys_ebrk_insn;
							id_ex_pipe_o[159] <= sys_ecall_insn;
							id_ex_pipe_o[158] <= sys_fence_insn;
							id_ex_pipe_o[157] <= sys_fencei_insn;
							id_ex_pipe_o[156] <= sys_mret_insn;
							id_ex_pipe_o[155] <= sys_wfi_insn;
							id_ex_pipe_o[154] <= sys_wfe_insn;
						end
						id_ex_pipe_o[153] <= illegal_insn && !xif_insn_accept;
						id_ex_pipe_o[120] <= rf_we;
						if (rf_we)
							id_ex_pipe_o[119-:5] <= rf_waddr;
						id_ex_pipe_o[114-:32] <= if_id_pipe_i[149-:32];
						id_ex_pipe_o[47-:5] <= if_id_pipe_i[154-:5];
						if (if_id_pipe_i[154]) begin
							id_ex_pipe_o[82-:32] <= {16'h0000, if_id_pipe_i[117-:16]};
							id_ex_pipe_o[50] <= if_id_pipe_i[157];
							id_ex_pipe_o[49-:2] <= if_id_pipe_i[156-:2];
						end
						else
							id_ex_pipe_o[82-:35] <= if_id_pipe_i[189-:35];
						id_ex_pipe_o[152-:32] <= if_id_pipe_i[98-:32];
						id_ex_pipe_o[39] <= xif_en;
						id_ex_pipe_o[35-:32] <= if_id_pipe_i[66-:32];
						id_ex_pipe_o[38] <= xif_exception;
						id_ex_pipe_o[37] <= xif_loadstore;
						id_ex_pipe_o[36] <= xif_dualwrite;
						id_ex_pipe_o[3] <= xif_insn_accept;
					end
					else if (ex_ready_i)
						id_ex_pipe_o[42] <= 1'b0;
				end
				assign alu_jmp_o = alu_jmp;
				assign alu_jmpr_o = alu_jmpr;
				assign csr_en_raw_o = csr_en_raw;
				assign alu_en_o = alu_en;
				assign sys_en_o = sys_en;
				assign id_ready_o = ctrl_fsm_i[15] || ((ex_ready_i && !ctrl_fsm_i[20]) && !xif_waiting);
				assign id_valid_o = instr_valid && !xif_waiting;
				assign first_op_o = if_id_pipe_i[2];
				assign last_op_o = ((sys_en && sys_mret_insn) && mcause_i[30] ? 1'b0 : if_id_pipe_i[1]);
				assign abort_op_o = if_id_pipe_i[0] || ctrl_byp_i[3];
				if (X_EXT) begin : x_ext
					reg xif_accepted_q;
					reg xif_rejected_q;
					assign xif_en = xif_insn_accept || xif_insn_reject;
					always @(posedge clk or negedge rst_n) begin : ID_XIF_STATE_REGISTERS
						if (rst_n == 1'b0) begin
							xif_accepted_q <= 1'b0;
							xif_rejected_q <= 1'b0;
						end
						else if ((id_valid_o && ex_ready_i) || ctrl_fsm_i[15]) begin
							xif_accepted_q <= 1'b0;
							xif_rejected_q <= 1'b0;
						end
						else begin
							xif_accepted_q <= xif_insn_accept;
							xif_rejected_q <= xif_insn_reject;
						end
					end
					assign greyhound_soc.ext_if.issue_valid = (instr_valid && (illegal_insn || csr_en)) && !((xif_accepted_q || xif_rejected_q) || ctrl_byp_i[4]);
					assign xif_offloading_o = (greyhound_soc.ext_if.issue_valid || xif_accepted_q) || xif_rejected_q;
					wire [((38 + ((32'd2 * 32'd32) + 8)) >= (6 + ((32'd2 * 32'd32) + 9)) ? ((38 + ((32'd2 * 32'd32) + 8)) - (6 + ((32'd2 * 32'd32) + 9))) + 1 : ((6 + ((32'd2 * 32'd32) + 9)) - (38 + ((32'd2 * 32'd32) + 8))) + 1) * 1:1] sv2v_tmp_1F5E0;
					assign sv2v_tmp_1F5E0 = instr;
					always @(*) greyhound_soc.ext_if.issue_req[38 + ((32'd2 * 32'd32) + 8)-:((38 + ((32'd2 * 32'd32) + 8)) >= (6 + ((32'd2 * 32'd32) + 9)) ? ((38 + ((32'd2 * 32'd32) + 8)) - (6 + ((32'd2 * 32'd32) + 9))) + 1 : ((6 + ((32'd2 * 32'd32) + 9)) - (38 + ((32'd2 * 32'd32) + 8))) + 1)] = sv2v_tmp_1F5E0;
					wire [((6 + ((32'd2 * 32'd32) + 8)) >= (32'd4 + ((32'd2 * 32'd32) + 9)) ? ((6 + ((32'd2 * 32'd32) + 8)) - (32'd4 + ((32'd2 * 32'd32) + 9))) + 1 : ((32'd4 + ((32'd2 * 32'd32) + 9)) - (6 + ((32'd2 * 32'd32) + 8))) + 1) * 1:1] sv2v_tmp_AAF3B;
					assign sv2v_tmp_AAF3B = 2'b11;
					always @(*) greyhound_soc.ext_if.issue_req[6 + ((32'd2 * 32'd32) + 8)-:((6 + ((32'd2 * 32'd32) + 8)) >= (32'd4 + ((32'd2 * 32'd32) + 9)) ? ((6 + ((32'd2 * 32'd32) + 8)) - (32'd4 + ((32'd2 * 32'd32) + 9))) + 1 : ((32'd4 + ((32'd2 * 32'd32) + 9)) - (6 + ((32'd2 * 32'd32) + 8))) + 1)] = sv2v_tmp_AAF3B;
					wire [((32'd4 + ((32'd2 * 32'd32) + 8)) >= ((32'd2 * 32'd32) + 9) ? ((32'd4 + ((32'd2 * 32'd32) + 8)) - ((32'd2 * 32'd32) + 9)) + 1 : (((32'd2 * 32'd32) + 9) - (32'd4 + ((32'd2 * 32'd32) + 8))) + 1) * 1:1] sv2v_tmp_2F370;
					assign sv2v_tmp_2F370 = if_id_pipe_i[66-:32];
					always @(*) greyhound_soc.ext_if.issue_req[32'd4 + ((32'd2 * 32'd32) + 8)-:((32'd4 + ((32'd2 * 32'd32) + 8)) >= ((32'd2 * 32'd32) + 9) ? ((32'd4 + ((32'd2 * 32'd32) + 8)) - ((32'd2 * 32'd32) + 9)) + 1 : (((32'd2 * 32'd32) + 9) - (32'd4 + ((32'd2 * 32'd32) + 8))) + 1)] = sv2v_tmp_2F370;
					always @(*) begin
						if (_sv2v_0)
							;
						greyhound_soc.ext_if.issue_req[(32'd2 * 32'd32) + 8-:(((32'd2 * 32'd32) + 8) >= 9 ? (32'd2 * 32'd32) - 0 : 10 - ((32'd2 * 32'd32) + 8))] = 1'sb0;
						greyhound_soc.ext_if.issue_req[8-:2] = 1'sb0;
						greyhound_soc.ext_if.issue_req[((32'd2 * 32'd32) + 8) - ((32'd2 * 32'd32) - 1)+:32'd32] = operand_a_fw;
						greyhound_soc.ext_if.issue_req[7] = !rf_illegal_raddr[0];
						greyhound_soc.ext_if.issue_req[((32'd2 * 32'd32) + 8) - ((32'd2 * 32'd32) - 33)+:32'd32] = operand_b_fw;
						greyhound_soc.ext_if.issue_req[8] = !rf_illegal_raddr[1];
						begin : sv2v_autoblock_5
							integer i;
							for (i = 2; (i < 32'd2) && (i < REGFILE_NUM_READ_PORTS); i = i + 1)
								begin
									greyhound_soc.ext_if.issue_req[((32'd2 * 32'd32) + 8) - (((32'd2 * 32'd32) - 1) - (i * 32'd32))+:32'd32] = rf_rdata_i[((REGFILE_NUM_READ_PORTS - 1) - i) * cv32e40x_pkg_REGFILE_DATA_WIDTH+:cv32e40x_pkg_REGFILE_DATA_WIDTH];
									greyhound_soc.ext_if.issue_req[7 + i] = !rf_illegal_raddr[i];
								end
						end
					end
					wire [6:1] sv2v_tmp_E0E82;
					assign sv2v_tmp_E0E82 = 6'b111111;
					always @(*) greyhound_soc.ext_if.issue_req[6-:6] = sv2v_tmp_E0E82;
					wire [1:1] sv2v_tmp_4295B;
					assign sv2v_tmp_4295B = 1'b1;
					always @(*) greyhound_soc.ext_if.issue_req[0] = sv2v_tmp_4295B;
					assign xif_waiting = ((greyhound_soc.ext_if.issue_valid && !greyhound_soc.ext_if.issue_ready) && !xif_accepted_q) && !xif_rejected_q;
					assign xif_insn_accept = ((greyhound_soc.ext_if.issue_valid && greyhound_soc.ext_if.issue_ready) && greyhound_soc.ext_if.issue_resp[8]) || xif_accepted_q;
					assign xif_insn_reject = ((greyhound_soc.ext_if.issue_valid && greyhound_soc.ext_if.issue_ready) && !greyhound_soc.ext_if.issue_resp[8]) || xif_rejected_q;
					assign xif_we = greyhound_soc.ext_if.issue_valid && greyhound_soc.ext_if.issue_resp[7];
					assign xif_exception = greyhound_soc.ext_if.issue_valid && greyhound_soc.ext_if.issue_resp[0];
					assign xif_dualwrite = greyhound_soc.ext_if.issue_valid && greyhound_soc.ext_if.issue_resp[6];
					assign xif_loadstore = greyhound_soc.ext_if.issue_valid && greyhound_soc.ext_if.issue_resp[2];
				end
				else begin : no_x_ext
					assign xif_en = 1'b0;
					assign xif_waiting = 1'b0;
					assign xif_insn_accept = 1'b0;
					assign xif_insn_reject = 1'b0;
					assign xif_we = 1'b0;
					assign xif_exception = 1'b0;
					assign xif_dualwrite = 1'b0;
					assign xif_loadstore = 1'b0;
					assign greyhound_soc.ext_if.issue_valid = 1'b0;
					wire [((38 + ((32'd2 * 32'd32) + 8)) >= (6 + ((32'd2 * 32'd32) + 9)) ? ((38 + ((32'd2 * 32'd32) + 8)) - (6 + ((32'd2 * 32'd32) + 9))) + 1 : ((6 + ((32'd2 * 32'd32) + 9)) - (38 + ((32'd2 * 32'd32) + 8))) + 1) * 1:1] sv2v_tmp_9ACD5;
					assign sv2v_tmp_9ACD5 = 1'sb0;
					always @(*) greyhound_soc.ext_if.issue_req[38 + ((32'd2 * 32'd32) + 8)-:((38 + ((32'd2 * 32'd32) + 8)) >= (6 + ((32'd2 * 32'd32) + 9)) ? ((38 + ((32'd2 * 32'd32) + 8)) - (6 + ((32'd2 * 32'd32) + 9))) + 1 : ((6 + ((32'd2 * 32'd32) + 9)) - (38 + ((32'd2 * 32'd32) + 8))) + 1)] = sv2v_tmp_9ACD5;
					wire [((6 + ((32'd2 * 32'd32) + 8)) >= (32'd4 + ((32'd2 * 32'd32) + 9)) ? ((6 + ((32'd2 * 32'd32) + 8)) - (32'd4 + ((32'd2 * 32'd32) + 9))) + 1 : ((32'd4 + ((32'd2 * 32'd32) + 9)) - (6 + ((32'd2 * 32'd32) + 8))) + 1) * 1:1] sv2v_tmp_62B8B;
					assign sv2v_tmp_62B8B = 1'sb0;
					always @(*) greyhound_soc.ext_if.issue_req[6 + ((32'd2 * 32'd32) + 8)-:((6 + ((32'd2 * 32'd32) + 8)) >= (32'd4 + ((32'd2 * 32'd32) + 9)) ? ((6 + ((32'd2 * 32'd32) + 8)) - (32'd4 + ((32'd2 * 32'd32) + 9))) + 1 : ((32'd4 + ((32'd2 * 32'd32) + 9)) - (6 + ((32'd2 * 32'd32) + 8))) + 1)] = sv2v_tmp_62B8B;
					wire [((32'd4 + ((32'd2 * 32'd32) + 8)) >= ((32'd2 * 32'd32) + 9) ? ((32'd4 + ((32'd2 * 32'd32) + 8)) - ((32'd2 * 32'd32) + 9)) + 1 : (((32'd2 * 32'd32) + 9) - (32'd4 + ((32'd2 * 32'd32) + 8))) + 1) * 1:1] sv2v_tmp_06F8A;
					assign sv2v_tmp_06F8A = 1'sb0;
					always @(*) greyhound_soc.ext_if.issue_req[32'd4 + ((32'd2 * 32'd32) + 8)-:((32'd4 + ((32'd2 * 32'd32) + 8)) >= ((32'd2 * 32'd32) + 9) ? ((32'd4 + ((32'd2 * 32'd32) + 8)) - ((32'd2 * 32'd32) + 9)) + 1 : (((32'd2 * 32'd32) + 9) - (32'd4 + ((32'd2 * 32'd32) + 8))) + 1)] = sv2v_tmp_06F8A;
					wire [(((32'd2 * 32'd32) + 8) >= 9 ? (32'd2 * 32'd32) - 0 : 10 - ((32'd2 * 32'd32) + 8)) * 1:1] sv2v_tmp_8F7C5;
					assign sv2v_tmp_8F7C5 = 1'sb0;
					always @(*) greyhound_soc.ext_if.issue_req[(32'd2 * 32'd32) + 8-:(((32'd2 * 32'd32) + 8) >= 9 ? (32'd2 * 32'd32) - 0 : 10 - ((32'd2 * 32'd32) + 8))] = sv2v_tmp_8F7C5;
					wire [2:1] sv2v_tmp_3A53A;
					assign sv2v_tmp_3A53A = 1'sb0;
					always @(*) greyhound_soc.ext_if.issue_req[8-:2] = sv2v_tmp_3A53A;
					wire [6:1] sv2v_tmp_0A6AA;
					assign sv2v_tmp_0A6AA = 1'sb0;
					always @(*) greyhound_soc.ext_if.issue_req[6-:6] = sv2v_tmp_0A6AA;
					wire [1:1] sv2v_tmp_7B338;
					assign sv2v_tmp_7B338 = 1'sb0;
					always @(*) greyhound_soc.ext_if.issue_req[0] = sv2v_tmp_7B338;
					assign xif_offloading_o = 1'b0;
					wire unused_xif_signals;
					assign unused_xif_signals = xif_insn_reject | (|rf_illegal_raddr);
				end
				initial _sv2v_0 = 0;
			end
			assign id_stage_i.clk = clk;
			assign id_stage_i.rst_n = rst_ni;
			assign jump_target_id = id_stage_i.jmp_target_o;
			assign id_stage_i.if_id_pipe_i = if_id_pipe;
			assign id_ex_pipe = id_stage_i.id_ex_pipe_o;
			assign id_stage_i.ex_wb_pipe_i = ex_wb_pipe;
			assign id_stage_i.ctrl_byp_i = ctrl_byp;
			assign id_stage_i.ctrl_fsm_i = ctrl_fsm;
			assign id_stage_i.mcause_i = mcause;
			assign id_stage_i.jvt_addr_i = jvt_addr;
			assign id_stage_i.rf_wdata_ex_i = rf_wdata_ex;
			assign id_stage_i.rf_wdata_wb_i = rf_wdata_wb;
			assign alu_jmp_id = id_stage_i.alu_jmp_o;
			assign alu_jmpr_id = id_stage_i.alu_jmpr_o;
			assign sys_mret_insn_id = id_stage_i.sys_mret_insn_o;
			assign csr_en_raw_id = id_stage_i.csr_en_raw_o;
			assign alu_en_id = id_stage_i.alu_en_o;
			assign sys_en_id = id_stage_i.sys_en_o;
			assign first_op_id = id_stage_i.first_op_o;
			assign last_op_id = id_stage_i.last_op_o;
			assign abort_op_id = id_stage_i.abort_op_o;
			assign rf_re_id = id_stage_i.rf_re_o;
			assign rf_raddr_id = id_stage_i.rf_raddr_o;
			assign id_stage_i.rf_rdata_i = rf_rdata_id;
			assign id_ready = id_stage_i.id_ready_o;
			assign id_valid = id_stage_i.id_valid_o;
			assign id_stage_i.ex_ready_i = ex_ready;
			assign xif_offloading_id = id_stage_i.xif_offloading_o;
			cv32e40x_ex_stage #(
				.X_EXT(X_EXT),
				.B_EXT(B_EXT),
				.M_EXT(M_EXT)
			) ex_stage_i(
				.clk(clk),
				.rst_n(rst_ni),
				.id_ex_pipe_i(id_ex_pipe),
				.ex_wb_pipe_o(ex_wb_pipe),
				.ctrl_fsm_i(ctrl_fsm),
				.csr_rdata_i(csr_rdata),
				.csr_illegal_i(csr_illegal),
				.csr_mnxti_read_i(csr_mnxti_read),
				.csr_hz_i(csr_hz),
				.branch_decision_o(branch_decision_ex),
				.branch_target_o(branch_target_ex),
				.xif_csr_error_o(xif_csr_error_ex),
				.rf_wdata_o(rf_wdata_ex),
				.lsu_valid_i(lsu_valid_0),
				.lsu_ready_o(lsu_ready_ex),
				.lsu_valid_o(lsu_valid_ex),
				.lsu_ready_i(lsu_ready_0),
				.lsu_split_i(lsu_split_ex),
				.lsu_last_op_i(lsu_last_op_ex),
				.lsu_first_op_i(lsu_first_op_ex),
				.ex_ready_o(ex_ready),
				.ex_valid_o(ex_valid),
				.wb_ready_i(wb_ready),
				.last_op_o(last_op_ex)
			);
			localparam _param_4F0EC_A_EXT = A_EXT;
			localparam _param_4F0EC_X_EXT = X_EXT;
			localparam _param_4F0EC_X_ID_WIDTH = X_ID_WIDTH;
			localparam _param_4F0EC_PMA_NUM_REGIONS = PMA_NUM_REGIONS;
			localparam _param_4F0EC_PMA_CFG = PMA_CFG;
			localparam _param_4F0EC_DBG_NUM_TRIGGERS = DBG_NUM_TRIGGERS;
			localparam _param_4F0EC_DEBUG = DEBUG;
			localparam _param_4F0EC_DM_REGION_START = DM_REGION_START;
			localparam _param_4F0EC_DM_REGION_END = DM_REGION_END;
			if (1) begin : load_store_unit_i
				reg _sv2v_0;
				localparam [1:0] A_EXT = _param_4F0EC_A_EXT;
				localparam [0:0] X_EXT = _param_4F0EC_X_EXT;
				localparam [31:0] X_ID_WIDTH = _param_4F0EC_X_ID_WIDTH;
				localparam signed [31:0] PMA_NUM_REGIONS = _param_4F0EC_PMA_NUM_REGIONS;
				localparam [67:0] cv32e40x_pkg_PMA_R_DEFAULT = 68'h00000000000000000;
				localparam [407:0] PMA_CFG = _param_4F0EC_PMA_CFG;
				localparam signed [31:0] DBG_NUM_TRIGGERS = _param_4F0EC_DBG_NUM_TRIGGERS;
				localparam [0:0] DEBUG = _param_4F0EC_DEBUG;
				localparam [31:0] DM_REGION_START = _param_4F0EC_DM_REGION_START;
				localparam [31:0] DM_REGION_END = _param_4F0EC_DM_REGION_END;
				wire clk;
				wire rst_n;
				wire [200:0] ctrl_fsm_i;
				localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
				localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
				localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
				localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
				localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
				localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
				wire [352:0] id_ex_pipe_i;
				wire busy_o;
				wire bus_busy_o;
				wire interruptible_o;
				wire [31:0] trigger_match_0_i;
				reg lsu_split_0_o;
				wire lsu_first_op_0_o;
				wire lsu_last_op_0_o;
				wire [1:0] lsu_atomic_0_o;
				wire [31:0] lsu_addr_o;
				wire lsu_we_o;
				wire [3:0] lsu_be_o;
				wire [1:0] lsu_err_1_o;
				wire [31:0] lsu_rdata_1_o;
				wire [1:0] lsu_mpu_status_1_o;
				wire [31:0] lsu_wpt_match_1_o;
				wire [1:0] lsu_align_status_1_o;
				wire [1:0] lsu_atomic_1_o;
				wire [1:0] priv_lvl_lsu_i;
				wire valid_0_i;
				wire ready_0_o;
				wire valid_0_o;
				wire ready_0_i;
				wire valid_1_i;
				wire ready_1_o;
				wire valid_1_o;
				wire ready_1_i;
				localparam DEPTH = 2;
				localparam cv32e40x_pkg_DATA_ADDR_WIDTH = 32;
				localparam cv32e40x_pkg_DATA_DATA_WIDTH = 32;
				reg [76:0] trans;
				wire trans_valid;
				wire trans_ready;
				wire wpt_trans_valid;
				wire wpt_trans_ready;
				wire wpt_trans_pushpop;
				reg [80:0] wpt_trans;
				wire alcheck_trans_valid;
				wire alcheck_trans_ready;
				wire [80:0] alcheck_trans;
				wire mpu_trans_valid;
				wire mpu_trans_ready;
				wire mpu_trans_pushpop;
				wire mpu_trans_atomic;
				wire [80:0] mpu_trans;
				wire resp_valid;
				wire [31:0] resp_rdata;
				wire [70:0] resp;
				wire wpt_resp_valid;
				wire [31:0] wpt_resp_rdata;
				wire [70:0] wpt_resp;
				wire alcheck_resp_valid;
				wire [70:0] alcheck_resp;
				wire mpu_resp_valid;
				wire [70:0] mpu_resp;
				wire buffer_trans_valid;
				wire buffer_trans_ready;
				wire [80:0] buffer_trans;
				wire filter_trans_valid;
				wire filter_trans_ready;
				wire [80:0] filter_trans;
				wire filter_resp_valid;
				wire [34:0] filter_resp;
				wire bus_trans_valid;
				wire bus_trans_ready;
				wire [80:0] bus_trans;
				wire bus_resp_valid;
				wire [34:0] bus_resp;
				reg [1:0] cnt_q;
				reg [1:0] next_cnt;
				wire count_up;
				wire count_down;
				wire cnt_is_one_next;
				wire ctrl_update;
				reg [1:0] lsu_size_q;
				reg lsu_sext_q;
				reg lsu_we_q;
				reg [1:0] rdata_offset_q;
				reg last_q;
				reg [3:0] be;
				reg [31:0] wdata;
				reg split_q;
				reg nonsplit_misaligned_halfword;
				wire misaligned_access;
				wire modified_access;
				wire filter_resp_busy;
				reg [31:0] rdata_q;
				wire done_0;
				reg trans_valid_q;
				wire xif_req;
				wire xif_mpu_err;
				wire [31:0] xif_wpt_match;
				wire xif_ready_1;
				reg xif_res_q;
				reg [3:0] xif_id_q;
				wire align_check_en;
				wire consumer_resp_wait;
				assign xif_req = X_EXT && greyhound_soc.ext_if.mem_valid;
				always @(*) begin
					if (_sv2v_0)
						;
					trans[76-:32] = (id_ex_pipe_i[168] ? id_ex_pipe_i[343-:32] : id_ex_pipe_i[343-:32] + id_ex_pipe_i[311-:32]);
					trans[36] = id_ex_pipe_i[172];
					trans[44-:2] = id_ex_pipe_i[171-:2];
					trans[34-:32] = id_ex_pipe_i[279-:32];
					trans[2-:2] = priv_lvl_lsu_i;
					trans[0] = ctrl_fsm_i[147];
					trans[42-:6] = id_ex_pipe_i[168-:6];
					trans[35] = id_ex_pipe_i[169];
				end
				assign lsu_addr_o = wpt_trans[80-:32];
				assign lsu_we_o = wpt_trans[42];
				assign lsu_be_o = be;
				always @(*) begin
					if (_sv2v_0)
						;
					case (trans[44-:2])
						2'b00:
							case (trans[46:45])
								2'b00: be = 4'b0001;
								2'b01: be = 4'b0010;
								2'b10: be = 4'b0100;
								2'b11: be = 4'b1000;
								default:
									;
							endcase
						2'b01:
							if (split_q == 1'b0)
								case (trans[46:45])
									2'b00: be = 4'b0011;
									2'b01: be = 4'b0110;
									2'b10: be = 4'b1100;
									2'b11: be = 4'b1000;
									default:
										;
								endcase
							else
								be = 4'b0001;
						default:
							if (split_q == 1'b0)
								case (trans[46:45])
									2'b00: be = 4'b1111;
									2'b01: be = 4'b1110;
									2'b10: be = 4'b1100;
									2'b11: be = 4'b1000;
									default:
										;
								endcase
							else
								case (trans[46:45])
									2'b00: be = 4'b0000;
									2'b01: be = 4'b0001;
									2'b10: be = 4'b0011;
									2'b11: be = 4'b0111;
									default:
										;
								endcase
					endcase
				end
				always @(*) begin
					if (_sv2v_0)
						;
					case (trans[46:45])
						2'b00: wdata = trans[34:3];
						2'b01: wdata = {trans[26:3], trans[34:27]};
						2'b10: wdata = {trans[18:3], trans[34:19]};
						2'b11: wdata = {trans[10:3], trans[34:11]};
						default:
							;
					endcase
				end
				always @(posedge clk or negedge rst_n)
					if (rst_n == 1'b0) begin
						lsu_size_q <= 2'b00;
						lsu_sext_q <= 1'b0;
						lsu_we_q <= 1'b0;
						rdata_offset_q <= 2'b00;
						last_q <= 1'b0;
					end
					else if (ctrl_update) begin
						if (xif_req) begin
							lsu_size_q <= 2'b10;
							lsu_sext_q <= 1'b0;
							lsu_we_q <= greyhound_soc.ext_if.mem_req[43];
							rdata_offset_q <= 1'sb0;
						end
						else begin
							lsu_size_q <= trans[44-:2];
							lsu_sext_q <= trans[35];
							lsu_we_q <= trans[36];
							rdata_offset_q <= trans[46:45];
						end
						last_q <= (lsu_split_0_o ? 1'b0 : 1'b1);
					end
				always @(posedge clk or negedge rst_n)
					if (rst_n == 1'b0)
						split_q <= 1'b0;
					else if (!valid_0_i && !xif_req)
						split_q <= 1'b0;
					else if (ctrl_update)
						split_q <= lsu_split_0_o;
				if (X_EXT) begin : x_ext_regs
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0) begin
							xif_res_q <= 1'sb0;
							xif_id_q <= 1'sb0;
						end
						else if (ctrl_update) begin
							xif_res_q <= xif_req;
							xif_id_q <= greyhound_soc.ext_if.mem_req[81-:4];
						end
				end
				else begin : no_x_ext_regs
					wire [1:1] sv2v_tmp_6DB0E;
					assign sv2v_tmp_6DB0E = 1'b0;
					always @(*) xif_res_q = sv2v_tmp_6DB0E;
					wire [4:1] sv2v_tmp_BA034;
					assign sv2v_tmp_BA034 = 1'sb0;
					always @(*) xif_id_q = sv2v_tmp_BA034;
				end
				reg [31:0] rdata_ext;
				wire [63:0] rdata_full;
				wire [63:0] rdata_aligned;
				wire rdata_is_split;
				assign rdata_is_split = ((lsu_size_q == 2'b10) && (rdata_offset_q != 2'b00)) || ((lsu_size_q == 2'b01) && (rdata_offset_q == 2'b11));
				assign rdata_full = (rdata_is_split ? {resp_rdata, rdata_q} : {resp_rdata, resp_rdata});
				assign rdata_aligned = rdata_full >> (8 * rdata_offset_q);
				always @(*) begin
					if (_sv2v_0)
						;
					case (lsu_size_q)
						2'b00: rdata_ext = {{24 {lsu_sext_q && rdata_aligned[7]}}, rdata_aligned[7:0]};
						2'b01: rdata_ext = {{16 {lsu_sext_q && rdata_aligned[15]}}, rdata_aligned[15:0]};
						default: rdata_ext = rdata_aligned[31:0];
					endcase
				end
				always @(posedge clk or negedge rst_n)
					if (rst_n == 1'b0)
						rdata_q <= 1'sb0;
					else if (resp_valid && !lsu_we_q) begin
						if (split_q || lsu_split_0_o)
							rdata_q <= resp_rdata;
						else
							rdata_q <= rdata_ext;
					end
				if (1) begin : a_ext
					reg [1:0] lsu_atomic_q;
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0)
							lsu_atomic_q <= 2'b00;
						else if (ctrl_update) begin
							if (xif_req)
								lsu_atomic_q <= 2'b00;
							else
								lsu_atomic_q <= lsu_atomic_0_o;
						end
					assign lsu_atomic_0_o = (!trans[42] ? 2'b00 : (trans[41:37] == 5'h02 ? 2'b01 : (trans[41:37] == 5'h03 ? 2'b10 : 2'b11)));
					assign lsu_atomic_1_o = lsu_atomic_q;
					assign lsu_rdata_1_o = (lsu_atomic_q == 2'b10 ? {{31 {1'b0}}, !resp[36]} : rdata_ext);
				end
				assign misaligned_access = ((split_q || lsu_split_0_o) || nonsplit_misaligned_halfword) || (xif_req && greyhound_soc.ext_if.mem_req[35]);
				assign modified_access = (split_q || lsu_split_0_o) || (xif_req && greyhound_soc.ext_if.mem_req[34]);
				always @(*) begin
					if (_sv2v_0)
						;
					lsu_split_0_o = 1'b0;
					nonsplit_misaligned_halfword = 1'b0;
					if ((valid_0_i && !xif_req) && !split_q)
						case (trans[44-:2])
							2'b10:
								if (trans[46:45] != 2'b00)
									lsu_split_0_o = 1'b1;
							2'b01: begin
								if (trans[46:45] == 2'b11)
									lsu_split_0_o = 1'b1;
								if (trans[45] != 1'b0)
									nonsplit_misaligned_halfword = 1'b1;
							end
							default:
								;
						endcase
				end
				assign lsu_last_op_0_o = !lsu_split_0_o;
				assign lsu_first_op_0_o = !split_q;
				assign busy_o = (filter_resp_busy || (cnt_q > 0)) || trans_valid;
				always @(*) begin
					if (_sv2v_0)
						;
					if (xif_req) begin
						wpt_trans[80-:32] = greyhound_soc.ext_if.mem_req[77-:32];
						wpt_trans[42] = greyhound_soc.ext_if.mem_req[43];
						wpt_trans[41-:4] = greyhound_soc.ext_if.mem_req[39-:4];
						wpt_trans[37-:32] = greyhound_soc.ext_if.mem_req[33-:32];
						wpt_trans[48-:6] = 1'sb0;
						wpt_trans[3-:3] = {greyhound_soc.ext_if.mem_req[45-:2], 1'b1};
						wpt_trans[0] = 1'sb0;
						wpt_trans[5-:2] = 2'b00;
					end
					else begin
						wpt_trans[80-:32] = (trans[42] ? trans[76-:32] : (split_q ? {trans[76:47], 2'b00} + 'h4 : trans[76-:32]));
						wpt_trans[42] = trans[36];
						wpt_trans[41-:4] = be;
						wpt_trans[37-:32] = wdata;
						wpt_trans[48-:6] = trans[42-:6];
						wpt_trans[3-:3] = {trans[2-:2], 1'b1};
						wpt_trans[0] = trans[0];
						wpt_trans[5-:2] = 2'b00;
					end
				end
				assign wpt_trans_valid = trans_valid;
				assign trans_ready = wpt_trans_ready;
				assign wpt_trans_pushpop = id_ex_pipe_i[43];
				assign trans_valid = (valid_0_i || xif_req) && (cnt_q < DEPTH);
				assign ready_1_o = (cnt_q == 2'b00 ? 1'b1 : resp_valid) && ready_1_i;
				assign xif_ready_1 = (cnt_q == 2'b00 ? 1'b1 : resp_valid);
				assign valid_1_o = (resp_valid && valid_1_i) && !xif_res_q;
				assign greyhound_soc.ext_if.mem_result_valid = (last_q && resp_valid) && xif_res_q;
				assign done_0 = (!(valid_0_i || xif_req) ? 1'b1 : (cnt_q == 2'b00 ? trans_valid && trans_ready : (cnt_q == 2'b01 ? trans_valid && trans_ready : 1'b1))) && (ready_0_i || (xif_req && xif_ready_1));
				assign valid_0_o = ((cnt_q == 2'b00 ? trans_valid && trans_ready : (cnt_q == 2'b01 ? trans_valid && trans_ready : 1'b1)) && valid_0_i) && !xif_req;
				assign ready_0_o = (done_0 && !lsu_split_0_o) && !xif_req;
				if (X_EXT) begin : x_ext_mem_ready
					assign greyhound_soc.ext_if.mem_ready = done_0 && !lsu_split_0_o;
				end
				else begin : no_x_ext_mem_ready
					assign greyhound_soc.ext_if.mem_ready = 1'b0;
				end
				assign lsu_mpu_status_1_o = resp[35-:2];
				assign lsu_align_status_1_o = resp[1-:2];
				assign ctrl_update = done_0 && (valid_0_i || xif_req);
				assign count_up = trans_valid && trans_ready;
				assign count_down = resp_valid;
				always @(*) begin
					if (_sv2v_0)
						;
					case ({count_up, count_down})
						2'b00: next_cnt = cnt_q;
						2'b01: next_cnt = cnt_q - 1'b1;
						2'b10: next_cnt = cnt_q + 1'b1;
						2'b11: next_cnt = cnt_q;
						default:
							;
					endcase
				end
				assign cnt_is_one_next = next_cnt == 2'h1;
				always @(posedge clk or negedge rst_n)
					if (rst_n == 1'b0)
						cnt_q <= 1'sb0;
					else
						cnt_q <= next_cnt;
				always @(posedge clk or negedge rst_n)
					if (rst_n == 1'b0)
						trans_valid_q <= 1'b0;
					else if (trans_valid && !ctrl_update)
						trans_valid_q <= 1'b1;
					else if (ctrl_update)
						trans_valid_q <= 1'b0;
				assign interruptible_o = !trans_valid_q && (cnt_q == {2 {1'sb0}});
				assign lsu_err_1_o[1] = (xif_res_q ? 1'b0 : resp[37]);
				assign lsu_err_1_o[0] = (xif_res_q ? 1'b0 : resp[38]);
				assign consumer_resp_wait = !xif_req;
				if (1) begin : gen_no_wpt
					assign lsu_wpt_match_1_o = resp[33-:32];
					assign mpu_trans_valid = wpt_trans_valid;
					assign mpu_trans = wpt_trans;
					assign mpu_trans_pushpop = wpt_trans_pushpop;
					assign wpt_trans_ready = mpu_trans_ready;
					assign wpt_resp_valid = mpu_resp_valid;
					assign wpt_resp = mpu_resp;
					assign xif_wpt_match = 1'b0;
					assign wpt_resp_rdata = wpt_resp[70-:32];
					assign resp_valid = wpt_resp_valid;
					assign resp_rdata = wpt_resp_rdata;
					assign resp = wpt_resp;
				end
				assign mpu_trans_atomic = mpu_trans[48];
				cv32e40x_mpu_38253_97F3A #(
					.BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH(cv32e40x_pkg_DATA_DATA_WIDTH),
					.CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH(cv32e40x_pkg_DATA_ADDR_WIDTH),
					.CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH(cv32e40x_pkg_DATA_DATA_WIDTH),
					.CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH(cv32e40x_pkg_DATA_DATA_WIDTH),
					.IF_STAGE(0),
					.A_EXT(A_EXT),
					.PMA_NUM_REGIONS(PMA_NUM_REGIONS),
					.PMA_CFG(PMA_CFG),
					.DEBUG(DEBUG),
					.DM_REGION_START(DM_REGION_START),
					.DM_REGION_END(DM_REGION_END)
				) mpu_i(
					.clk(clk),
					.rst_n(rst_n),
					.atomic_access_i(mpu_trans_atomic),
					.misaligned_access_i(misaligned_access),
					.modified_access_i(modified_access),
					.core_one_txn_pend_n(cnt_is_one_next),
					.core_mpu_err_wait_i(consumer_resp_wait),
					.core_mpu_err_o(xif_mpu_err),
					.core_trans_valid_i(mpu_trans_valid),
					.core_trans_pushpop_i(mpu_trans_pushpop),
					.core_trans_ready_o(mpu_trans_ready),
					.core_trans_i(mpu_trans),
					.core_resp_valid_o(mpu_resp_valid),
					.core_resp_o(mpu_resp),
					.bus_trans_valid_o(alcheck_trans_valid),
					.bus_trans_ready_i(alcheck_trans_ready),
					.bus_trans_o(alcheck_trans),
					.bus_resp_valid_i(alcheck_resp_valid),
					.bus_resp_i(alcheck_resp)
				);
				assign align_check_en = alcheck_trans[48];
				cv32e40x_align_check_7FEF3_11A60 #(
					.BUS_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH(cv32e40x_pkg_DATA_DATA_WIDTH),
					.CORE_REQ_TYPE_cv32e40x_pkg_DATA_ADDR_WIDTH(cv32e40x_pkg_DATA_ADDR_WIDTH),
					.CORE_REQ_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH(cv32e40x_pkg_DATA_DATA_WIDTH),
					.CORE_RESP_TYPE_cv32e40x_pkg_DATA_DATA_WIDTH(cv32e40x_pkg_DATA_DATA_WIDTH),
					.IF_STAGE(0)
				) align_check_i(
					.clk(clk),
					.rst_n(rst_n),
					.align_check_en_i(align_check_en),
					.misaligned_access_i(misaligned_access),
					.core_one_txn_pend_n(cnt_is_one_next),
					.core_align_err_wait_i(consumer_resp_wait),
					.core_align_err_o(),
					.core_trans_valid_i(alcheck_trans_valid),
					.core_trans_ready_o(alcheck_trans_ready),
					.core_trans_i(alcheck_trans),
					.core_resp_valid_o(alcheck_resp_valid),
					.core_resp_o(alcheck_resp),
					.bus_trans_valid_o(filter_trans_valid),
					.bus_trans_ready_i(filter_trans_ready),
					.bus_trans_o(filter_trans),
					.bus_resp_valid_i(filter_resp_valid),
					.bus_resp_i(filter_resp)
				);
				cv32e40x_lsu_response_filter response_filter_i(
					.clk(clk),
					.rst_n(rst_n),
					.busy_o(filter_resp_busy),
					.bus_busy_o(bus_busy_o),
					.valid_i(filter_trans_valid),
					.ready_o(filter_trans_ready),
					.trans_i(filter_trans),
					.resp_valid_o(filter_resp_valid),
					.resp_o(filter_resp),
					.valid_o(buffer_trans_valid),
					.ready_i(buffer_trans_ready),
					.trans_o(buffer_trans),
					.resp_valid_i(bus_resp_valid),
					.resp_i(bus_resp)
				);
				cv32e40x_write_buffer #(
					.PMA_NUM_REGIONS(PMA_NUM_REGIONS),
					.PMA_CFG(PMA_CFG)
				) write_buffer_i(
					.clk(clk),
					.rst_n(rst_n),
					.valid_i(buffer_trans_valid),
					.ready_o(buffer_trans_ready),
					.trans_i(buffer_trans),
					.valid_o(bus_trans_valid),
					.ready_i(bus_trans_ready),
					.trans_o(bus_trans)
				);
				if (1) begin : data_obi_i
					wire clk;
					wire rst_n;
					wire trans_valid_i;
					wire trans_ready_o;
					localparam cv32e40x_pkg_DATA_ADDR_WIDTH = 32;
					localparam cv32e40x_pkg_DATA_DATA_WIDTH = 32;
					wire [80:0] trans_i;
					wire resp_valid_o;
					wire [34:0] resp_o;
					assign resp_valid_o = greyhound_soc.cv32e40x_core.m_c_obi_data_if.s_rvalid[0];
					assign resp_o = greyhound_soc.cv32e40x_core.m_c_obi_data_if.resp_payload;
					assign greyhound_soc.cv32e40x_core.m_c_obi_data_if.s_req[0] = trans_valid_i;
					assign greyhound_soc.cv32e40x_core.m_c_obi_data_if.req_payload = trans_i;
					assign trans_ready_o = greyhound_soc.cv32e40x_core.m_c_obi_data_if.s_gnt[0];
				end
				assign data_obi_i.clk = clk;
				assign data_obi_i.rst_n = rst_n;
				assign data_obi_i.trans_valid_i = bus_trans_valid;
				assign bus_trans_ready = data_obi_i.trans_ready_o;
				assign data_obi_i.trans_i = bus_trans;
				assign bus_resp_valid = data_obi_i.resp_valid_o;
				assign bus_resp = data_obi_i.resp_o;
				localparam cv32e40x_pkg_EXC_CAUSE_LOAD_FAULT = 11'h005;
				localparam cv32e40x_pkg_EXC_CAUSE_STORE_FAULT = 11'h007;
				if (X_EXT) begin : x_ext
					assign greyhound_soc.ext_if.mem_resp[7] = xif_mpu_err;
					assign greyhound_soc.ext_if.mem_resp[6-:6] = (xif_mpu_err ? (trans[36] ? cv32e40x_pkg_EXC_CAUSE_STORE_FAULT : cv32e40x_pkg_EXC_CAUSE_LOAD_FAULT) : {6 {1'sb0}});
					assign greyhound_soc.ext_if.mem_resp[0] = |xif_wpt_match;
					assign greyhound_soc.ext_if.mem_result[37-:4] = xif_id_q;
					assign greyhound_soc.ext_if.mem_result[33-:32] = rdata_ext;
					assign greyhound_soc.ext_if.mem_result[1] = resp[37];
					assign greyhound_soc.ext_if.mem_result[0] = 1'sb0;
				end
				else begin : no_x_ext
					assign greyhound_soc.ext_if.mem_resp[7] = 1'sb0;
					assign greyhound_soc.ext_if.mem_resp[6-:6] = 1'sb0;
					assign greyhound_soc.ext_if.mem_resp[0] = 1'sb0;
					assign greyhound_soc.ext_if.mem_result[37-:4] = 1'sb0;
					assign greyhound_soc.ext_if.mem_result[33-:32] = 1'sb0;
					assign greyhound_soc.ext_if.mem_result[1] = 1'sb0;
					assign greyhound_soc.ext_if.mem_result[0] = 1'sb0;
					wire unused_xif_signals;
					assign unused_xif_signals = (|xif_id_q | (|xif_wpt_match)) | xif_mpu_err;
				end
				initial _sv2v_0 = 0;
			end
			assign load_store_unit_i.clk = clk;
			assign load_store_unit_i.rst_n = rst_ni;
			assign load_store_unit_i.id_ex_pipe_i = id_ex_pipe;
			assign load_store_unit_i.ctrl_fsm_i = ctrl_fsm;
			assign lsu_busy = load_store_unit_i.busy_o;
			assign lsu_bus_busy = load_store_unit_i.bus_busy_o;
			assign lsu_interruptible = load_store_unit_i.interruptible_o;
			assign load_store_unit_i.trigger_match_0_i = trigger_match_ex;
			assign lsu_split_ex = load_store_unit_i.lsu_split_0_o;
			assign lsu_first_op_ex = load_store_unit_i.lsu_first_op_0_o;
			assign lsu_last_op_ex = load_store_unit_i.lsu_last_op_0_o;
			assign lsu_atomic_ex = load_store_unit_i.lsu_atomic_0_o;
			assign lsu_addr_ex = load_store_unit_i.lsu_addr_o;
			assign lsu_we_ex = load_store_unit_i.lsu_we_o;
			assign lsu_be_ex = load_store_unit_i.lsu_be_o;
			assign lsu_err_wb = load_store_unit_i.lsu_err_1_o;
			assign lsu_rdata_wb = load_store_unit_i.lsu_rdata_1_o;
			assign lsu_mpu_status_wb = load_store_unit_i.lsu_mpu_status_1_o;
			assign lsu_wpt_match_wb = load_store_unit_i.lsu_wpt_match_1_o;
			assign lsu_align_status_wb = load_store_unit_i.lsu_align_status_1_o;
			assign lsu_atomic_wb = load_store_unit_i.lsu_atomic_1_o;
			assign load_store_unit_i.priv_lvl_lsu_i = priv_lvl_lsu;
			assign load_store_unit_i.valid_0_i = lsu_valid_ex;
			assign lsu_ready_0 = load_store_unit_i.ready_0_o;
			assign lsu_valid_0 = load_store_unit_i.valid_0_o;
			assign load_store_unit_i.ready_0_i = lsu_ready_ex;
			assign load_store_unit_i.valid_1_i = lsu_valid_wb;
			assign lsu_ready_1 = load_store_unit_i.ready_1_o;
			assign lsu_valid_1 = load_store_unit_i.valid_1_o;
			assign load_store_unit_i.ready_1_i = lsu_ready_wb;
			localparam _param_E097E_DEBUG = DEBUG;
			if (1) begin : wb_stage_i
				localparam [0:0] DEBUG = _param_E097E_DEBUG;
				wire clk;
				wire rst_n;
				localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
				localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
				localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
				wire [247:0] ex_wb_pipe_i;
				wire [200:0] ctrl_fsm_i;
				wire [31:0] lsu_rdata_i;
				wire [1:0] lsu_mpu_status_i;
				wire [31:0] lsu_wpt_match_i;
				wire [1:0] lsu_align_status_i;
				wire rf_we_wb_o;
				wire [4:0] rf_waddr_wb_o;
				wire [31:0] rf_wdata_wb_o;
				wire lsu_valid_i;
				wire lsu_ready_o;
				wire lsu_valid_o;
				wire lsu_ready_i;
				wire data_stall_o;
				wire wb_ready_o;
				wire wb_valid_o;
				wire [31:0] wpt_match_wb_o;
				wire [1:0] mpu_status_wb_o;
				wire [1:0] align_status_wb_o;
				wire [31:0] clic_pa_i;
				wire clic_pa_valid_i;
				wire last_op_o;
				wire abort_op_o;
				wire instr_valid;
				wire wb_valid;
				wire lsu_exception;
				wire xif_waiting;
				wire xif_exception;
				reg [1:0] lsu_mpu_status_q;
				reg [31:0] lsu_wpt_match_q;
				reg [1:0] lsu_align_status_q;
				reg lsu_valid_q;
				wire [1:0] lsu_mpu_status;
				wire [31:0] lsu_wpt_match;
				wire [1:0] lsu_align_status;
				wire lsu_valid;
				assign instr_valid = ((ex_wb_pipe_i[53] && !ctrl_fsm_i[13]) && !ctrl_fsm_i[18]) && !ctrl_fsm_i[17];
				assign lsu_exception = (lsu_mpu_status != 2'h0) || (lsu_align_status != 2'h0);
				assign rf_we_wb_o = ((((ex_wb_pipe_i[247] && !lsu_exception) && !xif_waiting) && !xif_exception) && !(|lsu_wpt_match)) && instr_valid;
				assign rf_waddr_wb_o = ex_wb_pipe_i[246-:5];
				assign rf_wdata_wb_o = (ex_wb_pipe_i[158] ? lsu_rdata_i : (ex_wb_pipe_i[40] ? greyhound_soc.ext_if.result[37 + ((32'd32 / 32'sd32) + 17)-:((37 + ((32'd32 / 32'sd32) + 17)) >= (5 + ((32'd32 / 32'sd32) + 18)) ? ((37 + ((32'd32 / 32'sd32) + 17)) - (5 + ((32'd32 / 32'sd32) + 18))) + 1 : ((5 + ((32'd32 / 32'sd32) + 18)) - (37 + ((32'd32 / 32'sd32) + 17))) + 1)] : (clic_pa_valid_i ? clic_pa_i : ex_wb_pipe_i[241-:32])));
				assign lsu_valid_o = ex_wb_pipe_i[158] && ex_wb_pipe_i[53];
				assign lsu_ready_o = 1'b1;
				assign wb_ready_o = ctrl_fsm_i[13] || (((lsu_ready_i && !xif_waiting) && !ctrl_fsm_i[18]) && !ctrl_fsm_i[17]);
				assign wb_valid = ((!ex_wb_pipe_i[158] && !xif_waiting) || (ex_wb_pipe_i[158] && lsu_valid)) && instr_valid;
				assign wb_valid_o = wb_valid;
				assign last_op_o = ex_wb_pipe_i[2];
				assign abort_op_o = (ex_wb_pipe_i[1] || (ex_wb_pipe_i[158] && lsu_exception)) || (ex_wb_pipe_i[158] && |lsu_wpt_match);
				assign data_stall_o = (ex_wb_pipe_i[158] && !lsu_valid) && instr_valid;
				always @(posedge clk or negedge rst_n)
					if (rst_n == 1'b0) begin
						lsu_valid_q <= 1'b0;
						lsu_wpt_match_q <= 1'sb0;
						lsu_mpu_status_q <= 2'h0;
						lsu_align_status_q <= 2'h0;
					end
					else if (wb_valid || ctrl_fsm_i[13]) begin
						lsu_valid_q <= 1'b0;
						lsu_wpt_match_q <= 1'sb0;
						lsu_mpu_status_q <= 2'h0;
						lsu_align_status_q <= 2'h0;
					end
					else if (lsu_valid_i) begin
						lsu_valid_q <= 1'b1;
						lsu_wpt_match_q <= lsu_wpt_match;
						lsu_mpu_status_q <= lsu_mpu_status;
						lsu_align_status_q <= lsu_align_status;
					end
				assign lsu_valid = (lsu_valid_q ? lsu_valid_q : lsu_valid_i);
				assign lsu_wpt_match = (lsu_valid_q ? lsu_wpt_match_q : lsu_wpt_match_i);
				assign lsu_mpu_status = (lsu_valid_q ? lsu_mpu_status_q : lsu_mpu_status_i);
				assign lsu_align_status = (lsu_valid_q ? lsu_align_status_q : lsu_align_status_i);
				assign wpt_match_wb_o = lsu_wpt_match;
				assign mpu_status_wb_o = lsu_mpu_status;
				assign align_status_wb_o = lsu_align_status;
				assign xif_waiting = (ex_wb_pipe_i[53] && ex_wb_pipe_i[40]) && !greyhound_soc.ext_if.result_valid;
				assign xif_exception = ((ex_wb_pipe_i[53] && ex_wb_pipe_i[40]) && greyhound_soc.ext_if.result_valid) && greyhound_soc.ext_if.result[8];
				assign greyhound_soc.ext_if.result_ready = ex_wb_pipe_i[53] && ex_wb_pipe_i[40];
			end
			assign wb_stage_i.clk = clk;
			assign wb_stage_i.rst_n = rst_ni;
			assign wb_stage_i.ex_wb_pipe_i = ex_wb_pipe;
			assign wb_stage_i.ctrl_fsm_i = ctrl_fsm;
			assign wb_stage_i.lsu_rdata_i = lsu_rdata_wb;
			assign wb_stage_i.lsu_mpu_status_i = lsu_mpu_status_wb;
			assign wb_stage_i.lsu_wpt_match_i = lsu_wpt_match_wb;
			assign wb_stage_i.lsu_align_status_i = lsu_align_status_wb;
			assign rf_we_wb = wb_stage_i.rf_we_wb_o;
			assign rf_waddr_wb = wb_stage_i.rf_waddr_wb_o;
			assign rf_wdata_wb = wb_stage_i.rf_wdata_wb_o;
			assign wb_stage_i.lsu_valid_i = lsu_valid_1;
			assign lsu_ready_wb = wb_stage_i.lsu_ready_o;
			assign lsu_valid_wb = wb_stage_i.lsu_valid_o;
			assign wb_stage_i.lsu_ready_i = lsu_ready_1;
			assign data_stall_wb = wb_stage_i.data_stall_o;
			assign wb_ready = wb_stage_i.wb_ready_o;
			assign wb_valid = wb_stage_i.wb_valid_o;
			assign wpt_match_wb = wb_stage_i.wpt_match_wb_o;
			assign mpu_status_wb = wb_stage_i.mpu_status_wb_o;
			assign align_status_wb = wb_stage_i.align_status_wb_o;
			assign wb_stage_i.clic_pa_valid_i = csr_clic_pa_valid;
			assign wb_stage_i.clic_pa_i = csr_clic_pa;
			assign last_op_wb = wb_stage_i.last_op_o;
			assign abort_op_wb = wb_stage_i.abort_op_o;
			cv32e40x_cs_registers #(
				.RV32(RV32),
				.A_EXT(A_EXT),
				.M_EXT(M_EXT),
				.X_EXT(X_EXT),
				.X_MISA(X_MISA),
				.X_ECS_XS(X_ECS_XS),
				.ZC_EXT(ZC_EXT),
				.CLIC(CLIC),
				.CLIC_ID_WIDTH(CLIC_ID_WIDTH),
				.DEBUG(DEBUG),
				.DBG_NUM_TRIGGERS(DBG_NUM_TRIGGERS),
				.NUM_MHPMCOUNTERS(NUM_MHPMCOUNTERS),
				.MTVT_ADDR_WIDTH(MTVT_ADDR_WIDTH)
			) cs_registers_i(
				.clk(clk),
				.rst_n(rst_ni),
				.mhartid_i(mhartid_i),
				.mimpid_patch_i(mimpid_patch_i),
				.mtvec_addr_i(mtvec_addr_i[31:0]),
				.csr_mtvec_init_i(csr_mtvec_init_if),
				.dcsr_o(dcsr),
				.dpc_o(dpc),
				.jvt_addr_o(jvt_addr),
				.jvt_mode_o(jvt_mode),
				.mcause_o(mcause),
				.mcycle_o(mcycle_o),
				.mepc_o(mepc),
				.mie_o(mie),
				.mintstatus_o(mintstatus),
				.mintthresh_th_o(mintthresh_th),
				.mstatus_o(mstatus),
				.mtvec_addr_o(mtvec_addr),
				.mtvec_mode_o(mtvec_mode),
				.mtvt_addr_o(mtvt_addr),
				.priv_lvl_if_ctrl_o(priv_lvl_if_ctrl),
				.priv_lvl_lsu_o(priv_lvl_lsu),
				.priv_lvl_o(priv_lvl),
				.id_ex_pipe_i(id_ex_pipe),
				.csr_illegal_o(csr_illegal),
				.ex_wb_pipe_i(ex_wb_pipe),
				.ctrl_fsm_i(ctrl_fsm),
				.csr_counter_read_o(csr_counter_read),
				.csr_mnxti_read_o(csr_mnxti_read),
				.csr_irq_enable_write_o(csr_irq_enable_write),
				.csr_hz_o(csr_hz),
				.csr_rdata_o(csr_rdata),
				.mip_i(mip),
				.mnxti_irq_pending_i(mnxti_irq_pending),
				.mnxti_irq_id_i(mnxti_irq_id),
				.mnxti_irq_level_i(mnxti_irq_level),
				.clic_pa_valid_o(csr_clic_pa_valid),
				.clic_pa_o(csr_clic_pa),
				.time_i(time_i),
				.csr_wr_in_wb_flush_o(csr_wr_in_wb_flush),
				.trigger_match_if_o(trigger_match_if),
				.trigger_match_ex_o(trigger_match_ex),
				.etrigger_wb_o(etrigger_wb),
				.pc_if_i(pc_if),
				.ptr_in_if_i(ptr_in_if),
				.priv_lvl_if_i(priv_lvl_if),
				.lsu_valid_ex_i(lsu_valid_ex),
				.lsu_addr_ex_i(lsu_addr_ex),
				.lsu_we_ex_i(lsu_we_ex),
				.lsu_be_ex_i(lsu_be_ex),
				.lsu_atomic_ex_i(lsu_atomic_ex)
			);
			localparam _param_83D5A_X_EXT = X_EXT;
			localparam _param_83D5A_A_EXT = A_EXT;
			localparam _param_83D5A_REGFILE_NUM_READ_PORTS = REGFILE_NUM_READ_PORTS;
			localparam _param_83D5A_CLIC = CLIC;
			localparam _param_83D5A_CLIC_ID_WIDTH = CLIC_ID_WIDTH;
			localparam _param_83D5A_RV32 = RV32;
			localparam _param_83D5A_DEBUG = DEBUG;
			if (1) begin : controller_i
				localparam [0:0] X_EXT = _param_83D5A_X_EXT;
				localparam [1:0] A_EXT = _param_83D5A_A_EXT;
				localparam [31:0] REGFILE_NUM_READ_PORTS = _param_83D5A_REGFILE_NUM_READ_PORTS;
				localparam [0:0] CLIC = _param_83D5A_CLIC;
				localparam [31:0] CLIC_ID_WIDTH = _param_83D5A_CLIC_ID_WIDTH;
				localparam [0:0] RV32 = _param_83D5A_RV32;
				localparam [0:0] DEBUG = _param_83D5A_DEBUG;
				wire clk;
				wire rst_n;
				wire fetch_enable_i;
				wire if_valid_i;
				wire [31:0] pc_if_i;
				wire last_op_if_i;
				wire abort_op_if_i;
				localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
				wire [190:0] if_id_pipe_i;
				wire alu_jmp_id_i;
				wire alu_jmpr_id_i;
				wire alu_en_id_i;
				wire sys_en_id_i;
				wire sys_mret_id_i;
				wire csr_en_raw_id_i;
				wire first_op_id_i;
				wire last_op_id_i;
				wire abort_op_id_i;
				localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
				localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
				localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
				localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
				localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
				wire [352:0] id_ex_pipe_i;
				wire [247:0] ex_wb_pipe_i;
				wire [1:0] mpu_status_wb_i;
				wire [31:0] wpt_match_wb_i;
				wire [1:0] align_status_wb_i;
				wire last_op_ex_i;
				wire last_op_wb_i;
				wire abort_op_wb_i;
				wire data_stall_wb_i;
				wire [1:0] lsu_err_wb_i;
				wire lsu_busy_i;
				wire lsu_bus_busy_i;
				wire lsu_interruptible_i;
				wire lsu_valid_wb_i;
				wire [1:0] lsu_atomic_ex_i;
				wire [1:0] lsu_atomic_wb_i;
				wire branch_decision_ex_i;
				wire irq_req_ctrl_i;
				wire [9:0] irq_id_ctrl_i;
				wire irq_wu_ctrl_i;
				wire irq_clic_shv_i;
				wire [7:0] irq_clic_level_i;
				wire [1:0] irq_clic_priv_i;
				wire wu_wfe_i;
				wire [1:0] mtvec_mode_i;
				wire [31:0] mcause_i;
				wire [31:0] mintstatus_i;
				wire etrigger_wb_i;
				wire csr_wr_in_wb_flush_i;
				wire debug_req_i;
				wire [31:0] dcsr_i;
				wire csr_counter_read_i;
				wire csr_mnxti_read_i;
				wire csr_irq_enable_write_i;
				wire [27:0] csr_hz_i;
				wire [REGFILE_NUM_READ_PORTS - 1:0] rf_re_id_i;
				wire [(REGFILE_NUM_READ_PORTS * cv32e40x_pkg_REGFILE_ADDR_WIDTH) - 1:0] rf_raddr_id_i;
				wire id_ready_i;
				wire id_valid_i;
				wire ex_ready_i;
				wire ex_valid_i;
				wire wb_ready_i;
				wire wb_valid_i;
				wire [17:0] ctrl_byp_o;
				wire [200:0] ctrl_fsm_o;
				wire fencei_flush_req_o;
				wire fencei_flush_ack_i;
				wire xif_csr_error_i;
				localparam _param_F4242_X_EXT = X_EXT;
				localparam _param_F4242_CLIC = CLIC;
				localparam _param_F4242_CLIC_ID_WIDTH = CLIC_ID_WIDTH;
				localparam _param_F4242_RV32 = RV32;
				localparam _param_F4242_DEBUG = DEBUG;
				if (1) begin : controller_fsm_i
					reg _sv2v_0;
					localparam [0:0] X_EXT = _param_F4242_X_EXT;
					localparam [0:0] DEBUG = _param_F4242_DEBUG;
					localparam [0:0] CLIC = _param_F4242_CLIC;
					localparam [31:0] CLIC_ID_WIDTH = _param_F4242_CLIC_ID_WIDTH;
					localparam [0:0] RV32 = _param_F4242_RV32;
					wire clk;
					wire rst_n;
					wire fetch_enable_i;
					wire [17:0] ctrl_byp_i;
					wire [31:0] pc_if_i;
					wire last_op_if_i;
					wire abort_op_if_i;
					localparam cv32e40x_pkg_INSTR_DATA_WIDTH = 32;
					wire [190:0] if_id_pipe_i;
					wire alu_jmp_id_i;
					wire sys_mret_id_i;
					wire alu_en_id_i;
					wire sys_en_id_i;
					wire first_op_id_i;
					wire last_op_id_i;
					wire abort_op_id_i;
					localparam cv32e40x_pkg_ALU_OP_WIDTH = 6;
					localparam cv32e40x_pkg_CSR_OP_WIDTH = 2;
					localparam cv32e40x_pkg_DIV_OP_WIDTH = 2;
					localparam cv32e40x_pkg_MUL_OP_WIDTH = 1;
					localparam cv32e40x_pkg_REGFILE_ADDR_WIDTH = 5;
					wire [352:0] id_ex_pipe_i;
					wire branch_decision_ex_i;
					wire last_op_ex_i;
					wire [247:0] ex_wb_pipe_i;
					wire [1:0] lsu_err_wb_i;
					wire last_op_wb_i;
					wire abort_op_wb_i;
					wire [1:0] mpu_status_wb_i;
					wire [1:0] align_status_wb_i;
					wire [31:0] wpt_match_wb_i;
					wire data_stall_wb_i;
					wire lsu_valid_wb_i;
					wire lsu_busy_i;
					wire lsu_interruptible_i;
					wire irq_wu_ctrl_i;
					wire irq_req_ctrl_i;
					wire [9:0] irq_id_ctrl_i;
					wire irq_clic_shv_i;
					wire [7:0] irq_clic_level_i;
					wire [1:0] irq_clic_priv_i;
					wire wu_wfe_i;
					wire [1:0] mtvec_mode_i;
					wire [31:0] dcsr_i;
					wire [31:0] mcause_i;
					wire [31:0] mintstatus_i;
					wire etrigger_wb_i;
					wire debug_req_i;
					reg [200:0] ctrl_fsm_o;
					wire csr_wr_in_wb_flush_i;
					wire if_valid_i;
					wire id_ready_i;
					wire id_valid_i;
					wire ex_ready_i;
					wire ex_valid_i;
					wire wb_ready_i;
					wire wb_valid_i;
					wire fencei_flush_req_o;
					wire fencei_flush_ack_i;
					wire xif_csr_error_i;
					reg [1:0] ctrl_fsm_cs;
					reg [1:0] ctrl_fsm_ns;
					reg [2:0] debug_fsm_cs;
					reg [2:0] debug_fsm_ns;
					reg nmi_pending_q;
					reg nmi_is_store_q;
					reg debug_mode_n;
					reg debug_mode_q;
					reg single_step_halt_if_n;
					reg single_step_halt_if_q;
					wire sys_mret_id;
					wire jmp_id;
					wire jump_in_id;
					wire jump_taken_id;
					wire clic_ptr_in_id;
					wire mret_ptr_in_id;
					wire branch_in_ex;
					wire branch_taken_ex;
					reg branch_taken_n;
					reg branch_taken_q;
					wire clic_ptr_in_ex;
					wire exception_in_wb;
					wire [10:0] exception_cause_wb;
					wire wfi_in_wb;
					wire wfe_in_wb;
					wire fencei_in_wb;
					wire fence_in_wb;
					wire mret_in_wb;
					wire mret_ptr_in_wb;
					wire dret_in_wb;
					wire ebreak_in_wb;
					wire trigger_match_in_wb;
					wire etrigger_in_wb;
					wire xif_in_wb;
					wire clic_ptr_in_wb;
					wire pending_nmi;
					wire pending_nmi_early;
					wire pending_async_debug;
					wire pending_sync_debug;
					wire pending_single_step;
					wire pending_interrupt;
					wire exception_allowed;
					wire interrupt_allowed;
					wire nmi_allowed;
					wire async_debug_allowed;
					wire sync_debug_allowed;
					wire single_step_allowed;
					wire debug_interruptible;
					wire clic_ptr_in_pipeline;
					wire non_shv_irq_ack;
					reg [2:0] debug_cause_n;
					reg [2:0] debug_cause_q;
					wire [2:0] sync_debug_cause;
					reg woke_to_debug_q;
					reg woke_to_interrupt_q;
					reg [10:0] exc_cause;
					reg fence_req_set;
					reg fence_req_clr;
					reg fence_req_q;
					reg fencei_req_and_ack_q;
					wire fencei_ongoing;
					reg [1:0] pipe_pc_mux_ctrl;
					reg wb_counter_event;
					wire wb_counter_event_gated;
					reg csr_flush_ack_n;
					reg csr_flush_ack_q;
					reg sequence_in_progress_wb;
					wire sequence_interruptible;
					reg sequence_in_progress_id;
					wire id_stage_haltable;
					reg interrupt_blanking_q;
					reg clic_ptr_in_progress_id;
					reg clic_ptr_in_progress_id_set;
					reg clic_ptr_in_progress_id_clear;
					assign sequence_interruptible = !sequence_in_progress_wb;
					assign id_stage_haltable = !(sequence_in_progress_id || clic_ptr_in_progress_id);
					assign fencei_ongoing = fencei_flush_req_o || fencei_req_and_ack_q;
					wire [5:1] sv2v_tmp_0452E;
					assign sv2v_tmp_0452E = ((mtvec_mode_i == 2'b00) || ((mtvec_mode_i == 2'b11) && !irq_clic_shv_i) ? 5'h00 : exc_cause[4:0]);
					always @(*) ctrl_fsm_o[191-:5] = sv2v_tmp_0452E;
					wire [10:1] sv2v_tmp_0F0C8;
					assign sv2v_tmp_0F0C8 = exc_cause[9:0];
					always @(*) ctrl_fsm_o[186-:10] = sv2v_tmp_0F0C8;
					wire [5:1] sv2v_tmp_84A89;
					assign sv2v_tmp_84A89 = (mtvec_mode_i == 2'b01 ? 5'h0f : 5'h00);
					always @(*) ctrl_fsm_o[176-:5] = sv2v_tmp_84A89;
					assign sys_mret_id = (sys_en_id_i && sys_mret_id_i) && if_id_pipe_i[190];
					assign jmp_id = (alu_en_id_i && alu_jmp_id_i) && if_id_pipe_i[190];
					assign jump_in_id = (((jmp_id && !if_id_pipe_i[151]) && !ctrl_byp_i[12]) || ((jmp_id && if_id_pipe_i[151]) && !ctrl_byp_i[10])) || (sys_mret_id && !ctrl_byp_i[10]);
					assign jump_taken_id = jump_in_id && !branch_taken_q;
					assign clic_ptr_in_id = if_id_pipe_i[190] && if_id_pipe_i[153];
					assign mret_ptr_in_id = if_id_pipe_i[190] && if_id_pipe_i[152];
					assign branch_in_ex = (id_ex_pipe_i[351] && id_ex_pipe_i[352]) && id_ex_pipe_i[42];
					assign branch_taken_ex = (branch_in_ex && !branch_taken_q) && branch_decision_ex_i;
					assign exception_in_wb = (((((((ex_wb_pipe_i[60-:2] != 2'h0) || ex_wb_pipe_i[61]) || ex_wb_pipe_i[52]) || (ex_wb_pipe_i[49] && ex_wb_pipe_i[46])) || ((((ex_wb_pipe_i[49] && ex_wb_pipe_i[47]) && (ex_wb_pipe_i[51-:2] == 2'b11)) && !dcsr_i[15]) && !debug_mode_q)) || (mpu_status_wb_i != 2'h0)) || (align_status_wb_i != 2'h0)) && ex_wb_pipe_i[53];
					wire [1:1] sv2v_tmp_8EBF5;
					assign sv2v_tmp_8EBF5 = exception_in_wb;
					always @(*) ctrl_fsm_o[11] = sv2v_tmp_8EBF5;
					localparam cv32e40x_pkg_EXC_CAUSE_BREAKPOINT = 11'h003;
					localparam cv32e40x_pkg_EXC_CAUSE_ECALL_MMODE = 11'h00b;
					localparam cv32e40x_pkg_EXC_CAUSE_ILLEGAL_INSN = 11'h002;
					localparam cv32e40x_pkg_EXC_CAUSE_INSTR_BUS_FAULT = 11'h018;
					localparam cv32e40x_pkg_EXC_CAUSE_INSTR_FAULT = 11'h001;
					localparam cv32e40x_pkg_EXC_CAUSE_LOAD_FAULT = 11'h005;
					localparam cv32e40x_pkg_EXC_CAUSE_STORE_FAULT = 11'h007;
					assign exception_cause_wb = (ex_wb_pipe_i[60-:2] != 2'h0 ? cv32e40x_pkg_EXC_CAUSE_INSTR_FAULT : (ex_wb_pipe_i[61] ? cv32e40x_pkg_EXC_CAUSE_INSTR_BUS_FAULT : (ex_wb_pipe_i[52] ? cv32e40x_pkg_EXC_CAUSE_ILLEGAL_INSN : (ex_wb_pipe_i[49] && ex_wb_pipe_i[46] ? cv32e40x_pkg_EXC_CAUSE_ECALL_MMODE : ((((ex_wb_pipe_i[49] && ex_wb_pipe_i[47]) && (ex_wb_pipe_i[51-:2] == 2'b11)) && !dcsr_i[15]) && !debug_mode_q ? cv32e40x_pkg_EXC_CAUSE_BREAKPOINT : (mpu_status_wb_i == 2'h2 ? cv32e40x_pkg_EXC_CAUSE_STORE_FAULT : (mpu_status_wb_i == 2'h1 ? cv32e40x_pkg_EXC_CAUSE_LOAD_FAULT : (align_status_wb_i == 2'h2 ? cv32e40x_pkg_EXC_CAUSE_STORE_FAULT : cv32e40x_pkg_EXC_CAUSE_LOAD_FAULT))))))));
					wire [11:1] sv2v_tmp_B0AE2;
					assign sv2v_tmp_B0AE2 = exception_cause_wb;
					always @(*) ctrl_fsm_o[10-:11] = sv2v_tmp_B0AE2;
					assign exception_allowed = 1'b1;
					assign wfi_in_wb = (ex_wb_pipe_i[49] && ex_wb_pipe_i[42]) && ex_wb_pipe_i[53];
					assign wfe_in_wb = (ex_wb_pipe_i[49] && ex_wb_pipe_i[41]) && ex_wb_pipe_i[53];
					assign fencei_in_wb = (ex_wb_pipe_i[49] && ex_wb_pipe_i[44]) && ex_wb_pipe_i[53];
					assign fence_in_wb = (ex_wb_pipe_i[49] && ex_wb_pipe_i[45]) && ex_wb_pipe_i[53];
					assign mret_in_wb = ((ex_wb_pipe_i[49] && ex_wb_pipe_i[43]) && ex_wb_pipe_i[53]) && ex_wb_pipe_i[3];
					assign mret_ptr_in_wb = ex_wb_pipe_i[56] && ex_wb_pipe_i[53];
					assign dret_in_wb = (ex_wb_pipe_i[49] && ex_wb_pipe_i[48]) && ex_wb_pipe_i[53];
					assign ebreak_in_wb = (ex_wb_pipe_i[49] && ex_wb_pipe_i[47]) && ex_wb_pipe_i[53];
					assign trigger_match_in_wb = (|ex_wb_pipe_i[157-:32] || |wpt_match_wb_i) && ex_wb_pipe_i[53];
					assign etrigger_in_wb = etrigger_wb_i && wb_valid_i;
					assign xif_in_wb = ex_wb_pipe_i[40] && ex_wb_pipe_i[53];
					assign clic_ptr_in_ex = id_ex_pipe_i[46] && id_ex_pipe_i[42];
					assign clic_ptr_in_wb = ex_wb_pipe_i[57] && ex_wb_pipe_i[53];
					assign pending_nmi = nmi_pending_q;
					assign pending_nmi_early = lsu_err_wb_i[1];
					wire [1:1] sv2v_tmp_DCC4E;
					assign sv2v_tmp_DCC4E = nmi_pending_q;
					always @(*) ctrl_fsm_o[37] = sv2v_tmp_DCC4E;
					assign single_step_allowed = 1'b1;
					assign non_shv_irq_ack = ctrl_fsm_o[171] && !irq_clic_shv_i;
					assign pending_single_step = (!debug_mode_q && dcsr_i[2]) && (((wb_valid_i && (last_op_wb_i || abort_op_wb_i)) || non_shv_irq_ack) || (pending_nmi && nmi_allowed));
					if (CLIC) begin : gen_clic_pointer_flag
						assign clic_ptr_in_pipeline = (clic_ptr_in_ex || clic_ptr_in_wb) || clic_ptr_in_progress_id;
					end
					else begin : gen_basic_pointer_flag
						assign clic_ptr_in_pipeline = 1'b0;
					end
					assign async_debug_allowed = ((((((lsu_interruptible_i && !fencei_ongoing) && !xif_in_wb) && !clic_ptr_in_pipeline) && sequence_interruptible) && !woke_to_interrupt_q) && !csr_flush_ack_q) && (ctrl_fsm_cs != 2'd2);
					assign sync_debug_allowed = !xif_in_wb && (ctrl_fsm_cs != 2'd2);
					assign pending_sync_debug = (trigger_match_in_wb || (((ebreak_in_wb && dcsr_i[15]) && (ex_wb_pipe_i[51-:2] == 2'b11)) && !debug_mode_q)) || (ebreak_in_wb && debug_mode_q);
					assign pending_async_debug = (debug_req_i || woke_to_debug_q) && !debug_mode_q;
					localparam cv32e40x_pkg_DBG_CAUSE_EBREAK = 3'h1;
					localparam cv32e40x_pkg_DBG_CAUSE_NONE = 3'h0;
					localparam cv32e40x_pkg_DBG_CAUSE_TRIGGER = 3'h2;
					assign sync_debug_cause = (trigger_match_in_wb ? cv32e40x_pkg_DBG_CAUSE_TRIGGER : (((ebreak_in_wb && dcsr_i[15]) && (ex_wb_pipe_i[51-:2] == 2'b11)) && !debug_mode_q ? cv32e40x_pkg_DBG_CAUSE_EBREAK : (ebreak_in_wb && debug_mode_q ? cv32e40x_pkg_DBG_CAUSE_EBREAK : cv32e40x_pkg_DBG_CAUSE_NONE)));
					wire [3:1] sv2v_tmp_C8D94;
					assign sv2v_tmp_C8D94 = debug_cause_q;
					always @(*) ctrl_fsm_o[146-:3] = sv2v_tmp_C8D94;
					assign pending_interrupt = irq_req_ctrl_i;
					assign interrupt_allowed = (((((((lsu_interruptible_i && debug_interruptible) && !fencei_ongoing) && !xif_in_wb) && !clic_ptr_in_pipeline) && sequence_interruptible) && !interrupt_blanking_q) && !csr_flush_ack_q) && (ctrl_fsm_cs != 2'd2);
					assign nmi_allowed = (((((((lsu_interruptible_i && debug_interruptible) && !fencei_ongoing) && !xif_in_wb) && !clic_ptr_in_pipeline) && sequence_interruptible) && !(woke_to_debug_q || woke_to_interrupt_q)) && !csr_flush_ack_q) && (ctrl_fsm_cs != 2'd2);
					assign debug_interruptible = !(debug_mode_q || (dcsr_i[2] && !dcsr_i[11]));
					assign wb_counter_event_gated = (((((wb_counter_event && !exception_in_wb) && !ebreak_in_wb) && !trigger_match_in_wb) && !ctrl_fsm_o[13]) && !ctrl_fsm_o[18]) && !ctrl_fsm_o[17];
					wire [1:1] sv2v_tmp_BF523;
					assign sv2v_tmp_BF523 = wb_counter_event_gated;
					always @(*) ctrl_fsm_o[36] = sv2v_tmp_BF523;
					wire [1:1] sv2v_tmp_81D5C;
					assign sv2v_tmp_81D5C = wb_counter_event_gated && ex_wb_pipe_i[58];
					always @(*) ctrl_fsm_o[35] = sv2v_tmp_81D5C;
					wire [1:1] sv2v_tmp_EF938;
					assign sv2v_tmp_EF938 = wb_counter_event_gated && ex_wb_pipe_i[209];
					always @(*) ctrl_fsm_o[34] = sv2v_tmp_EF938;
					wire [1:1] sv2v_tmp_EF991;
					assign sv2v_tmp_EF991 = wb_counter_event_gated && ex_wb_pipe_i[208];
					always @(*) ctrl_fsm_o[33] = sv2v_tmp_EF991;
					wire [1:1] sv2v_tmp_A42B4;
					assign sv2v_tmp_A42B4 = wb_counter_event_gated && ex_wb_pipe_i[207];
					always @(*) ctrl_fsm_o[32] = sv2v_tmp_A42B4;
					wire [1:1] sv2v_tmp_4C8DD;
					assign sv2v_tmp_4C8DD = ctrl_fsm_o[171];
					always @(*) ctrl_fsm_o[31] = sv2v_tmp_4C8DD;
					wire [1:1] sv2v_tmp_20B93;
					assign sv2v_tmp_20B93 = (greyhound_soc.cv32e40x_core.m_c_obi_data_if.s_req[0] && greyhound_soc.cv32e40x_core.m_c_obi_data_if.s_gnt[0]) && !greyhound_soc.cv32e40x_core.m_c_obi_data_if.req_payload[42];
					always @(*) ctrl_fsm_o[30] = sv2v_tmp_20B93;
					wire [1:1] sv2v_tmp_E951B;
					assign sv2v_tmp_E951B = (greyhound_soc.cv32e40x_core.m_c_obi_data_if.s_req[0] && greyhound_soc.cv32e40x_core.m_c_obi_data_if.s_gnt[0]) && greyhound_soc.cv32e40x_core.m_c_obi_data_if.req_payload[42];
					always @(*) ctrl_fsm_o[29] = sv2v_tmp_E951B;
					wire [1:1] sv2v_tmp_A58CE;
					assign sv2v_tmp_A58CE = !if_valid_i && id_ready_i;
					always @(*) ctrl_fsm_o[28] = sv2v_tmp_A58CE;
					wire [1:1] sv2v_tmp_28A63;
					assign sv2v_tmp_28A63 = !id_valid_i && ex_ready_i;
					always @(*) ctrl_fsm_o[27] = sv2v_tmp_28A63;
					wire [1:1] sv2v_tmp_21ECA;
					assign sv2v_tmp_21ECA = !ex_valid_i && wb_ready_i;
					always @(*) ctrl_fsm_o[26] = sv2v_tmp_21ECA;
					wire [1:1] sv2v_tmp_CE210;
					assign sv2v_tmp_CE210 = !wb_valid_i;
					always @(*) ctrl_fsm_o[25] = sv2v_tmp_CE210;
					wire [1:1] sv2v_tmp_A573C;
					assign sv2v_tmp_A573C = (ctrl_byp_i[12] && !id_valid_i) && ex_ready_i;
					always @(*) ctrl_fsm_o[23] = sv2v_tmp_A573C;
					wire [1:1] sv2v_tmp_EE758;
					assign sv2v_tmp_EE758 = (ctrl_byp_i[11] && !id_valid_i) && ex_ready_i;
					always @(*) ctrl_fsm_o[24] = sv2v_tmp_EE758;
					wire [1:1] sv2v_tmp_B7AF5;
					assign sv2v_tmp_B7AF5 = data_stall_wb_i;
					always @(*) ctrl_fsm_o[22] = sv2v_tmp_B7AF5;
					always @(*) begin
						if (_sv2v_0)
							;
						ctrl_fsm_o[104-:32] = ex_wb_pipe_i[125-:32];
						(* full_case, parallel_case *)
						case (pipe_pc_mux_ctrl)
							2'd3: ctrl_fsm_o[104-:32] = ex_wb_pipe_i[125-:32];
							2'd2: ctrl_fsm_o[104-:32] = id_ex_pipe_i[114-:32];
							2'd1: ctrl_fsm_o[104-:32] = if_id_pipe_i[149-:32];
							2'd0: ctrl_fsm_o[104-:32] = pc_if_i;
							default:
								;
						endcase
					end
					localparam cv32e40x_pkg_DBG_CAUSE_HALTREQ = 3'h3;
					localparam cv32e40x_pkg_DBG_CAUSE_STEP = 3'h4;
					localparam cv32e40x_pkg_INT_CAUSE_LSU_LOAD_FAULT = 11'h400;
					localparam cv32e40x_pkg_INT_CAUSE_LSU_STORE_FAULT = 11'h401;
					always @(*) begin
						if (_sv2v_0)
							;
						ctrl_fsm_ns = ctrl_fsm_cs;
						ctrl_fsm_o[200] = 1'b1;
						ctrl_fsm_o[199] = 1'b1;
						ctrl_fsm_o[195-:4] = 4'b0000;
						ctrl_fsm_o[198] = 1'b0;
						ctrl_fsm_o[171] = 1'b0;
						ctrl_fsm_o[170-:10] = 1'sb0;
						ctrl_fsm_o[152-:2] = 1'sb0;
						ctrl_fsm_o[150] = 1'sb0;
						ctrl_fsm_o[160-:8] = 8'h00;
						ctrl_fsm_o[149] = 1'b0;
						ctrl_fsm_o[21] = single_step_halt_if_q;
						ctrl_fsm_o[20] = (((((ctrl_byp_i[12] || ctrl_byp_i[11]) || ctrl_byp_i[10]) || ctrl_byp_i[8]) || ctrl_byp_i[7]) || ((((pending_interrupt || pending_nmi) || pending_nmi_early) && debug_interruptible) && id_stage_haltable)) || ((pending_async_debug || pending_sync_debug) && id_stage_haltable);
						ctrl_fsm_o[19] = ((((ctrl_byp_i[5] || ctrl_byp_i[2]) || ctrl_byp_i[1]) || ctrl_byp_i[6]) || ctrl_byp_i[0]) || ctrl_byp_i[9];
						ctrl_fsm_o[18] = 1'b0;
						ctrl_fsm_o[17] = 1'b0;
						ctrl_fsm_o[16] = 1'b0;
						ctrl_fsm_o[15] = 1'b0;
						ctrl_fsm_o[14] = 1'b0;
						ctrl_fsm_o[13] = 1'b0;
						ctrl_fsm_o[40] = 1'b0;
						ctrl_fsm_o[39] = 1'b0;
						ctrl_fsm_o[38] = 1'b0;
						ctrl_fsm_o[72-:32] = 32'h00000000;
						pipe_pc_mux_ctrl = 2'd3;
						exc_cause = 11'b00000000000;
						debug_cause_n = cv32e40x_pkg_DBG_CAUSE_NONE;
						debug_mode_n = debug_mode_q;
						ctrl_fsm_o[143] = 1'b0;
						ctrl_fsm_o[142-:32] = 1'sb0;
						ctrl_fsm_o[110] = 1'b0;
						single_step_halt_if_n = single_step_halt_if_q;
						branch_taken_n = branch_taken_q;
						fence_req_set = 1'b0;
						fence_req_clr = 1'b1;
						ctrl_fsm_o[197] = 1'b0;
						ctrl_fsm_o[196] = 1'b0;
						csr_flush_ack_n = 1'b0;
						clic_ptr_in_progress_id_set = 1'b0;
						clic_ptr_in_progress_id_clear = 1'b0;
						(* full_case, parallel_case *)
						case (ctrl_fsm_cs)
							2'd0: begin
								ctrl_fsm_o[199] = 1'b0;
								if (fetch_enable_i) begin
									if (debug_req_i) begin
										ctrl_fsm_o[199] = 1'b0;
										ctrl_fsm_o[195-:4] = 4'b0000;
										ctrl_fsm_o[198] = 1'b1;
										ctrl_fsm_ns = 2'd3;
										debug_cause_n = cv32e40x_pkg_DBG_CAUSE_HALTREQ;
									end
									else begin
										ctrl_fsm_o[199] = 1'b1;
										ctrl_fsm_o[195-:4] = 4'b0000;
										ctrl_fsm_o[198] = 1'b1;
										ctrl_fsm_ns = 2'd1;
									end
								end
							end
							2'd1: begin
								if (pending_nmi && nmi_allowed) begin
									ctrl_fsm_o[16] = 1'b1;
									ctrl_fsm_o[15] = 1'b1;
									ctrl_fsm_o[14] = 1'b1;
									ctrl_fsm_o[13] = 1'b1;
									ctrl_fsm_o[198] = 1'b1;
									ctrl_fsm_o[195-:4] = 4'b1100;
									ctrl_fsm_o[38] = 1'b1;
									ctrl_fsm_o[72] = 1'b1;
									ctrl_fsm_o[51-:11] = (nmi_is_store_q ? cv32e40x_pkg_INT_CAUSE_LSU_STORE_FAULT : cv32e40x_pkg_INT_CAUSE_LSU_LOAD_FAULT);
									ctrl_fsm_o[71] = 1'b0;
									if (CLIC)
										ctrl_fsm_o[160-:8] = mintstatus_i[31-:8];
									if (ex_wb_pipe_i[53])
										pipe_pc_mux_ctrl = 2'd3;
									else if (id_ex_pipe_i[42])
										pipe_pc_mux_ctrl = 2'd2;
									else if (if_id_pipe_i[190])
										pipe_pc_mux_ctrl = 2'd1;
									else
										pipe_pc_mux_ctrl = 2'd0;
								end
								else if (pending_async_debug && async_debug_allowed) begin
									ctrl_fsm_o[21] = 1'b1;
									ctrl_fsm_o[20] = 1'b1;
									ctrl_fsm_o[19] = 1'b1;
									ctrl_fsm_o[18] = 1'b1;
									ctrl_fsm_ns = 2'd3;
									debug_cause_n = cv32e40x_pkg_DBG_CAUSE_HALTREQ;
								end
								else if (pending_interrupt && interrupt_allowed) begin
									ctrl_fsm_o[16] = 1'b1;
									ctrl_fsm_o[15] = 1'b1;
									ctrl_fsm_o[14] = 1'b1;
									ctrl_fsm_o[13] = 1'b1;
									ctrl_fsm_o[198] = 1'b1;
									exc_cause = {1'b0, irq_id_ctrl_i};
									ctrl_fsm_o[171] = 1'b1;
									ctrl_fsm_o[170-:10] = irq_id_ctrl_i;
									ctrl_fsm_o[38] = 1'b1;
									ctrl_fsm_o[72] = 1'b1;
									ctrl_fsm_o[71] = 1'b0;
									if (CLIC) begin
										ctrl_fsm_o[51-:11] = {1'b0, irq_id_ctrl_i};
										ctrl_fsm_o[160-:8] = irq_clic_level_i;
										ctrl_fsm_o[152-:2] = irq_clic_priv_i;
										ctrl_fsm_o[150] = irq_clic_shv_i;
										if (irq_clic_shv_i) begin
											ctrl_fsm_o[195-:4] = 4'b1101;
											clic_ptr_in_progress_id_set = 1'b1;
											ctrl_fsm_o[197] = 1'b1;
										end
										else
											ctrl_fsm_o[195-:4] = 4'b1001;
									end
									else begin
										ctrl_fsm_o[195-:4] = 4'b1001;
										ctrl_fsm_o[51-:11] = {1'b0, irq_id_ctrl_i};
									end
									if (ex_wb_pipe_i[53])
										pipe_pc_mux_ctrl = 2'd3;
									else if (id_ex_pipe_i[42])
										pipe_pc_mux_ctrl = 2'd2;
									else if (if_id_pipe_i[190])
										pipe_pc_mux_ctrl = 2'd1;
									else
										pipe_pc_mux_ctrl = 2'd0;
								end
								else if (pending_sync_debug && sync_debug_allowed) begin
									ctrl_fsm_o[21] = 1'b1;
									ctrl_fsm_o[20] = 1'b1;
									ctrl_fsm_o[19] = 1'b1;
									ctrl_fsm_o[18] = 1'b1;
									ctrl_fsm_ns = 2'd3;
									debug_cause_n = sync_debug_cause;
								end
								else begin
									if (exception_in_wb && exception_allowed) begin
										ctrl_fsm_o[16] = 1'b1;
										ctrl_fsm_o[15] = 1'b1;
										ctrl_fsm_o[14] = 1'b1;
										ctrl_fsm_o[13] = 1'b0;
										ctrl_fsm_o[198] = 1'b1;
										ctrl_fsm_o[195-:4] = (debug_mode_q ? 4'b1011 : 4'b1000);
										pipe_pc_mux_ctrl = 2'd3;
										ctrl_fsm_o[38] = !debug_mode_q;
										ctrl_fsm_o[51-:11] = exception_cause_wb;
										ctrl_fsm_o[71] = clic_ptr_in_wb || mret_ptr_in_wb;
									end
									else if (wfi_in_wb || wfe_in_wb) begin
										ctrl_fsm_o[18] = 1'b1;
										ctrl_fsm_o[199] = 1'b0;
										ctrl_fsm_ns = 2'd2;
									end
									else if (fencei_in_wb || fence_in_wb) begin
										ctrl_fsm_o[21] = 1'b1;
										ctrl_fsm_o[20] = 1'b1;
										ctrl_fsm_o[19] = 1'b1;
										ctrl_fsm_o[18] = 1'b1;
										fence_req_set = !lsu_busy_i;
										fence_req_clr = 1'b0;
										if ((fencei_in_wb ? fencei_req_and_ack_q : fence_req_q)) begin
											ctrl_fsm_o[16] = 1'b1;
											ctrl_fsm_o[15] = 1'b1;
											ctrl_fsm_o[14] = 1'b1;
											ctrl_fsm_o[18] = 1'b0;
											if (id_ex_pipe_i[42])
												pipe_pc_mux_ctrl = 2'd2;
											else if (if_id_pipe_i[190])
												pipe_pc_mux_ctrl = 2'd1;
											else
												pipe_pc_mux_ctrl = 2'd0;
											ctrl_fsm_o[198] = 1'b1;
											ctrl_fsm_o[195-:4] = 4'b0110;
											fence_req_set = 1'b0;
											fence_req_clr = 1'b1;
										end
									end
									else if (dret_in_wb) begin
										ctrl_fsm_o[16] = 1'b1;
										ctrl_fsm_o[15] = 1'b1;
										ctrl_fsm_o[14] = 1'b1;
										ctrl_fsm_o[195-:4] = 4'b0010;
										ctrl_fsm_o[198] = 1'b1;
										ctrl_fsm_o[39] = 1'b1;
										single_step_halt_if_n = 1'b0;
										debug_mode_n = 1'b0;
									end
									else if (csr_wr_in_wb_flush_i) begin
										ctrl_fsm_o[21] = 1'b1;
										ctrl_fsm_o[20] = 1'b1;
										ctrl_fsm_o[19] = 1'b1;
										csr_flush_ack_n = 1'b1;
									end
									else if (csr_flush_ack_q) begin
										ctrl_fsm_o[16] = 1'b1;
										ctrl_fsm_o[15] = 1'b1;
										ctrl_fsm_o[14] = 1'b1;
										if (id_ex_pipe_i[42])
											pipe_pc_mux_ctrl = 2'd2;
										else if (if_id_pipe_i[190])
											pipe_pc_mux_ctrl = 2'd1;
										else
											pipe_pc_mux_ctrl = 2'd0;
										ctrl_fsm_o[198] = 1'b1;
										ctrl_fsm_o[195-:4] = 4'b0110;
									end
									else if (branch_taken_ex) begin
										ctrl_fsm_o[16] = 1'b1;
										ctrl_fsm_o[15] = 1'b1;
										ctrl_fsm_o[195-:4] = 4'b0101;
										ctrl_fsm_o[198] = 1'b1;
										branch_taken_n = 1'b1;
									end
									else if (jump_taken_id) begin
										ctrl_fsm_o[16] = 1'b1;
										if (sys_mret_id) begin
											if (mcause_i[30]) begin
												ctrl_fsm_o[198] = 1'b1;
												ctrl_fsm_o[197] = 1'b1;
												ctrl_fsm_o[195-:4] = 4'b0001;
												branch_taken_n = 1'b1;
												single_step_halt_if_n = 1'b0;
											end
											else begin
												ctrl_fsm_o[195-:4] = 4'b0001;
												ctrl_fsm_o[198] = 1'b1;
												branch_taken_n = 1'b1;
											end
										end
										else begin
											ctrl_fsm_o[195-:4] = (if_id_pipe_i[151] && !if_id_pipe_i[1] ? 4'b1111 : (if_id_pipe_i[151] && if_id_pipe_i[1] ? 4'b1110 : 4'b0100));
											ctrl_fsm_o[198] = 1'b1;
											ctrl_fsm_o[196] = if_id_pipe_i[151] && !if_id_pipe_i[1];
											branch_taken_n = 1'b1;
										end
									end
									else if (clic_ptr_in_id || mret_ptr_in_id) begin
										if (!(if_id_pipe_i[157] || (if_id_pipe_i[156-:2] != 2'h0))) begin
											if (!branch_taken_q) begin
												ctrl_fsm_o[198] = 1'b1;
												ctrl_fsm_o[195-:4] = 4'b1110;
												ctrl_fsm_o[16] = 1'b1;
												branch_taken_n = 1'b1;
											end
										end
									end
									if ((clic_ptr_in_id && id_valid_i) && ex_ready_i)
										clic_ptr_in_progress_id_clear = 1'b1;
									if ((mret_in_wb && !ctrl_fsm_o[13]) && !ctrl_fsm_o[18])
										ctrl_fsm_o[40] = !debug_mode_q;
								end
								if (pending_single_step || etrigger_in_wb) begin
									if (single_step_allowed) begin
										ctrl_fsm_ns = 2'd3;
										if (etrigger_in_wb)
											debug_cause_n = cv32e40x_pkg_DBG_CAUSE_TRIGGER;
										else
											debug_cause_n = cv32e40x_pkg_DBG_CAUSE_STEP;
									end
								end
							end
							2'd2: begin
								ctrl_fsm_o[200] = 1'b0;
								ctrl_fsm_o[199] = 1'b0;
								ctrl_fsm_o[17] = 1'b1;
								if (ctrl_fsm_o[105]) begin
									ctrl_fsm_ns = 2'd1;
									ctrl_fsm_o[200] = 1'b1;
									ctrl_fsm_o[20] = 1'b1;
									ctrl_fsm_o[17] = 1'b0;
								end
							end
							2'd3: begin
								ctrl_fsm_o[149] = 1'b1;
								single_step_halt_if_n = 1'b0;
								ctrl_fsm_o[198] = 1'b1;
								ctrl_fsm_o[195-:4] = 4'b1010;
								ctrl_fsm_o[38] = !(ebreak_in_wb && debug_mode_q);
								ctrl_fsm_o[143] = 1'b1;
								if (debug_cause_q == cv32e40x_pkg_DBG_CAUSE_TRIGGER) begin
									ctrl_fsm_o[110] = 1'b1;
									ctrl_fsm_o[142-:32] = ex_wb_pipe_i[157-:32] | wpt_match_wb_i;
								end
								if (debug_cause_q != cv32e40x_pkg_DBG_CAUSE_STEP) begin
									ctrl_fsm_o[16] = 1'b1;
									ctrl_fsm_o[15] = 1'b1;
									ctrl_fsm_o[14] = 1'b1;
									ctrl_fsm_o[13] = !((debug_cause_q == cv32e40x_pkg_DBG_CAUSE_EBREAK) || (debug_cause_q == cv32e40x_pkg_DBG_CAUSE_TRIGGER));
									if (ex_wb_pipe_i[53])
										pipe_pc_mux_ctrl = 2'd3;
									else if (id_ex_pipe_i[42])
										pipe_pc_mux_ctrl = 2'd2;
									else if (if_id_pipe_i[190])
										pipe_pc_mux_ctrl = 2'd1;
									else
										pipe_pc_mux_ctrl = 2'd0;
								end
								else begin
									ctrl_fsm_o[16] = 1'b1;
									ctrl_fsm_o[15] = 1'b0;
									ctrl_fsm_o[14] = 1'b0;
									ctrl_fsm_o[13] = 1'b0;
									pipe_pc_mux_ctrl = 2'd0;
								end
								debug_mode_n = 1'b1;
								ctrl_fsm_ns = 2'd1;
							end
							default: begin
								ctrl_fsm_o[199] = 1'b0;
								ctrl_fsm_ns = 2'd0;
							end
						endcase
						if (((!ctrl_fsm_o[147] && dcsr_i[2]) && !single_step_halt_if_q) && ((if_valid_i && id_ready_i) && (last_op_if_i || abort_op_if_i)))
							single_step_halt_if_n = 1'b1;
						if ((branch_taken_q && if_valid_i) && id_ready_i)
							branch_taken_n = 1'b0;
					end
					wire [1:1] sv2v_tmp_7571D;
					assign sv2v_tmp_7571D = ((pending_nmi || irq_wu_ctrl_i) || pending_async_debug) || (wfe_in_wb && wu_wfe_i);
					always @(*) ctrl_fsm_o[105] = sv2v_tmp_7571D;
					wire [1:1] sv2v_tmp_A95F4;
					assign sv2v_tmp_A95F4 = debug_mode_q || dcsr_i[2];
					always @(*) ctrl_fsm_o[109] = sv2v_tmp_A95F4;
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0) begin
							ctrl_fsm_cs <= 2'd0;
							debug_mode_q <= 1'b0;
							debug_cause_q <= cv32e40x_pkg_DBG_CAUSE_NONE;
						end
						else begin
							ctrl_fsm_cs <= ctrl_fsm_ns;
							debug_mode_q <= debug_mode_n;
							debug_cause_q <= debug_cause_n;
						end
					wire [1:1] sv2v_tmp_2291F;
					assign sv2v_tmp_2291F = debug_mode_n;
					always @(*) ctrl_fsm_o[148] = sv2v_tmp_2291F;
					wire [1:1] sv2v_tmp_3B68F;
					assign sv2v_tmp_3B68F = debug_mode_q;
					always @(*) ctrl_fsm_o[147] = sv2v_tmp_3B68F;
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0) begin
							nmi_pending_q <= 1'b0;
							nmi_is_store_q <= 1'b0;
						end
						else if (lsu_err_wb_i[1] && !nmi_pending_q) begin
							nmi_pending_q <= 1'b1;
							nmi_is_store_q <= lsu_err_wb_i[0];
						end
						else if (ctrl_fsm_o[198] && (ctrl_fsm_o[195-:4] == 4'b1100))
							nmi_pending_q <= 1'b0;
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0) begin
							single_step_halt_if_q <= 1'b0;
							branch_taken_q <= 1'b0;
							csr_flush_ack_q <= 1'b0;
						end
						else begin
							single_step_halt_if_q <= single_step_halt_if_n;
							branch_taken_q <= branch_taken_n;
							csr_flush_ack_q <= csr_flush_ack_n;
						end
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0)
							interrupt_blanking_q <= 1'b0;
						else
							interrupt_blanking_q <= ex_wb_pipe_i[53] && ex_wb_pipe_i[158];
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0) begin
							fence_req_q <= 1'b0;
							fencei_req_and_ack_q <= 1'b0;
						end
						else begin
							fencei_req_and_ack_q <= fencei_flush_req_o && fencei_flush_ack_i;
							if (fence_req_clr || (fencei_flush_req_o && fencei_flush_ack_i))
								fence_req_q <= 1'b0;
							else if (fence_req_set)
								fence_req_q <= 1'b1;
						end
					assign fencei_flush_req_o = (fencei_in_wb ? fence_req_q : 1'b0);
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0)
							wb_counter_event <= 1'b0;
						else if (((ex_valid_i && wb_ready_i) && last_op_ex_i) && !id_ex_pipe_i[46])
							wb_counter_event <= 1'b1;
						else if (!ctrl_fsm_o[18] && !ctrl_fsm_o[17])
							wb_counter_event <= 1'b0;
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0)
							sequence_in_progress_wb <= 1'b0;
						else if (!sequence_in_progress_wb) begin
							if ((wb_valid_i && ex_wb_pipe_i[3]) && !(last_op_wb_i || abort_op_wb_i))
								sequence_in_progress_wb <= 1'b1;
						end
						else begin
							if (wb_valid_i && (last_op_wb_i || abort_op_wb_i))
								sequence_in_progress_wb <= 1'b0;
							if ((ex_wb_pipe_i[53] && |wpt_match_wb_i) && abort_op_wb_i)
								sequence_in_progress_wb <= 1'b0;
						end
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0)
							sequence_in_progress_id <= 1'b0;
						else begin
							if (!sequence_in_progress_id) begin
								if (((id_valid_i && ex_ready_i) && first_op_id_i) && !(last_op_id_i || abort_op_id_i))
									sequence_in_progress_id <= 1'b1;
							end
							else if ((id_valid_i && ex_ready_i) && (last_op_id_i || abort_op_id_i))
								sequence_in_progress_id <= 1'b0;
							if (ctrl_fsm_o[15])
								sequence_in_progress_id <= 1'b0;
						end
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0)
							clic_ptr_in_progress_id <= 1'b0;
						else if (!clic_ptr_in_progress_id) begin
							if (clic_ptr_in_progress_id_set)
								clic_ptr_in_progress_id <= 1'b1;
						end
						else if (clic_ptr_in_progress_id_clear)
							clic_ptr_in_progress_id <= 1'b0;
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0) begin
							woke_to_debug_q <= 1'b0;
							woke_to_interrupt_q <= 1'b0;
						end
						else begin
							woke_to_debug_q <= ((ctrl_fsm_cs == 2'd2) && debug_req_i) && !pending_nmi;
							woke_to_interrupt_q <= ((ctrl_fsm_cs == 2'd2) && irq_wu_ctrl_i) && !(pending_nmi || debug_req_i);
						end
					always @(posedge clk or negedge rst_n)
						if (rst_n == 1'b0)
							debug_fsm_cs <= 3'b001;
						else
							debug_fsm_cs <= debug_fsm_ns;
					always @(*) begin
						if (_sv2v_0)
							;
						debug_fsm_ns = debug_fsm_cs;
						case (debug_fsm_cs)
							3'b001:
								if (debug_mode_n || (ctrl_fsm_ns == 2'd1)) begin
									if (debug_mode_n)
										debug_fsm_ns = 3'b100;
									else
										debug_fsm_ns = 3'b010;
								end
							3'b010:
								if (debug_mode_n)
									debug_fsm_ns = 3'b100;
							3'b100:
								if (!debug_mode_n)
									debug_fsm_ns = 3'b010;
							default: debug_fsm_ns = 3'b001;
						endcase
					end
					localparam cv32e40x_pkg_HAVERESET_INDEX = 0;
					wire [1:1] sv2v_tmp_E6245;
					assign sv2v_tmp_E6245 = debug_fsm_cs[cv32e40x_pkg_HAVERESET_INDEX];
					always @(*) ctrl_fsm_o[108] = sv2v_tmp_E6245;
					localparam cv32e40x_pkg_RUNNING_INDEX = 1;
					wire [1:1] sv2v_tmp_478F4;
					assign sv2v_tmp_478F4 = debug_fsm_cs[cv32e40x_pkg_RUNNING_INDEX];
					always @(*) ctrl_fsm_o[107] = sv2v_tmp_478F4;
					localparam cv32e40x_pkg_HALTED_INDEX = 2;
					wire [1:1] sv2v_tmp_FD7E1;
					assign sv2v_tmp_FD7E1 = debug_fsm_cs[cv32e40x_pkg_HALTED_INDEX];
					always @(*) ctrl_fsm_o[106] = sv2v_tmp_FD7E1;
					if (X_EXT) begin : x_ext
						reg commit_valid_q;
						reg commit_kill_q;
						wire kill_rejected;
						assign greyhound_soc.ext_if.commit_valid = ((!ctrl_fsm_o[19] || ctrl_fsm_o[14]) && (id_ex_pipe_i[39] && id_ex_pipe_i[42])) && !commit_valid_q;
						assign greyhound_soc.ext_if.commit[4-:4] = id_ex_pipe_i[35-:32];
						assign greyhound_soc.ext_if.commit[0] = (xif_csr_error_i || ctrl_fsm_o[14]) || kill_rejected;
						assign kill_rejected = (id_ex_pipe_i[39] && !id_ex_pipe_i[3]) && id_ex_pipe_i[42];
						wire [1:1] sv2v_tmp_24E0E;
						assign sv2v_tmp_24E0E = greyhound_soc.ext_if.commit[0] || commit_kill_q;
						always @(*) ctrl_fsm_o[12] = sv2v_tmp_24E0E;
						always @(posedge clk or negedge rst_n) begin : commit_valid_ctrl
							if (rst_n == 1'b0) begin
								commit_valid_q <= 1'b0;
								commit_kill_q <= 1'b0;
							end
							else if ((ex_valid_i && wb_ready_i) || ctrl_fsm_o[14]) begin
								commit_valid_q <= 1'b0;
								commit_kill_q <= 1'b0;
							end
							else begin
								commit_valid_q <= greyhound_soc.ext_if.commit_valid || commit_valid_q;
								commit_kill_q <= greyhound_soc.ext_if.commit[0] || commit_kill_q;
							end
						end
					end
					else begin : no_x_ext
						assign greyhound_soc.ext_if.commit_valid = 1'sb0;
						assign greyhound_soc.ext_if.commit[4-:4] = 1'sb0;
						assign greyhound_soc.ext_if.commit[0] = 1'sb0;
						wire [1:1] sv2v_tmp_19022;
						assign sv2v_tmp_19022 = 1'b0;
						always @(*) ctrl_fsm_o[12] = sv2v_tmp_19022;
					end
					initial _sv2v_0 = 0;
				end
				assign controller_fsm_i.clk = clk;
				assign controller_fsm_i.rst_n = rst_n;
				assign controller_fsm_i.fetch_enable_i = fetch_enable_i;
				assign controller_fsm_i.ctrl_byp_i = ctrl_byp_o;
				assign controller_fsm_i.if_valid_i = if_valid_i;
				assign controller_fsm_i.pc_if_i = pc_if_i;
				assign controller_fsm_i.last_op_if_i = last_op_if_i;
				assign controller_fsm_i.abort_op_if_i = abort_op_if_i;
				assign controller_fsm_i.if_id_pipe_i = if_id_pipe_i;
				assign controller_fsm_i.id_ready_i = id_ready_i;
				assign controller_fsm_i.id_valid_i = id_valid_i;
				assign controller_fsm_i.alu_jmp_id_i = alu_jmp_id_i;
				assign controller_fsm_i.sys_mret_id_i = sys_mret_id_i;
				assign controller_fsm_i.alu_en_id_i = alu_en_id_i;
				assign controller_fsm_i.sys_en_id_i = sys_en_id_i;
				assign controller_fsm_i.first_op_id_i = first_op_id_i;
				assign controller_fsm_i.last_op_id_i = last_op_id_i;
				assign controller_fsm_i.abort_op_id_i = abort_op_id_i;
				assign controller_fsm_i.id_ex_pipe_i = id_ex_pipe_i;
				assign controller_fsm_i.branch_decision_ex_i = branch_decision_ex_i;
				assign controller_fsm_i.ex_ready_i = ex_ready_i;
				assign controller_fsm_i.ex_valid_i = ex_valid_i;
				assign controller_fsm_i.last_op_ex_i = last_op_ex_i;
				assign controller_fsm_i.ex_wb_pipe_i = ex_wb_pipe_i;
				assign controller_fsm_i.lsu_err_wb_i = lsu_err_wb_i;
				assign controller_fsm_i.mpu_status_wb_i = mpu_status_wb_i;
				assign controller_fsm_i.align_status_wb_i = align_status_wb_i;
				assign controller_fsm_i.data_stall_wb_i = data_stall_wb_i;
				assign controller_fsm_i.wb_ready_i = wb_ready_i;
				assign controller_fsm_i.wb_valid_i = wb_valid_i;
				assign controller_fsm_i.last_op_wb_i = last_op_wb_i;
				assign controller_fsm_i.abort_op_wb_i = abort_op_wb_i;
				assign controller_fsm_i.lsu_valid_wb_i = lsu_valid_wb_i;
				assign controller_fsm_i.wpt_match_wb_i = wpt_match_wb_i;
				assign controller_fsm_i.lsu_interruptible_i = lsu_interruptible_i;
				assign controller_fsm_i.csr_wr_in_wb_flush_i = csr_wr_in_wb_flush_i;
				assign controller_fsm_i.irq_req_ctrl_i = irq_req_ctrl_i;
				assign controller_fsm_i.irq_id_ctrl_i = irq_id_ctrl_i;
				assign controller_fsm_i.irq_wu_ctrl_i = irq_wu_ctrl_i;
				assign controller_fsm_i.irq_clic_shv_i = irq_clic_shv_i;
				assign controller_fsm_i.irq_clic_level_i = irq_clic_level_i;
				assign controller_fsm_i.irq_clic_priv_i = irq_clic_priv_i;
				assign controller_fsm_i.wu_wfe_i = wu_wfe_i;
				assign controller_fsm_i.mtvec_mode_i = mtvec_mode_i;
				assign controller_fsm_i.etrigger_wb_i = etrigger_wb_i;
				assign controller_fsm_i.debug_req_i = debug_req_i;
				assign controller_fsm_i.dcsr_i = dcsr_i;
				assign controller_fsm_i.mcause_i = mcause_i;
				assign controller_fsm_i.mintstatus_i = mintstatus_i;
				assign controller_fsm_i.fencei_flush_ack_i = fencei_flush_ack_i;
				assign fencei_flush_req_o = controller_fsm_i.fencei_flush_req_o;
				assign controller_fsm_i.lsu_busy_i = lsu_busy_i;
				assign ctrl_fsm_o = controller_fsm_i.ctrl_fsm_o;
				assign controller_fsm_i.xif_csr_error_i = xif_csr_error_i;
				cv32e40x_controller_bypass #(
					.REGFILE_NUM_READ_PORTS(REGFILE_NUM_READ_PORTS),
					.A_EXT(A_EXT)
				) bypass_i(
					.if_id_pipe_i(if_id_pipe_i),
					.id_ex_pipe_i(id_ex_pipe_i),
					.ex_wb_pipe_i(ex_wb_pipe_i),
					.rf_re_id_i(rf_re_id_i),
					.rf_raddr_id_i(rf_raddr_id_i),
					.alu_jmpr_id_i(alu_jmpr_id_i),
					.sys_mret_id_i(sys_mret_id_i),
					.csr_en_raw_id_i(csr_en_raw_id_i),
					.csr_counter_read_i(csr_counter_read_i),
					.csr_mnxti_read_i(csr_mnxti_read_i),
					.wb_ready_i(wb_ready_i),
					.csr_irq_enable_write_i(csr_irq_enable_write_i),
					.lsu_atomic_ex_i(lsu_atomic_ex_i),
					.lsu_atomic_wb_i(lsu_atomic_wb_i),
					.lsu_bus_busy_i(lsu_bus_busy_i),
					.csr_hz_i(csr_hz_i),
					.ctrl_byp_o(ctrl_byp_o)
				);
			end
			assign controller_i.clk = clk;
			assign controller_i.rst_n = rst_ni;
			assign controller_i.fetch_enable_i = fetch_enable;
			assign controller_i.id_ex_pipe_i = id_ex_pipe;
			assign controller_i.csr_counter_read_i = csr_counter_read;
			assign controller_i.csr_mnxti_read_i = csr_mnxti_read;
			assign controller_i.csr_irq_enable_write_i = csr_irq_enable_write;
			assign controller_i.ex_wb_pipe_i = ex_wb_pipe;
			assign controller_i.mpu_status_wb_i = mpu_status_wb;
			assign controller_i.wpt_match_wb_i = wpt_match_wb;
			assign controller_i.align_status_wb_i = align_status_wb;
			assign controller_i.last_op_id_i = last_op_id;
			assign controller_i.last_op_ex_i = last_op_ex;
			assign controller_i.last_op_wb_i = last_op_wb;
			assign controller_i.abort_op_id_i = abort_op_id;
			assign controller_i.abort_op_wb_i = abort_op_wb;
			assign controller_i.if_valid_i = if_valid;
			assign controller_i.pc_if_i = pc_if;
			assign controller_i.last_op_if_i = last_op_if;
			assign controller_i.abort_op_if_i = abort_op_if;
			assign controller_i.if_id_pipe_i = if_id_pipe;
			assign controller_i.alu_jmp_id_i = alu_jmp_id;
			assign controller_i.alu_jmpr_id_i = alu_jmpr_id;
			assign controller_i.alu_en_id_i = alu_en_id;
			assign controller_i.sys_en_id_i = sys_en_id;
			assign controller_i.sys_mret_id_i = sys_mret_insn_id;
			assign controller_i.csr_en_raw_id_i = csr_en_raw_id;
			assign controller_i.first_op_id_i = first_op_id;
			assign controller_i.data_stall_wb_i = data_stall_wb;
			assign controller_i.lsu_err_wb_i = lsu_err_wb;
			assign controller_i.lsu_busy_i = lsu_busy;
			assign controller_i.lsu_bus_busy_i = lsu_bus_busy;
			assign controller_i.lsu_interruptible_i = lsu_interruptible;
			assign controller_i.lsu_valid_wb_i = lsu_valid_wb;
			assign controller_i.lsu_atomic_ex_i = lsu_atomic_ex;
			assign controller_i.lsu_atomic_wb_i = lsu_atomic_wb;
			assign controller_i.branch_decision_ex_i = branch_decision_ex;
			assign controller_i.irq_wu_ctrl_i = irq_wu_ctrl;
			assign controller_i.irq_req_ctrl_i = irq_req_ctrl;
			assign controller_i.irq_id_ctrl_i = irq_id_ctrl;
			assign controller_i.irq_clic_shv_i = irq_clic_shv;
			assign controller_i.irq_clic_level_i = irq_clic_level;
			assign controller_i.irq_clic_priv_i = irq_clic_priv;
			assign controller_i.wu_wfe_i = wu_wfe_i;
			assign controller_i.mtvec_mode_i = mtvec_mode;
			assign controller_i.mcause_i = mcause;
			assign controller_i.mintstatus_i = mintstatus;
			assign controller_i.csr_hz_i = csr_hz;
			assign controller_i.etrigger_wb_i = etrigger_wb;
			assign controller_i.csr_wr_in_wb_flush_i = csr_wr_in_wb_flush;
			assign controller_i.debug_req_i = debug_req_gated;
			assign controller_i.dcsr_i = dcsr;
			assign controller_i.rf_re_id_i = rf_re_id;
			assign controller_i.rf_raddr_id_i = rf_raddr_id;
			assign controller_i.fencei_flush_ack_i = fencei_flush_ack_i;
			assign fencei_flush_req_o = controller_i.fencei_flush_req_o;
			assign controller_i.id_ready_i = id_ready;
			assign controller_i.id_valid_i = id_valid;
			assign controller_i.ex_ready_i = ex_ready;
			assign controller_i.ex_valid_i = ex_valid;
			assign controller_i.wb_ready_i = wb_ready;
			assign controller_i.wb_valid_i = wb_valid;
			assign ctrl_byp = controller_i.ctrl_byp_o;
			assign ctrl_fsm = controller_i.ctrl_fsm_o;
			assign controller_i.xif_csr_error_i = xif_csr_error_ex;
			if (CLIC) begin : gen_clic_interrupt
				assign mip = 1'sb0;
				cv32e40x_clic_int_controller #(.CLIC_ID_WIDTH(CLIC_ID_WIDTH)) clic_int_controller_i(
					.clk(clk),
					.rst_n(rst_ni),
					.clic_irq_i(clic_irq_i),
					.clic_irq_id_i(clic_irq_id_i),
					.clic_irq_level_i(clic_irq_level_i),
					.clic_irq_priv_i(clic_irq_priv_i),
					.clic_irq_shv_i(clic_irq_shv_i),
					.irq_req_ctrl_o(irq_req_ctrl),
					.irq_id_ctrl_o(irq_id_ctrl),
					.irq_wu_ctrl_o(irq_wu_ctrl),
					.irq_clic_shv_o(irq_clic_shv),
					.irq_clic_level_o(irq_clic_level),
					.irq_clic_priv_o(irq_clic_priv),
					.mstatus_i(mstatus),
					.mintthresh_th_i(mintthresh_th),
					.mintstatus_i(mintstatus),
					.mcause_i(mcause),
					.priv_lvl_i(priv_lvl),
					.mnxti_irq_pending_o(mnxti_irq_pending),
					.mnxti_irq_id_o(mnxti_irq_id),
					.mnxti_irq_level_o(mnxti_irq_level)
				);
				wire unused_clic_signals;
				assign unused_clic_signals = |mie;
			end
			else begin : gen_basic_interrupt
				cv32e40x_int_controller int_controller_i(
					.clk(clk),
					.rst_n(rst_ni),
					.irq_i(irq_i),
					.irq_req_ctrl_o(irq_req_ctrl),
					.irq_id_ctrl_o(irq_id_ctrl[4:0]),
					.irq_wu_ctrl_o(irq_wu_ctrl),
					.mie_i(mie),
					.mstatus_i(mstatus),
					.priv_lvl_i(priv_lvl),
					.mip_o(mip)
				);
				assign irq_id_ctrl[9:5] = 5'b00000;
				assign irq_clic_shv = 1'b0;
				assign irq_clic_level = 8'h00;
				assign irq_clic_priv = 2'b00;
				assign mnxti_irq_pending = 1'b0;
				assign mnxti_irq_id = 1'sb0;
				assign mnxti_irq_level = 1'sb0;
			end
			assign rf_we[0] = rf_we_wb;
			assign rf_waddr[0+:cv32e40x_pkg_REGFILE_ADDR_WIDTH] = rf_waddr_wb;
			assign rf_wdata[0+:cv32e40x_pkg_REGFILE_DATA_WIDTH] = rf_wdata_wb;
			cv32e40x_register_file_wrapper #(
				.REGFILE_NUM_READ_PORTS(REGFILE_NUM_READ_PORTS),
				.RV32(RV32)
			) register_file_wrapper_i(
				.clk(clk),
				.rst_n(rst_ni),
				.raddr_i(rf_raddr_id),
				.rdata_o(rf_rdata_id),
				.waddr_i(rf_waddr),
				.wdata_i(rf_wdata),
				.we_i(rf_we)
			);
			assign unused_signals = ((((dbg_ack | irq_ack) | (|irq_id)) | (|irq_level)) | (|irq_priv)) | irq_shv;
		end
	endgenerate
	assign cv32e40x_core.clk_i = clk_i;
	assign cv32e40x_core.rst_ni = rst_ni;
	assign cv32e40x_core.scan_cg_en_i = 1'b0;
	assign cv32e40x_core.boot_addr_i = soc_pkg_BootAddr;
	assign cv32e40x_core.dm_exception_addr_i = 1'sb0;
	assign cv32e40x_core.dm_halt_addr_i = 1'sb0;
	assign cv32e40x_core.mhartid_i = soc_pkg_HartId;
	assign cv32e40x_core.mimpid_patch_i = 4'b0000;
	assign cv32e40x_core.mtvec_addr_i = soc_pkg_MtvecAddr;
	assign core_instr_obi_req[0] = cv32e40x_core.instr_req_o;
	assign cv32e40x_core.instr_gnt_i = core_instr_obi_rsp[1];
	assign cv32e40x_core.instr_rvalid_i = core_instr_obi_rsp[0];
	assign core_instr_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)] = cv32e40x_core.instr_addr_o;
	assign cv32e40x_core.instr_rdata_i = core_instr_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)];
	assign cv32e40x_core.instr_err_i = core_instr_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
	assign core_data_obi_req[0] = cv32e40x_core.data_req_o;
	assign cv32e40x_core.data_gnt_i = core_data_obi_rsp[1];
	assign cv32e40x_core.data_rvalid_i = core_data_obi_rsp[0];
	assign core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)] = cv32e40x_core.data_addr_o;
	assign core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)] = cv32e40x_core.data_be_o;
	assign core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))] = cv32e40x_core.data_we_o;
	assign core_data_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)] = cv32e40x_core.data_wdata_o;
	assign cv32e40x_core.data_rdata_i = core_data_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)];
	assign cv32e40x_core.data_err_i = core_data_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
	assign cv32e40x_core.data_exokay_i = 1'b1;
	assign cv32e40x_core.time_i = time_counter;
	assign cv32e40x_core.irq_i = irq;
	assign cv32e40x_core.wu_wfe_i = 1'b0;
	assign cv32e40x_core.clic_irq_i = 1'b0;
	assign cv32e40x_core.clic_irq_id_i = 1'sb0;
	assign cv32e40x_core.clic_irq_level_i = 8'h00;
	assign cv32e40x_core.clic_irq_priv_i = 2'h0;
	assign cv32e40x_core.clic_irq_shv_i = 1'b0;
	assign cv32e40x_core.fencei_flush_ack_i = 1'b1;
	assign cv32e40x_core.debug_req_i = 1'b0;
	assign cv32e40x_core.fetch_enable_i = fetch_enable_i;
	assign core_sleep_o = cv32e40x_core.core_sleep_o;
	obi_mux_61AC8_B2049 #(
		.sbr_port_a_chan_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.sbr_port_obi_req_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.sbr_port_obi_rsp_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.sbr_port_r_chan_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.SbrPortObiCfg(soc_pkg_SbrObiCfg),
		.NumSbrPorts(soc_pkg_NumManagers),
		.NumMaxTrans(1)
	) i_obi_mux(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.testmode_i(1'b0),
		.sbr_ports_req_i(mgrs_mux_obi_req),
		.sbr_ports_rsp_o(mgrs_mux_obi_rsp),
		.mgr_port_req_o(mux_demux_obi_req),
		.mgr_port_rsp_i(mux_demux_obi_rsp)
	);
	function automatic [31:0] cf_math_pkg_idx_width;
		input reg [31:0] num_idx;
		cf_math_pkg_idx_width = (num_idx > 32'd1 ? $unsigned($clog2(num_idx)) : 32'd1);
	endfunction
	reg [cf_math_pkg_idx_width(soc_pkg_NumPeriphs) - 1:0] periph_idx;
	localparam [575:0] soc_pkg_periph_addr_map = {32'd1, soc_pkg_FlashAddrOffset, soc_pkg_FlashAddrOffset + soc_pkg_FlashAddrRange, 32'd2, soc_pkg_SramAddrOffset, soc_pkg_SramAddrOffset + soc_pkg_SramAddrRange, 32'd3, soc_pkg_PsramAddrOffset, soc_pkg_PsramAddrOffset + soc_pkg_PsramAddrRange, 32'd4, soc_pkg_Uart0AddrOffset, soc_pkg_Uart0AddrOffset + soc_pkg_Uart0AddrRange, 32'd5, soc_pkg_FabricConfigAddrOffset, soc_pkg_FabricConfigAddrOffset + soc_pkg_FabricConfigAddrRange, 32'd6, soc_pkg_FabricAddrOffset, soc_pkg_FabricAddrOffset + soc_pkg_FabricAddrRange};
	always @(*) begin
		if (_sv2v_0)
			;
		periph_idx = 0;
		begin : sv2v_autoblock_6
			reg signed [31:0] i;
			for (i = 0; i < soc_pkg_NumPeriphRules; i = i + 1)
				if ((mux_demux_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)] >= soc_pkg_periph_addr_map[(i * 96) + 63-:32]) && ((mux_demux_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)] < soc_pkg_periph_addr_map[(i * 96) + 31-:32]) || (soc_pkg_periph_addr_map[(i * 96) + 31-:32] == {32 {1'sb0}})))
					periph_idx = soc_pkg_periph_addr_map[(i * 96) + 95-:32];
		end
	end
	wire [31:0] mux_demux_obi_req_a_addr;
	assign mux_demux_obi_req_a_addr = mux_demux_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)];
	obi_demux_02C7A_C1843 #(
		.obi_req_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.obi_rsp_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.ObiCfg(soc_pkg_SbrObiCfg),
		.NumMgrPorts(soc_pkg_NumPeriphs),
		.NumMaxTrans(1)
	) i_obi_demux(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.sbr_port_select_i(periph_idx),
		.sbr_port_req_i(mux_demux_obi_req),
		.sbr_port_rsp_o(mux_demux_obi_rsp),
		.mgr_ports_req_o(all_periph_obi_req),
		.mgr_ports_rsp_i(all_periph_obi_rsp)
	);
	obi_err_sbr_DE7BC_23729 #(
		.obi_req_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.obi_rsp_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.ObiCfg(soc_pkg_SbrObiCfg),
		.NumMaxTrans(1),
		.RspData(32'hbadcab1e)
	) i_periph_err(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.testmode_i(1'b0),
		.obi_req_i(error_obi_req),
		.obi_rsp_o(error_obi_rsp)
	);
	wire flash_HSEL;
	wire [31:0] flash_HADDR;
	wire [1:0] flash_HTRANS;
	wire flash_HWRITE;
	wire flash_HREADY;
	wire flash_HREADYOUT;
	wire [31:0] flash_HRDATA;
	obi2ahbm_adapter i_obi2ahbm_adapter_flash(
		.hclk_i(clk_i),
		.hresetn_i(rst_ni),
		.haddr_o(flash_HADDR),
		.hburst_o(),
		.hmastlock_o(),
		.hprot_o(),
		.hsize_o(),
		.htrans_o(flash_HTRANS),
		.hwdata_o(),
		.hwrite_o(flash_HWRITE),
		.hrdata_i(flash_HRDATA),
		.hready_i(flash_HREADYOUT),
		.hresp_i(1'b0),
		.data_req_i(flash_obi_req[0]),
		.data_gnt_o(flash_obi_rsp[1]),
		.data_rvalid_o(flash_obi_rsp[0]),
		.data_we_i(flash_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))]),
		.data_be_i(flash_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)]),
		.data_addr_i(flash_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)]),
		.data_wdata_i(flash_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)]),
		.data_rdata_o(flash_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)]),
		.data_err_o(flash_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)]),
		.pending_dbus_xfer_i(1'b0),
		.priv_mode_i(1'b1)
	);
	assign flash_HSEL = periph_idx == 32'sd1;
	assign flash_HREADY = flash_HREADYOUT;
	assign flash_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (soc_pkg_SbrObiCfg[229-:32] + 1)) + ((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))] = flash_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))];
	assign flash_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)] = 1'b0;
	EF_QSPI_XIP_CTRL_AHBL #(
		.NUM_LINES(8),
		.LINE_SIZE(32),
		.RESET_CYCLES(999)
	) i_EF_QSPI_XIP_CTRL_AHBL(
		.HCLK(clk_i),
		.HRESETn(rst_ni),
		.HSEL(flash_HSEL),
		.HADDR(flash_HADDR),
		.HTRANS(flash_HTRANS),
		.HWRITE(flash_HWRITE),
		.HREADY(flash_HREADY),
		.HREADYOUT(flash_HREADYOUT),
		.HRDATA(flash_HRDATA),
		.sck(flash_sck),
		.ce_n(flash_ce_n),
		.din(flash_din),
		.dout(flash_dout),
		.douten(flash_douten)
	);
	wire bank_gnt;
	wire [soc_pkg_SbrObiCfg[293-:32] - 1:0] bank_byte_addr;
	obi_sram_shim_1442A_2FAFE #(
		.obi_req_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.obi_rsp_t_soc_pkg_SbrObiCfg(soc_pkg_SbrObiCfg),
		.ObiCfg(soc_pkg_SbrObiCfg)
	) i_sram_shim(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.obi_req_i(sram_obi_req),
		.obi_rsp_o(sram_obi_rsp),
		.req_o(bank_req_o),
		.we_o(bank_we_o),
		.addr_o(bank_byte_addr),
		.wdata_o(bank_wdata_o),
		.be_o(bank_be_o),
		.gnt_i(bank_gnt),
		.rdata_i(bank_rdata_i)
	);
	assign bank_word_addr_o = bank_byte_addr[soc_pkg_SbrObiCfg[293-:32] - 1:2];
	assign bank_gnt = 1'b1;
	wire psram_HSEL;
	wire [31:0] psram_HADDR;
	wire [1:0] psram_HTRANS;
	wire [2:0] psram_HSIZE;
	wire [31:0] psram_HWDATA;
	wire psram_HWRITE;
	wire psram_HREADY;
	wire psram_HREADYOUT;
	wire [31:0] psram_HRDATA;
	obi2ahbm_adapter i_obi2ahbm_adapter_psram(
		.hclk_i(clk_i),
		.hresetn_i(rst_ni),
		.haddr_o(psram_HADDR),
		.hburst_o(),
		.hmastlock_o(),
		.hprot_o(),
		.hsize_o(psram_HSIZE),
		.htrans_o(psram_HTRANS),
		.hwdata_o(psram_HWDATA),
		.hwrite_o(psram_HWRITE),
		.hrdata_i(psram_HRDATA),
		.hready_i(psram_HREADYOUT),
		.hresp_i(1'b0),
		.data_req_i(psram_obi_req[0]),
		.data_gnt_o(psram_obi_rsp[1]),
		.data_rvalid_o(psram_obi_rsp[0]),
		.data_we_i(psram_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))]),
		.data_be_i(psram_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)]),
		.data_addr_i(psram_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)]),
		.data_wdata_i(psram_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)]),
		.data_rdata_o(psram_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)]),
		.data_err_o(psram_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)]),
		.pending_dbus_xfer_i(1'b0),
		.priv_mode_i(1'b1)
	);
	assign psram_HSEL = periph_idx == 32'sd3;
	assign psram_HREADY = psram_HREADYOUT;
	assign psram_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (soc_pkg_SbrObiCfg[229-:32] + 1)) + ((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))] = psram_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))];
	assign psram_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)] = 1'b0;
	EF_PSRAM_CTRL_AHBL i_EF_PSRAM_CTRL_AHBL(
		.HCLK(clk_i),
		.HRESETn(rst_ni),
		.HSEL(psram_HSEL),
		.HADDR(psram_HADDR),
		.HWDATA(psram_HWDATA),
		.HTRANS(psram_HTRANS),
		.HSIZE(psram_HSIZE),
		.HWRITE(psram_HWRITE),
		.HREADY(psram_HREADY),
		.HREADYOUT(psram_HREADYOUT),
		.HRDATA(psram_HRDATA),
		.sck(psram_sck),
		.ce_n(psram_ce_n),
		.din(psram_din),
		.dout(psram_dout),
		.douten(psram_douten)
	);
	wire uart0_HSEL;
	wire [31:0] uart0_HADDR;
	wire [1:0] uart0_HTRANS;
	wire [2:0] uart0_HSIZE;
	wire [31:0] uart0_HWDATA;
	wire uart0_HWRITE;
	wire uart0_HREADY;
	wire uart0_HREADYOUT;
	wire [31:0] uart0_HRDATA;
	obi2ahbm_adapter i_obi2ahbm_adapter_uart0(
		.hclk_i(clk_i),
		.hresetn_i(rst_ni),
		.haddr_o(uart0_HADDR),
		.hburst_o(),
		.hmastlock_o(),
		.hprot_o(),
		.hsize_o(uart0_HSIZE),
		.htrans_o(uart0_HTRANS),
		.hwdata_o(uart0_HWDATA),
		.hwrite_o(uart0_HWRITE),
		.hrdata_i(uart0_HRDATA),
		.hready_i(uart0_HREADYOUT),
		.hresp_i(1'b0),
		.data_req_i(uart0_obi_req[0]),
		.data_gnt_o(uart0_obi_rsp[1]),
		.data_rvalid_o(uart0_obi_rsp[0]),
		.data_we_i(uart0_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))]),
		.data_be_i(uart0_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)]),
		.data_addr_i(uart0_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)]),
		.data_wdata_i(uart0_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)]),
		.data_rdata_o(uart0_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)]),
		.data_err_o(uart0_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)]),
		.pending_dbus_xfer_i(1'b0),
		.priv_mode_i(1'b1)
	);
	assign uart0_HSEL = periph_idx == 32'sd4;
	assign uart0_HREADY = uart0_HREADYOUT;
	assign uart0_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (soc_pkg_SbrObiCfg[229-:32] + 1)) + ((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))] = uart0_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))];
	assign uart0_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)] = 1'b0;
	EF_UART_AHBL i_EF_UART_AHBL(
		.HCLK(clk_i),
		.HRESETn(rst_ni),
		.HSEL(uart0_HSEL),
		.HADDR(uart0_HADDR),
		.HWDATA(uart0_HWDATA),
		.HTRANS(uart0_HTRANS),
		.HWRITE(uart0_HWRITE),
		.HREADY(uart0_HREADY),
		.HREADYOUT(uart0_HREADYOUT),
		.HRDATA(uart0_HRDATA),
		.IRQ(uart0_irq),
		.rx(uart0_rx),
		.tx(uart0_tx)
	);
	localparam REG_XIF_OR_PERIPH = 4'd0;
	localparam REG_FABRIC_CONFIG_BUSY = 4'd4;
	localparam REG_BITSTREAM = 4'd8;
	localparam REG_TRIGGER_SLOT = 4'd12;
	wire [31:0] debug_fabric_config_req;
	wire [31:0] debug_fabric_config_addr;
	wire debug_fabric_config_we;
	wire [3:0] debug_fabric_config_be;
	wire [31:0] debug_fabric_config_wdata;
	wire [0:0] debug_fabric_config_aid;
	wire debug_fabric_config_a_optional;
	assign debug_fabric_config_req = fabric_config_obi_req[0];
	assign debug_fabric_config_addr = fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)];
	assign debug_fabric_config_we = fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))];
	assign debug_fabric_config_be = fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)];
	assign debug_fabric_config_wdata = fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)];
	assign debug_fabric_config_aid = fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))];
	assign debug_fabric_config_a_optional = fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
	wire debug_fabric_config_gnt;
	wire debug_fabric_config_rvalid;
	wire [31:0] debug_fabric_config_rdata;
	wire [0:0] debug_fabric_config_rid;
	wire debug_fabric_config_err;
	wire debug_fabric_config_r_optional;
	assign debug_fabric_config_gnt = fabric_config_obi_rsp[1];
	assign debug_fabric_config_rvalid = fabric_config_obi_rsp[0];
	assign debug_fabric_config_rdata = fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)];
	assign debug_fabric_config_rid = fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (soc_pkg_SbrObiCfg[229-:32] + 1)) + ((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))];
	assign debug_fabric_config_err = fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
	assign debug_fabric_config_r_optional = fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)];
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni) begin
			xif_or_periph_o <= 1'b0;
			bitstream_valid_o <= 1'b0;
			bitstream_data_o <= 1'sb0;
			warmboot_boot_o <= 1'b0;
			warmboot_slot_o <= 1'sb0;
		end
		else begin
			fabric_config_obi_rsp[0] <= 1'b0;
			bitstream_valid_o <= 1'b0;
			warmboot_boot_o <= 1'b0;
			if (fabric_config_obi_req[0]) begin
				fabric_config_obi_rsp[0] <= 1'b1;
				if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))]) begin
					if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 4))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 4) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 1))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 1) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))))] == REG_XIF_OR_PERIPH) begin
						if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - ((soc_pkg_SbrObiCfg[261-:32] / 8) - 1))) : 1 + (((soc_pkg_SbrObiCfg[261-:32] / 8) - 1) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))])
							xif_or_periph_o <= fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 1))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))];
					end
					if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 4))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 4) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 1))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 1) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))))] == REG_BITSTREAM) begin
						if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - ((soc_pkg_SbrObiCfg[261-:32] / 8) - 1))) : 1 + (((soc_pkg_SbrObiCfg[261-:32] / 8) - 1) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))])
							bitstream_data_o[7:0] <= fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 8))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 8) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 1))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))];
						if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - ((soc_pkg_SbrObiCfg[261-:32] / 8) - 2))) : 1 + (((soc_pkg_SbrObiCfg[261-:32] / 8) - 2) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))])
							bitstream_data_o[15:8] <= fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 16))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 16) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 9))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 9) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))];
						if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - ((soc_pkg_SbrObiCfg[261-:32] / 8) - 3))) : 1 + (((soc_pkg_SbrObiCfg[261-:32] / 8) - 3) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))])
							bitstream_data_o[23:16] <= fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 24))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 24) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 17))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 17) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))];
						if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - ((soc_pkg_SbrObiCfg[261-:32] / 8) - 4))) : 1 + (((soc_pkg_SbrObiCfg[261-:32] / 8) - 4) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))])
							bitstream_data_o[31:24] <= fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 32))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 32) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 25))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 25) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))];
						bitstream_valid_o <= 1'b1;
					end
					if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 4))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 4) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 1))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 1) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))))] == REG_TRIGGER_SLOT) begin
						if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - ((soc_pkg_SbrObiCfg[261-:32] / 8) - 1))) : 1 + (((soc_pkg_SbrObiCfg[261-:32] / 8) - 1) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))])
							warmboot_slot_o <= fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 4))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 4) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[261-:32] - 1))) : 1 + ((soc_pkg_SbrObiCfg[261-:32] - 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))];
						warmboot_boot_o <= 1'b1;
					end
				end
				else begin
					fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)] <= 1'sb0;
					if (fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 4))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 4) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 1))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 1) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))))] == REG_FABRIC_CONFIG_BUSY)
						fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)] <= {31'd0, fabric_config_busy_i};
				end
			end
		end
	wire [1:1] sv2v_tmp_32508;
	assign sv2v_tmp_32508 = 1'b1;
	always @(*) fabric_config_obi_rsp[1] = sv2v_tmp_32508;
	wire [1:1] sv2v_tmp_CE51C;
	assign sv2v_tmp_CE51C = 1'b0;
	always @(*) fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)] = sv2v_tmp_CE51C;
	wire [((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1)) * 1:1] sv2v_tmp_2CAB5;
	assign sv2v_tmp_2CAB5 = fabric_config_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))];
	always @(*) fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (soc_pkg_SbrObiCfg[229-:32] + 1)) + ((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))] = sv2v_tmp_2CAB5;
	wire [1:1] sv2v_tmp_CEB0E;
	assign sv2v_tmp_CEB0E = 1'b0;
	always @(*) fabric_config_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)] = sv2v_tmp_CEB0E;
	assign fabric_obi_rsp[1] = fabric_gnt_i;
	assign fabric_req_o = fabric_obi_req[0];
	assign fabric_obi_rsp[0] = fabric_rvalid_i;
	assign fabric_we_o = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))];
	assign fabric_be_o = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)];
	assign fabric_addr_o = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 24))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 24) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))))):((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (soc_pkg_SbrObiCfg[293-:32] - 1))) : 1 + ((soc_pkg_SbrObiCfg[293-:32] - 1) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))))];
	assign fabric_wdata_o = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)];
	assign fabric_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)] = fabric_rdata_i;
	assign fabric_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)] = 1'b0;
	assign fabric_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (soc_pkg_SbrObiCfg[229-:32] + 1)) + ((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))] = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))];
	assign fabric_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)] = 1'b0;
	wire [31:0] debug_fabric_req;
	wire [31:0] debug_fabric_addr;
	wire debug_fabric_we;
	wire [3:0] debug_fabric_be;
	wire [31:0] debug_fabric_wdata;
	wire [0:0] debug_fabric_aid;
	wire debug_fabric_a_optional;
	assign debug_fabric_req = fabric_obi_req[0];
	assign debug_fabric_addr = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) : ((1 - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) >= (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) ? ((soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))))) + 1 : ((1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)))) - (soc_pkg_SbrObiCfg[293-:32] + (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))) + 1)];
	assign debug_fabric_we = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))))) : 1 - (1 + ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))))];
	assign debug_fabric_be = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) : ((1 - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)) - 1)-:(((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) >= (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) ? (((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1 : ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - ((soc_pkg_SbrObiCfg[261-:32] / 8) + (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)))) + 1)];
	assign debug_fabric_wdata = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) : ((1 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) >= (soc_pkg_SbrObiCfg[229-:32] + 1) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0)) - (soc_pkg_SbrObiCfg[229-:32] + 1)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 0))) + 1)];
	assign debug_fabric_aid = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - ((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) - (soc_pkg_SbrObiCfg[229-:32] + 0)) : ((1 - (soc_pkg_SbrObiCfg[229-:32] + 0)) + ((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 0) >= 1 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 2 - (soc_pkg_SbrObiCfg[229-:32] + 0))];
	assign debug_fabric_a_optional = fabric_obi_req[((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? (((((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) >= 0 ? ((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 1 : 1 - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0)) + 0) - (((((soc_pkg_SbrObiCfg[293-:32] + 1) + (soc_pkg_SbrObiCfg[261-:32] / 8)) + soc_pkg_SbrObiCfg[261-:32]) + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
	wire debug_fabric_gnt;
	wire debug_fabric_rvalid;
	wire [31:0] debug_fabric_rdata;
	wire [0:0] debug_fabric_rid;
	wire debug_fabric_err;
	wire debug_fabric_r_optional;
	assign debug_fabric_gnt = fabric_obi_rsp[1];
	assign debug_fabric_rvalid = fabric_obi_rsp[0];
	assign debug_fabric_rdata = fabric_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) : ((2 - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)) - 1)-:((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) >= (soc_pkg_SbrObiCfg[229-:32] + 2) ? ((soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1)) - (soc_pkg_SbrObiCfg[229-:32] + 2)) + 1 : ((soc_pkg_SbrObiCfg[229-:32] + 2) - (soc_pkg_SbrObiCfg[261-:32] + (soc_pkg_SbrObiCfg[229-:32] + 1))) + 1)];
	assign debug_fabric_rid = fabric_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - (((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) - (soc_pkg_SbrObiCfg[229-:32] + 1)) : ((2 - (soc_pkg_SbrObiCfg[229-:32] + 1)) + ((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))) - 1)-:((soc_pkg_SbrObiCfg[229-:32] + 1) >= 2 ? soc_pkg_SbrObiCfg[229-:32] + 0 : 3 - (soc_pkg_SbrObiCfg[229-:32] + 1))];
	assign debug_fabric_err = fabric_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 0) : 1)];
	assign debug_fabric_r_optional = fabric_obi_rsp[(((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? ((((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) >= 0 ? (soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 2 : 1 - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1)) + 1) - ((soc_pkg_SbrObiCfg[261-:32] + soc_pkg_SbrObiCfg[229-:32]) + 1) : 2)];
	initial _sv2v_0 = 0;
endmodule
`default_nettype none
`default_nettype none
module obi2ahbm_adapter (
	hclk_i,
	hresetn_i,
	haddr_o,
	hburst_o,
	hmastlock_o,
	hprot_o,
	hsize_o,
	htrans_o,
	hwdata_o,
	hwrite_o,
	hrdata_i,
	hready_i,
	hresp_i,
	data_req_i,
	data_gnt_o,
	data_rvalid_o,
	data_we_i,
	data_be_i,
	data_addr_i,
	data_wdata_i,
	data_rdata_o,
	data_err_o,
	pending_dbus_xfer_i,
	priv_mode_i
);
	reg _sv2v_0;
	input hclk_i;
	input hresetn_i;
	output reg [31:0] haddr_o;
	output wire [2:0] hburst_o;
	output wire hmastlock_o;
	output reg [3:0] hprot_o;
	output reg [2:0] hsize_o;
	output reg [1:0] htrans_o;
	output reg [31:0] hwdata_o;
	output reg hwrite_o;
	input wire [31:0] hrdata_i;
	input wire hready_i;
	input wire hresp_i;
	input wire data_req_i;
	output wire data_gnt_o;
	output wire data_rvalid_o;
	input wire data_we_i;
	input wire [3:0] data_be_i;
	input wire [31:0] data_addr_i;
	input wire [31:0] data_wdata_i;
	output reg [31:0] data_rdata_o;
	output reg data_err_o;
	input wire pending_dbus_xfer_i;
	input wire priv_mode_i;
	parameter HPROT_NONCACHEABLE = 1'b0;
	parameter HPROT_NONBUFFERABLE = 1'b0;
	parameter HPROT_DATAACCESS = 1'b1;
	parameter MACHINE_MODE = 1'b1;
	parameter HBURST_SINGLE = 3'b000;
	parameter TIE_LO = 1'b0;
	parameter AHB_FSM_WAIT = 2'b00;
	parameter AHB_FSM_DATA = 2'b10;
	reg [1:0] ahb_fsm_reg;
	reg [1:0] ahb_fsm_reg_nxt;
	reg [31:0] haddr_m_reg;
	reg [3:0] hprot_m_reg;
	reg [2:0] hsize_m_reg;
	reg hwrite_m_reg;
	wire data_err_o_nxt;
	reg [31:0] data_rdata_o_reg;
	reg [31:0] hwdata_m_nxt;
	reg prev_data_gnt_o;
	assign hburst_o = HBURST_SINGLE;
	assign hmastlock_o = TIE_LO;
	assign data_gnt_o = (hready_i && data_req_i) && !pending_dbus_xfer_i;
	assign data_rvalid_o = (ahb_fsm_reg == AHB_FSM_DATA ? hready_i : 1'b0);
	always @(posedge hclk_i or negedge hresetn_i)
		if (!hresetn_i) begin
			data_err_o <= 1'b0;
			data_rdata_o_reg <= 32'h00000000;
			haddr_m_reg <= 32'h00000000;
			hprot_m_reg <= {HPROT_NONCACHEABLE, HPROT_NONBUFFERABLE, MACHINE_MODE, HPROT_DATAACCESS};
			hsize_m_reg <= 3'b000;
			hwdata_o <= 32'h00000000;
			hwrite_m_reg <= 1'b0;
			ahb_fsm_reg <= AHB_FSM_WAIT;
			prev_data_gnt_o <= 1'b0;
		end
		else begin
			data_err_o <= data_err_o_nxt;
			data_rdata_o_reg <= data_rdata_o;
			haddr_m_reg <= haddr_o;
			hprot_m_reg <= hprot_o;
			hsize_m_reg <= hsize_o;
			hwdata_o <= hwdata_m_nxt;
			hwrite_m_reg <= hwrite_o;
			ahb_fsm_reg <= ahb_fsm_reg_nxt;
			if (!data_rvalid_o)
				prev_data_gnt_o <= data_gnt_o | prev_data_gnt_o;
			else
				prev_data_gnt_o <= data_gnt_o;
		end
	assign data_err_o_nxt = hresp_i;
	always @(*) begin
		if (_sv2v_0)
			;
		hprot_o = hprot_m_reg;
		haddr_o = haddr_m_reg;
		hwrite_o = hwrite_m_reg;
		htrans_o = 2'b00;
		hwdata_m_nxt = hwdata_o;
		hsize_o = hsize_m_reg;
		(* full_case, parallel_case *)
		case (ahb_fsm_reg)
			AHB_FSM_WAIT:
				if (data_gnt_o) begin
					hprot_o = {HPROT_NONCACHEABLE, HPROT_NONBUFFERABLE, priv_mode_i, HPROT_DATAACCESS};
					haddr_o = data_addr_i;
					hwrite_o = data_we_i;
					htrans_o = 2'b10;
					hwdata_m_nxt = data_wdata_i;
					hsize_o[2] = TIE_LO;
					hsize_o[1] = &data_be_i;
					hsize_o[0] = (data_be_i[3] & data_be_i[2]) ^ (data_be_i[1] & data_be_i[0]);
				end
			AHB_FSM_DATA: begin
				data_rdata_o = hrdata_i;
				if (data_gnt_o) begin
					hprot_o = {HPROT_NONCACHEABLE, HPROT_NONBUFFERABLE, priv_mode_i, HPROT_DATAACCESS};
					haddr_o = data_addr_i;
					hwrite_o = data_we_i;
					htrans_o = 2'b10;
					hwdata_m_nxt = data_wdata_i;
					hsize_o[2] = TIE_LO;
					hsize_o[1] = &data_be_i;
					hsize_o[0] = (data_be_i[3] & data_be_i[2]) ^ (data_be_i[1] & data_be_i[0]);
				end
			end
			default: begin
				hprot_o = {HPROT_NONCACHEABLE, HPROT_NONBUFFERABLE, priv_mode_i, HPROT_DATAACCESS};
				haddr_o = data_addr_i;
				hwrite_o = data_we_i;
				htrans_o = 2'b00;
				hsize_o = {TIE_LO, TIE_LO, TIE_LO};
			end
		endcase
	end
	always @(*) begin
		if (_sv2v_0)
			;
		ahb_fsm_reg_nxt = ahb_fsm_reg;
		(* full_case, parallel_case *)
		case (ahb_fsm_reg)
			AHB_FSM_WAIT:
				if (data_gnt_o)
					ahb_fsm_reg_nxt = AHB_FSM_DATA;
			AHB_FSM_DATA:
				if (data_rvalid_o) begin
					if (data_gnt_o)
						ahb_fsm_reg_nxt = AHB_FSM_DATA;
					else
						ahb_fsm_reg_nxt = AHB_FSM_WAIT;
				end
			default: ahb_fsm_reg_nxt = ahb_fsm_reg;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule