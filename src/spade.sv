module e_std_io_rising_edge (
        input clk_i,
        input sync1_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_std_io_rising_edge" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_std_io_rising_edge);
        end
        #1;
    end
    `endif
    logic clk_n70;
    assign clk_n70 = clk_i;
    logic sync1_n71;
    assign sync1_n71 = sync1_i;
    (* src = "spade/stdlib/io.spade:3,14" *)
    reg sync2_n72;
    (* src = "spade/stdlib/io.spade:4,14" *)
    logic _e_6;
    (* src = "spade/stdlib/io.spade:4,5" *)
    logic _e_4;
    always @(posedge clk_n70) begin
        sync2_n72 <= sync1_n71;
    end
    assign _e_6 = !sync2_n72;
    assign _e_4 = sync1_n71 && _e_6;
    assign output__ = _e_4;
endmodule

module e_std_io_falling_edge (
        input clk_i,
        input sync1_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_std_io_falling_edge" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_std_io_falling_edge);
        end
        #1;
    end
    `endif
    logic clk_n73;
    assign clk_n73 = clk_i;
    logic sync1_n74;
    assign sync1_n74 = sync1_i;
    (* src = "spade/stdlib/io.spade:9,14" *)
    reg sync2_n75;
    (* src = "spade/stdlib/io.spade:10,14" *)
    logic _e_14;
    (* src = "spade/stdlib/io.spade:10,5" *)
    logic _e_12;
    always @(posedge clk_n73) begin
        sync2_n75 <= sync1_n74;
    end
    assign _e_14 = !sync1_n74;
    assign _e_12 = sync2_n75 && _e_14;
    assign output__ = _e_12;
endmodule

module e_proj_config_chain_cfg_bit (
        input[1:0] chain_i, output[1:0] chain_o,
        output[2:0] output__,
        input[1:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_config_chain_cfg_bit" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_config_chain_cfg_bit);
        end
        #1;
    end
    `endif
    logic[1:0] chain_n77;
    assign chain_n77 = chain_i;
    logic[1:0] chain_n77_o;
    assign chain_o = chain_n77_o;
    (* src = "src/config_chain.spade:11,9" *)
    logic _e_28;
    (* src = "src/config_chain.spade:11,29" *)
    logic _e_30;
    (* src = "src/config_chain.spade:11,20" *)
    reg value_n78;
    (* src = "src/config_chain.spade:14,14" *)
    logic _e_34;
    (* src = "src/config_chain.spade:15,16" *)
    logic _e_36;
    (* src = "src/config_chain.spade:16,16" *)
    logic[1:0] _e_38_o;
    (* src = "src/config_chain.spade:13,21" *)
    logic[1:0] new_chain_n79;
    logic[1:0] new_chain_n79_o;
    (* src = "src/config_chain.spade:18,6" *)
    logic _e_42;
    (* src = "src/config_chain.spade:18,6" *)
    logic[2:0] _e_41;
    logic[1:0] _e_41_o;
    assign _e_28 = chain_n77[1];
    assign _e_30 = chain_n77[0];
    always @(posedge _e_28) begin
        value_n78 <= _e_30;
    end
    assign _e_34 = chain_n77[1];
    assign _e_36 = value_n78;
    assign chain_n77_o[1:0] = _e_38_o;
    assign new_chain_n79 = {_e_34, _e_36};
    assign {_e_38_o} = new_chain_n79_o;
    assign _e_42 = value_n78;
    assign _e_41 = {_e_42, new_chain_n79};
    assign {new_chain_n79_o} = _e_41_o;
    assign output__ = _e_41;
    assign _e_41_o = input__;
endmodule

module e_proj_routing_feedback_mux (
        input clk_i,
        input from_layer_i,
        input from_previous_i,
        input[1:0] c_i, output[1:0] c_o,
        output[2:0] output__,
        input[1:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_routing_feedback_mux" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_routing_feedback_mux);
        end
        #1;
    end
    `endif
    logic clk_n171;
    assign clk_n171 = clk_i;
    logic from_layer_n172;
    assign from_layer_n172 = from_layer_i;
    logic from_previous_n173;
    assign from_previous_n173 = from_previous_i;
    logic[1:0] c_n174;
    assign c_n174 = c_i;
    logic[1:0] c_n174_o;
    assign c_o = c_n174_o;
    (* src = "src/routing.spade:44,29" *)
    logic[2:0] _e_436;
    logic[1:0] _e_436_o;
    logic _e_438;
    logic[1:0] c_n176;
    logic[1:0] c_n176_o;
    (* src = "src/routing.spade:46,18" *)
    logic _e_446;
    (* src = "src/routing.spade:52,6" *)
    logic[2:0] _e_445;
    logic[1:0] _e_445_o;
    (* src = "src/routing.spade:44,29" *)
    e_proj_config_chain_cfg_bit _e_436_i(c_n174, c_n174_o, _e_436, _e_436_o);
    assign _e_438 = _e_436[2];
    assign c_n176 = _e_436[1:0];
    assign _e_436_o[1:0] = c_n176_o;
    assign _e_446 = _e_438 ? from_previous_n173 : from_layer_n172;
    assign _e_445 = {_e_446, c_n176};
    assign {c_n176_o} = _e_445_o;
    assign output__ = _e_445;
    assign _e_445_o = input__;
endmodule

module e_main (
        input clk_i,
        input[3:0] inputs_unsync_i,
        input cfg_clk_i,
        input cfg_value_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_main" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_main);
        end
        #1;
    end
    `endif
    logic clk_n142;
    assign clk_n142 = clk_i;
    logic[3:0] inputs_unsync_n143;
    assign inputs_unsync_n143 = inputs_unsync_i;
    logic cfg_clk_n144;
    assign cfg_clk_n144 = cfg_clk_i;
    logic cfg_value_n145;
    assign cfg_value_n145 = cfg_value_i;
    (* src = "src/main.spade:126,5" *)
    logic[7:0] _e_292;
    (* src = "src/main.spade:126,5" *)
    e_cell_test _e_292_i(clk_n142, inputs_unsync_n143, cfg_clk_n144, cfg_value_n145, _e_292);
    assign output__ = _e_292;
endmodule

module e_proj_main_b2i (
        input x_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_main_b2i" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_main_b2i);
        end
        #1;
    end
    `endif
    logic x_n101;
    assign x_n101 = x_i;
    logic _e_117;
    (* src = "src/main.spade:10,11" *)
    logic _e_116;
    logic _e_119;
    (* src = "src/main.spade:10,5" *)
    logic _e_113;
    assign _e_117 = 0;
    assign _e_116 = ~_e_117;
    assign _e_119 = 0;
    assign _e_113 = x_n101 ? _e_116 : _e_119;
    assign output__ = _e_113;
endmodule

module e_proj_cell_cell (
        input clk_i,
        input x_i,
        input y_i,
        input[1:0] c_i, output[1:0] c_o,
        output[2:0] output__,
        input[1:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_cell_cell" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_cell_cell);
        end
        #1;
    end
    `endif
    logic clk_n80;
    assign clk_n80 = clk_i;
    logic x_n81;
    assign x_n81 = x_i;
    logic y_n82;
    assign y_n82 = y_i;
    logic[1:0] c_n83;
    assign c_n83 = c_i;
    logic[1:0] c_n83_o;
    assign c_o = c_n83_o;
    (* src = "src/cell.spade:12,21" *)
    logic[2:0] _e_50;
    logic[1:0] _e_50_o;
    logic on00_n84;
    logic[1:0] c_n85;
    logic[1:0] c_n85_o;
    (* src = "src/cell.spade:13,21" *)
    logic[2:0] _e_55;
    logic[1:0] _e_55_o;
    logic on01_n86;
    logic[1:0] c_n87;
    logic[1:0] c_n87_o;
    (* src = "src/cell.spade:14,21" *)
    logic[2:0] _e_60;
    logic[1:0] _e_60_o;
    logic on10_n88;
    logic[1:0] c_n89;
    logic[1:0] c_n89_o;
    (* src = "src/cell.spade:15,21" *)
    logic[2:0] _e_65;
    logic[1:0] _e_65_o;
    logic on11_n90;
    logic[1:0] c_n91;
    logic[1:0] c_n91_o;
    (* src = "src/cell.spade:17,27" *)
    logic[1:0] _e_68;
    logic _e_71;
    logic _e_72;
    logic _e_532;
    logic _e_533;
    logic _e_534;
    logic _e_75;
    logic _e_76;
    logic _e_536;
    logic _e_538;
    logic _e_79;
    logic _e_80;
    logic _e_541;
    logic _e_542;
    logic _e_83;
    logic _e_84;
    logic _e_546;
    (* src = "src/cell.spade:17,20" *)
    logic _e_89;
    (* src = "src/cell.spade:25,6" *)
    logic[2:0] _e_88;
    logic[1:0] _e_88_o;
    (* src = "src/cell.spade:12,21" *)
    e_proj_config_chain_cfg_bit _e_50_i(c_n83, c_n83_o, _e_50, _e_50_o);
    assign on00_n84 = _e_50[2];
    assign c_n85 = _e_50[1:0];
    assign _e_50_o[1:0] = c_n85_o;
    (* src = "src/cell.spade:13,21" *)
    e_proj_config_chain_cfg_bit _e_55_i(c_n85, c_n85_o, _e_55, _e_55_o);
    assign on01_n86 = _e_55[2];
    assign c_n87 = _e_55[1:0];
    assign _e_55_o[1:0] = c_n87_o;
    (* src = "src/cell.spade:14,21" *)
    e_proj_config_chain_cfg_bit _e_60_i(c_n87, c_n87_o, _e_60, _e_60_o);
    assign on10_n88 = _e_60[2];
    assign c_n89 = _e_60[1:0];
    assign _e_60_o[1:0] = c_n89_o;
    (* src = "src/cell.spade:15,21" *)
    e_proj_config_chain_cfg_bit _e_65_i(c_n89, c_n89_o, _e_65, _e_65_o);
    assign on11_n90 = _e_65[2];
    assign c_n91 = _e_65[1:0];
    assign _e_65_o[1:0] = c_n91_o;
    assign _e_68 = {x_n81, y_n82};
    assign _e_71 = _e_68[1];
    assign _e_72 = _e_68[0];
    assign _e_532 = !_e_71;
    assign _e_533 = !_e_72;
    assign _e_534 = _e_532 && _e_533;
    assign _e_75 = _e_68[1];
    assign _e_76 = _e_68[0];
    assign _e_536 = !_e_75;
    assign _e_538 = _e_536 && _e_76;
    assign _e_79 = _e_68[1];
    assign _e_80 = _e_68[0];
    assign _e_541 = !_e_80;
    assign _e_542 = _e_79 && _e_541;
    assign _e_83 = _e_68[1];
    assign _e_84 = _e_68[0];
    assign _e_546 = _e_83 && _e_84;
    always_comb begin
        priority casez ({_e_534, _e_538, _e_542, _e_546})
            4'b1???: _e_89 = on00_n84;
            4'b01??: _e_89 = on01_n86;
            4'b001?: _e_89 = on10_n88;
            4'b0001: _e_89 = on11_n90;
            4'b?: _e_89 = 'x;
        endcase
    end
    assign _e_88 = {_e_89, c_n91};
    assign {c_n91_o} = _e_88_o;
    assign output__ = _e_88;
    assign _e_88_o = input__;
endmodule

module e_proj_routing_feedback_tile_test_harness (
        input clk_i,
        input[3:0] from_layer_i,
        input[3:0] from_previous_i,
        input cfg_clk_i,
        input cfg_value_i,
        output[3:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_routing_feedback_tile_test_harness" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_routing_feedback_tile_test_harness);
        end
        #1;
    end
    `endif
    logic clk_n193;
    assign clk_n193 = clk_i;
    logic[3:0] from_layer_n194;
    assign from_layer_n194 = from_layer_i;
    logic[3:0] from_previous_n195;
    assign from_previous_n195 = from_previous_i;
    logic cfg_clk_n196;
    assign cfg_clk_n196 = cfg_clk_i;
    logic cfg_value_n197;
    assign cfg_value_n197 = cfg_value_i;
    (* src = "src/routing.spade:84,16" *)
    logic _e_514;
    logic[1:0] _e_516_o;
    (* src = "src/routing.spade:82,13" *)
    logic[1:0] c_n198;
    logic[1:0] c_n198_o;
    (* src = "src/routing.spade:88,24" *)
    logic[5:0] _e_525;
    logic[1:0] _e_525_o;
    logic[3:0] _e_529;
    logic[1:0] chain_n200;
    logic[1:0] chain_n200_o;
    (* src = "src/routing.spade:89,9" *)
    logic[1:0] _e_526_o;
    logic[1:0] _e_528;
    assign _e_514 = cfg_value_n197;
    
    assign c_n198 = {cfg_clk_n196, _e_514};
    assign {_e_516_o} = c_n198_o;
    (* src = "src/routing.spade:88,24" *)
    e_proj_routing_feedback_tile _e_525_i(clk_n193, from_layer_n194, from_previous_n195, c_n198, c_n198_o, _e_525, _e_525_o);
    assign _e_529 = _e_525[5:2];
    assign chain_n200 = _e_525[1:0];
    assign _e_525_o[1:0] = chain_n200_o;
    assign chain_n200_o[1:0] = _e_526_o;
    assign _e_528 = 1;
    assign _e_526_o = _e_528;
    assign output__ = _e_529;
endmodule

module e_proj_main_layer_test_harness (
        input clk_i,
        input[3:0] cell_out_i,
        input[3:0] feedback_i,
        input[7:0] input_layer_i,
        input cfg_clk_i,
        input cfg_value_i,
        output[3:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_main_layer_test_harness" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_main_layer_test_harness);
        end
        #1;
    end
    `endif
    logic clk_n146;
    assign clk_n146 = clk_i;
    logic[3:0] cell_out_n147;
    assign cell_out_n147 = cell_out_i;
    logic[3:0] feedback_n148;
    assign feedback_n148 = feedback_i;
    logic[7:0] input_layer_n149;
    assign input_layer_n149 = input_layer_i;
    logic cfg_clk_n150;
    assign cfg_clk_n150 = cfg_clk_i;
    logic cfg_value_n151;
    assign cfg_value_n151 = cfg_value_i;
    (* src = "src/main.spade:142,16" *)
    logic _e_300;
    logic[1:0] _e_302_o;
    (* src = "src/main.spade:140,13" *)
    logic[1:0] c_n152;
    logic[1:0] c_n152_o;
    (* src = "src/main.spade:146,23" *)
    logic[7:0] input_layer_n153;
    (* src = "src/main.spade:148,24" *)
    logic[5:0] _e_314;
    logic[1:0] _e_314_o;
    logic[3:0] _e_318;
    logic[1:0] chain_n155;
    logic[1:0] chain_n155_o;
    (* src = "src/main.spade:149,9" *)
    logic[1:0] _e_315_o;
    logic[1:0] _e_317;
    assign _e_300 = cfg_value_n151;
    
    assign c_n152 = {cfg_clk_n150, _e_300};
    assign {_e_302_o} = c_n152_o;
    assign input_layer_n153 = {cell_out_n147, feedback_n148};
    (* src = "src/main.spade:148,24" *)
    e_proj_main_layer _e_314_i(clk_n146, input_layer_n153, c_n152, c_n152_o, _e_314, _e_314_o);
    assign _e_318 = _e_314[5:2];
    assign chain_n155 = _e_314[1:0];
    assign _e_314_o[1:0] = chain_n155_o;
    assign chain_n155_o[1:0] = _e_315_o;
    assign _e_317 = 1;
    assign _e_315_o = _e_317;
    assign output__ = _e_318;
endmodule

module e_proj_routing_feedback_tile (
        input clk_i,
        input[3:0] from_layer_i,
        input[3:0] from_previous_i,
        input[1:0] c_i, output[1:0] c_o,
        output[5:0] output__,
        input[1:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_routing_feedback_tile" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_routing_feedback_tile);
        end
        #1;
    end
    `endif
    logic clk_n178;
    assign clk_n178 = clk_i;
    logic[3:0] from_layer_n179;
    assign from_layer_n179 = from_layer_i;
    logic[3:0] from_previous_n180;
    assign from_previous_n180 = from_previous_i;
    logic[1:0] c_n181;
    assign c_n181 = c_i;
    logic[1:0] c_n181_o;
    assign c_o = c_n181_o;
    (* src = "src/routing.spade:61,14" *)
    reg[3:0] from_layer_reg_n182;
    logic[3:0] _e_453;
    (* src = "src/routing.spade:64,9" *)
    logic[3:0] two_n183;
    logic[3:0] _e_455;
    (* src = "src/routing.spade:65,9" *)
    logic[3:0] three_n184;
    logic[1:0] _e_461;
    (* src = "src/routing.spade:66,42" *)
    logic _e_459;
    logic[1:0] _e_464;
    (* src = "src/routing.spade:66,61" *)
    logic _e_462;
    (* src = "src/routing.spade:66,19" *)
    logic[2:0] _e_468;
    logic[1:0] _e_468_o;
    logic _e_503;
    logic[1:0] c_n186;
    logic[1:0] c_n186_o;
    logic[1:0] _e_473;
    (* src = "src/routing.spade:67,42" *)
    logic _e_471;
    logic[1:0] _e_476;
    (* src = "src/routing.spade:67,61" *)
    logic _e_474;
    (* src = "src/routing.spade:67,19" *)
    logic[2:0] _e_480;
    logic[1:0] _e_480_o;
    logic _e_505;
    logic[1:0] c_n188;
    logic[1:0] c_n188_o;
    (* src = "src/routing.spade:68,57" *)
    logic[1:0] _e_485;
    (* src = "src/routing.spade:68,42" *)
    logic _e_483;
    (* src = "src/routing.spade:68,84" *)
    logic[1:0] _e_489;
    (* src = "src/routing.spade:68,70" *)
    logic _e_487;
    (* src = "src/routing.spade:68,19" *)
    logic[2:0] _e_494;
    logic[1:0] _e_494_o;
    logic _e_507;
    logic[1:0] c_n190;
    logic[1:0] c_n190_o;
    (* src = "src/routing.spade:69,22" *)
    logic[2:0] _e_499;
    logic[1:0] _e_499_o;
    logic dummy_n191;
    logic[1:0] c_n192;
    logic[1:0] c_n192_o;
    logic _e_509;
    (* src = "src/routing.spade:71,7" *)
    logic[3:0] _e_501;
    (* src = "src/routing.spade:71,6" *)
    logic[5:0] _e_500;
    logic[1:0] _e_500_o;
    always @(posedge clk_n178) begin
        from_layer_reg_n182 <= from_layer_n179;
    end
    assign _e_453 = 2;
    assign two_n183 = _e_453;
    assign _e_455 = 3;
    assign three_n184 = _e_455;
    assign _e_461 = 0;
    assign _e_459 = from_layer_reg_n182[_e_461];
    assign _e_464 = 0;
    assign _e_462 = from_previous_n180[_e_464];
    (* src = "src/routing.spade:66,19" *)
    e_proj_routing_feedback_mux _e_468_i(clk_n178, _e_459, _e_462, c_n181, c_n181_o, _e_468, _e_468_o);
    assign _e_503 = _e_468[2];
    assign c_n186 = _e_468[1:0];
    assign _e_468_o[1:0] = c_n186_o;
    assign _e_473 = 1;
    assign _e_471 = from_layer_reg_n182[_e_473];
    assign _e_476 = 1;
    assign _e_474 = from_previous_n180[_e_476];
    (* src = "src/routing.spade:67,19" *)
    e_proj_routing_feedback_mux _e_480_i(clk_n178, _e_471, _e_474, c_n186, c_n186_o, _e_480, _e_480_o);
    assign _e_505 = _e_480[2];
    assign c_n188 = _e_480[1:0];
    assign _e_480_o[1:0] = c_n188_o;
    assign _e_485 = two_n183[1:0];
    assign _e_483 = from_layer_reg_n182[_e_485];
    assign _e_489 = two_n183[1:0];
    assign _e_487 = from_previous_n180[_e_489];
    (* src = "src/routing.spade:68,19" *)
    e_proj_routing_feedback_mux _e_494_i(clk_n178, _e_483, _e_487, c_n188, c_n188_o, _e_494, _e_494_o);
    assign _e_507 = _e_494[2];
    assign c_n190 = _e_494[1:0];
    assign _e_494_o[1:0] = c_n190_o;
    (* src = "src/routing.spade:69,22" *)
    e_proj_config_chain_cfg_bit _e_499_i(c_n190, c_n190_o, _e_499, _e_499_o);
    assign dummy_n191 = _e_499[2];
    assign c_n192 = _e_499[1:0];
    assign _e_499_o[1:0] = c_n192_o;
    assign _e_509 = 0;
    assign _e_501 = {_e_509, _e_507, _e_505, _e_503};
    assign _e_500 = {_e_501, c_n192};
    assign {c_n192_o} = _e_500_o;
    assign output__ = _e_500;
    assign _e_500_o = input__;
endmodule

module e_proj_main_layer (
        input clk_i,
        input[7:0] input_layer_i,
        input[1:0] c_i, output[1:0] c_o,
        output[5:0] output__,
        input[1:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_main_layer" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_main_layer);
        end
        #1;
    end
    `endif
    logic clk_n111;
    assign clk_n111 = clk_i;
    logic[7:0] input_layer_n112;
    assign input_layer_n112 = input_layer_i;
    logic[1:0] c_n113;
    assign c_n113 = c_i;
    logic[1:0] c_n113_o;
    assign c_o = c_n113_o;
    (* src = "src/main.spade:45,19" *)
    logic[2:0] _e_151;
    logic[1:0] _e_151_o;
    logic _e_169;
    logic[1:0] c_n115;
    logic[1:0] c_n115_o;
    (* src = "src/main.spade:46,19" *)
    logic[2:0] _e_158;
    logic[1:0] _e_158_o;
    logic _e_171;
    logic[1:0] c_n117;
    logic[1:0] c_n117_o;
    (* src = "src/main.spade:47,19" *)
    logic[2:0] _e_165;
    logic[1:0] _e_165_o;
    logic _e_173;
    logic[1:0] c_n119;
    logic[1:0] c_n119_o;
    logic _e_175;
    (* src = "src/main.spade:50,7" *)
    logic[3:0] _e_167;
    (* src = "src/main.spade:50,6" *)
    logic[5:0] _e_166;
    logic[1:0] _e_166_o;
    (* src = "src/main.spade:45,19" *)
    e_proj_main_cell_with_routing _e_151_i(clk_n111, input_layer_n112, c_n113, c_n113_o, _e_151, _e_151_o);
    assign _e_169 = _e_151[2];
    assign c_n115 = _e_151[1:0];
    assign _e_151_o[1:0] = c_n115_o;
    (* src = "src/main.spade:46,19" *)
    e_proj_main_cell_with_routing _e_158_i(clk_n111, input_layer_n112, c_n115, c_n115_o, _e_158, _e_158_o);
    assign _e_171 = _e_158[2];
    assign c_n117 = _e_158[1:0];
    assign _e_158_o[1:0] = c_n117_o;
    (* src = "src/main.spade:47,19" *)
    e_proj_main_cell_with_routing _e_165_i(clk_n111, input_layer_n112, c_n117, c_n117_o, _e_165, _e_165_o);
    assign _e_173 = _e_165[2];
    assign c_n119 = _e_165[1:0];
    assign _e_165_o[1:0] = c_n119_o;
    assign _e_175 = 0;
    assign _e_167 = {_e_175, _e_173, _e_171, _e_169};
    assign _e_166 = {_e_167, c_n119};
    assign {c_n119_o} = _e_166_o;
    assign output__ = _e_166;
    assign _e_166_o = input__;
endmodule

module e_cell_test (
        input clk_i,
        input[3:0] inputs_i,
        input cfg_clk_i,
        input cfg_value_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_cell_test" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_cell_test);
        end
        #1;
    end
    `endif
    logic clk_n120;
    assign clk_n120 = clk_i;
    logic[3:0] inputs_n121;
    assign inputs_n121 = inputs_i;
    logic cfg_clk_n122;
    assign cfg_clk_n122 = cfg_clk_i;
    logic cfg_value_n123;
    assign cfg_value_n123 = cfg_value_i;
    (* src = "src/main.spade:62,16" *)
    logic _e_180;
    logic[1:0] _e_182_o;
    (* src = "src/main.spade:60,13" *)
    logic[1:0] c_n124;
    logic[1:0] c_n124_o;
    (* src = "src/main.spade:69,22" *)
    logic[7:0] _e_186;
    (* src = "src/main.spade:67,14" *)
    logic[5:0] l1_n128;
    logic[1:0] l1_n128_o;
    (* src = "src/main.spade:75,51" *)
    logic[3:0] _e_194;
    (* src = "src/main.spade:75,57" *)
    logic[3:0] _e_197;
    (* src = "src/main.spade:75,69" *)
    logic[1:0] _e_199;
    logic[1:0] _e_199_o;
    (* src = "src/main.spade:75,26" *)
    logic[5:0] _e_203;
    logic[1:0] _e_203_o;
    logic[3:0] _e_188;
    logic[1:0] c_n129;
    logic[1:0] c_n129_o;
    (* src = "src/main.spade:76,22" *)
    logic[3:0] cell0_out_n130;
    (* src = "src/main.spade:80,24" *)
    logic[3:0] _e_211;
    (* src = "src/main.spade:81,23" *)
    logic[3:0] _e_214;
    (* src = "src/main.spade:79,22" *)
    logic[7:0] _e_210;
    (* src = "src/main.spade:77,22" *)
    logic[5:0] _e_219;
    logic[1:0] _e_219_o;
    logic[3:0] cells_n131;
    logic[1:0] c_n132;
    logic[1:0] c_n132_o;
    (* src = "src/main.spade:85,50" *)
    logic[3:0] _e_222;
    (* src = "src/main.spade:85,58" *)
    logic[3:0] _e_224;
    (* src = "src/main.spade:85,26" *)
    logic[5:0] _e_229;
    logic[1:0] _e_229_o;
    logic[3:0] feedback1_n126;
    logic[1:0] c_n133;
    logic[1:0] c_n133_o;
    (* src = "src/main.spade:86,21" *)
    logic[3:0] cell1_out_n134;
    (* src = "src/main.spade:90,23" *)
    logic[3:0] _e_236;
    (* src = "src/main.spade:91,23" *)
    logic[3:0] _e_238;
    (* src = "src/main.spade:89,22" *)
    logic[7:0] _e_235;
    (* src = "src/main.spade:87,22" *)
    logic[5:0] _e_243;
    logic[1:0] _e_243_o;
    logic[3:0] cells_n135;
    logic[1:0] c_n136;
    logic[1:0] c_n136_o;
    (* src = "src/main.spade:95,21" *)
    logic[3:0] cell2_out_n137;
    (* src = "src/main.spade:96,50" *)
    logic[3:0] _e_249;
    logic _e_252;
    logic _e_253;
    logic _e_254;
    logic _e_255;
    (* src = "src/main.spade:96,58" *)
    logic[3:0] _e_251;
    (* src = "src/main.spade:96,26" *)
    logic[5:0] _e_259;
    logic[1:0] _e_259_o;
    logic[3:0] feedback2_n127;
    logic[1:0] c_n138;
    logic[1:0] c_n138_o;
    (* src = "src/main.spade:106,9" *)
    logic[1:0] _e_260_o;
    logic[1:0] _e_262;
    logic _e_263;
    (* src = "src/main.spade:108,9" *)
    logic zerob1_n139;
    logic[2:0] _e_265;
    (* src = "src/main.spade:109,9" *)
    logic[2:0] two_n140;
    logic[2:0] _e_267;
    (* src = "src/main.spade:110,9" *)
    logic[2:0] three_n141;
    logic[3:0] _e_270;
    (* src = "src/main.spade:112,23" *)
    logic[3:0] _e_274;
    logic[1:0] _e_276;
    (* src = "src/main.spade:112,23" *)
    logic _e_273;
    (* src = "src/main.spade:112,18" *)
    logic _e_272;
    (* src = "src/main.spade:113,23" *)
    logic[3:0] _e_280;
    logic[1:0] _e_282;
    (* src = "src/main.spade:113,23" *)
    logic _e_279;
    (* src = "src/main.spade:113,18" *)
    logic _e_278;
    (* src = "src/main.spade:114,23" *)
    logic[3:0] _e_286;
    (* src = "src/main.spade:114,31" *)
    logic[1:0] _e_288;
    (* src = "src/main.spade:114,23" *)
    logic _e_285;
    (* src = "src/main.spade:114,18" *)
    logic _e_284;
    logic[1:0] _e_283;
    logic[2:0] _e_277;
    logic[3:0] _e_271;
    logic[7:0] _e_269;
    assign _e_180 = cfg_value_n123;
    
    assign c_n124 = {cfg_clk_n122, _e_180};
    assign {_e_182_o} = c_n124_o;
    assign _e_186 = {inputs_n121, _e_188};
    (* src = "src/main.spade:67,14" *)
    e_proj_main_layer l1_n128_i(clk_n120, _e_186, c_n124, c_n124_o, l1_n128, l1_n128_o);
    assign _e_194 = l1_n128[5:2];
    assign _e_197 = feedback1_n126;
    assign _e_199 = l1_n128[1:0];
    assign l1_n128_o[1:0] = _e_199_o;
    (* src = "src/main.spade:75,26" *)
    e_proj_routing_feedback_tile _e_203_i(clk_n120, _e_194, _e_197, _e_199, _e_199_o, _e_203, _e_203_o);
    assign _e_188 = _e_203[5:2];
    assign c_n129 = _e_203[1:0];
    assign _e_203_o[1:0] = c_n129_o;
    assign cell0_out_n130 = l1_n128[5:2];
    assign _e_211 = l1_n128[5:2];
    assign _e_214 = feedback1_n126;
    assign _e_210 = {_e_211, _e_214};
    (* src = "src/main.spade:77,22" *)
    e_proj_main_layer _e_219_i(clk_n120, _e_210, c_n129, c_n129_o, _e_219, _e_219_o);
    assign cells_n131 = _e_219[5:2];
    assign c_n132 = _e_219[1:0];
    assign _e_219_o[1:0] = c_n132_o;
    assign _e_222 = cells_n131;
    assign _e_224 = feedback2_n127;
    (* src = "src/main.spade:85,26" *)
    e_proj_routing_feedback_tile _e_229_i(clk_n120, _e_222, _e_224, c_n132, c_n132_o, _e_229, _e_229_o);
    assign feedback1_n126 = _e_229[5:2];
    assign c_n133 = _e_229[1:0];
    assign _e_229_o[1:0] = c_n133_o;
    assign cell1_out_n134 = cells_n131;
    assign _e_236 = cells_n131;
    assign _e_238 = feedback2_n127;
    assign _e_235 = {_e_236, _e_238};
    (* src = "src/main.spade:87,22" *)
    e_proj_main_layer _e_243_i(clk_n120, _e_235, c_n133, c_n133_o, _e_243, _e_243_o);
    assign cells_n135 = _e_243[5:2];
    assign c_n136 = _e_243[1:0];
    assign _e_243_o[1:0] = c_n136_o;
    assign cell2_out_n137 = cells_n135;
    assign _e_249 = cells_n135;
    assign _e_252 = 0;
    assign _e_253 = 0;
    assign _e_254 = 0;
    assign _e_255 = 0;
    assign _e_251 = {_e_255, _e_254, _e_253, _e_252};
    (* src = "src/main.spade:96,26" *)
    e_proj_routing_feedback_tile _e_259_i(clk_n120, _e_249, _e_251, c_n136, c_n136_o, _e_259, _e_259_o);
    assign feedback2_n127 = _e_259[5:2];
    assign c_n138 = _e_259[1:0];
    assign _e_259_o[1:0] = c_n138_o;
    assign c_n138_o[1:0] = _e_260_o;
    assign _e_262 = 0;
    assign _e_260_o = _e_262;
    assign _e_263 = 0;
    assign zerob1_n139 = _e_263;
    assign _e_265 = 2;
    assign two_n140 = _e_265;
    assign _e_267 = 3;
    assign three_n141 = _e_267;
    assign _e_270 = 0;
    assign _e_274 = cells_n135;
    assign _e_276 = 0;
    assign _e_273 = _e_274[_e_276];
    (* src = "src/main.spade:112,18" *)
    e_proj_main_b2i _e_272_i(_e_273, _e_272);
    assign _e_280 = cells_n135;
    assign _e_282 = 1;
    assign _e_279 = _e_280[_e_282];
    (* src = "src/main.spade:113,18" *)
    e_proj_main_b2i _e_278_i(_e_279, _e_278);
    assign _e_286 = cells_n135;
    assign _e_288 = two_n140[1:0];
    assign _e_285 = _e_286[_e_288];
    (* src = "src/main.spade:114,18" *)
    e_proj_main_b2i _e_284_i(_e_285, _e_284);
    assign _e_283 = {_e_284, zerob1_n139};
    assign _e_277 = {_e_278, _e_283};
    assign _e_271 = {_e_272, _e_277};
    assign _e_269 = {_e_270, _e_271};
    assign output__ = _e_269;
endmodule

module e_proj_routing_layer_sel_mux (
        input[7:0] layer_i,
        input[1:0] c_i, output[1:0] c_o,
        output[2:0] output__,
        input[1:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_routing_layer_sel_mux" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_routing_layer_sel_mux);
        end
        #1;
    end
    `endif
    logic[7:0] layer_n156;
    assign layer_n156 = layer_i;
    logic[1:0] c_n157;
    assign c_n157 = c_i;
    logic[1:0] c_n157_o;
    assign c_o = c_n157_o;
    (* src = "src/routing.spade:15,19" *)
    logic[2:0] _e_325;
    logic[1:0] _e_325_o;
    logic _e_337;
    logic[1:0] c_n159;
    logic[1:0] c_n159_o;
    (* src = "src/routing.spade:16,19" *)
    logic[2:0] _e_330;
    logic[1:0] _e_330_o;
    logic _e_339;
    logic[1:0] c_n161;
    logic[1:0] c_n161_o;
    (* src = "src/routing.spade:17,19" *)
    logic[2:0] _e_335;
    logic[1:0] _e_335_o;
    logic _e_341;
    logic[1:0] c_n163;
    logic[1:0] c_n163_o;
    (* src = "src/routing.spade:18,25" *)
    logic[2:0] _e_346;
    logic s0_n164;
    logic s1_n165;
    logic s2_n166;
    logic[3:0] _e_347;
    (* src = "src/routing.spade:21,9" *)
    logic[3:0] one_n167;
    logic[3:0] _e_349;
    (* src = "src/routing.spade:22,9" *)
    logic[3:0] two_n168;
    logic[3:0] _e_351;
    (* src = "src/routing.spade:23,9" *)
    logic[3:0] three_n169;
    (* src = "src/routing.spade:24,25" *)
    logic[2:0] _e_354;
    logic _e_358;
    logic _e_359;
    logic _e_360;
    logic _e_548;
    logic _e_549;
    logic _e_550;
    logic _e_551;
    logic _e_552;
    (* src = "src/routing.spade:25,34" *)
    logic[3:0] _e_363;
    logic[1:0] _e_365;
    (* src = "src/routing.spade:25,34" *)
    logic _e_362;
    logic _e_366;
    logic _e_367;
    logic _e_368;
    logic _e_554;
    logic _e_555;
    logic _e_557;
    logic _e_558;
    (* src = "src/routing.spade:26,33" *)
    logic[3:0] _e_371;
    logic[1:0] _e_373;
    (* src = "src/routing.spade:26,33" *)
    logic _e_370;
    logic _e_374;
    logic _e_375;
    logic _e_376;
    logic _e_560;
    logic _e_562;
    logic _e_563;
    logic _e_564;
    (* src = "src/routing.spade:27,33" *)
    logic[3:0] _e_379;
    (* src = "src/routing.spade:27,48" *)
    logic[1:0] _e_381;
    (* src = "src/routing.spade:27,33" *)
    logic _e_378;
    logic _e_383;
    logic _e_384;
    logic _e_385;
    logic _e_566;
    logic _e_569;
    logic _e_570;
    (* src = "src/routing.spade:28,32" *)
    logic[3:0] _e_388;
    (* src = "src/routing.spade:28,47" *)
    logic[1:0] _e_390;
    (* src = "src/routing.spade:28,32" *)
    logic _e_387;
    logic _e_392;
    logic _e_393;
    logic _e_394;
    logic _e_573;
    logic _e_574;
    logic _e_575;
    logic _e_576;
    (* src = "src/routing.spade:29,33" *)
    logic[3:0] _e_397;
    logic[1:0] _e_399;
    (* src = "src/routing.spade:29,33" *)
    logic _e_396;
    logic _e_400;
    logic _e_401;
    logic _e_402;
    logic _e_579;
    logic _e_581;
    logic _e_582;
    (* src = "src/routing.spade:30,32" *)
    logic[3:0] _e_405;
    logic[1:0] _e_407;
    (* src = "src/routing.spade:30,32" *)
    logic _e_404;
    logic _e_408;
    logic _e_409;
    logic _e_410;
    logic _e_586;
    logic _e_587;
    logic _e_588;
    (* src = "src/routing.spade:31,32" *)
    logic[3:0] _e_413;
    (* src = "src/routing.spade:31,47" *)
    logic[1:0] _e_415;
    (* src = "src/routing.spade:31,32" *)
    logic _e_412;
    logic _e_417;
    logic _e_418;
    logic _e_419;
    logic _e_593;
    logic _e_594;
    (* src = "src/routing.spade:32,31" *)
    logic[3:0] _e_422;
    (* src = "src/routing.spade:32,46" *)
    logic[1:0] _e_424;
    (* src = "src/routing.spade:32,31" *)
    logic _e_421;
    (* src = "src/routing.spade:24,18" *)
    logic _e_428;
    (* src = "src/routing.spade:35,6" *)
    logic[2:0] _e_427;
    logic[1:0] _e_427_o;
    (* src = "src/routing.spade:15,19" *)
    e_proj_config_chain_cfg_bit _e_325_i(c_n157, c_n157_o, _e_325, _e_325_o);
    assign _e_337 = _e_325[2];
    assign c_n159 = _e_325[1:0];
    assign _e_325_o[1:0] = c_n159_o;
    (* src = "src/routing.spade:16,19" *)
    e_proj_config_chain_cfg_bit _e_330_i(c_n159, c_n159_o, _e_330, _e_330_o);
    assign _e_339 = _e_330[2];
    assign c_n161 = _e_330[1:0];
    assign _e_330_o[1:0] = c_n161_o;
    (* src = "src/routing.spade:17,19" *)
    e_proj_config_chain_cfg_bit _e_335_i(c_n161, c_n161_o, _e_335, _e_335_o);
    assign _e_341 = _e_335[2];
    assign c_n163 = _e_335[1:0];
    assign _e_335_o[1:0] = c_n163_o;
    assign _e_346 = {_e_337, _e_339, _e_341};
    assign s0_n164 = _e_346[2];
    assign s1_n165 = _e_346[1];
    assign s2_n166 = _e_346[0];
    assign _e_347 = 1;
    assign one_n167 = _e_347;
    assign _e_349 = 2;
    assign two_n168 = _e_349;
    assign _e_351 = 3;
    assign three_n169 = _e_351;
    assign _e_354 = {s0_n164, s1_n165, s2_n166};
    assign _e_358 = _e_354[2];
    assign _e_359 = _e_354[1];
    assign _e_360 = _e_354[0];
    assign _e_548 = !_e_358;
    assign _e_549 = !_e_359;
    assign _e_550 = !_e_360;
    assign _e_551 = _e_548 && _e_549;
    assign _e_552 = _e_551 && _e_550;
    assign _e_363 = layer_n156[7:4];
    assign _e_365 = 0;
    assign _e_362 = _e_363[_e_365];
    assign _e_366 = _e_354[2];
    assign _e_367 = _e_354[1];
    assign _e_368 = _e_354[0];
    assign _e_554 = !_e_366;
    assign _e_555 = !_e_367;
    assign _e_557 = _e_554 && _e_555;
    assign _e_558 = _e_557 && _e_368;
    assign _e_371 = layer_n156[7:4];
    assign _e_373 = 1;
    assign _e_370 = _e_371[_e_373];
    assign _e_374 = _e_354[2];
    assign _e_375 = _e_354[1];
    assign _e_376 = _e_354[0];
    assign _e_560 = !_e_374;
    assign _e_562 = !_e_376;
    assign _e_563 = _e_560 && _e_375;
    assign _e_564 = _e_563 && _e_562;
    assign _e_379 = layer_n156[7:4];
    assign _e_381 = two_n168[1:0];
    assign _e_378 = _e_379[_e_381];
    assign _e_383 = _e_354[2];
    assign _e_384 = _e_354[1];
    assign _e_385 = _e_354[0];
    assign _e_566 = !_e_383;
    assign _e_569 = _e_566 && _e_384;
    assign _e_570 = _e_569 && _e_385;
    assign _e_388 = layer_n156[7:4];
    assign _e_390 = three_n169[1:0];
    assign _e_387 = _e_388[_e_390];
    assign _e_392 = _e_354[2];
    assign _e_393 = _e_354[1];
    assign _e_394 = _e_354[0];
    assign _e_573 = !_e_393;
    assign _e_574 = !_e_394;
    assign _e_575 = _e_392 && _e_573;
    assign _e_576 = _e_575 && _e_574;
    assign _e_397 = layer_n156[3:0];
    assign _e_399 = 0;
    assign _e_396 = _e_397[_e_399];
    assign _e_400 = _e_354[2];
    assign _e_401 = _e_354[1];
    assign _e_402 = _e_354[0];
    assign _e_579 = !_e_401;
    assign _e_581 = _e_400 && _e_579;
    assign _e_582 = _e_581 && _e_402;
    assign _e_405 = layer_n156[3:0];
    assign _e_407 = 1;
    assign _e_404 = _e_405[_e_407];
    assign _e_408 = _e_354[2];
    assign _e_409 = _e_354[1];
    assign _e_410 = _e_354[0];
    assign _e_586 = !_e_410;
    assign _e_587 = _e_408 && _e_409;
    assign _e_588 = _e_587 && _e_586;
    assign _e_413 = layer_n156[3:0];
    assign _e_415 = two_n168[1:0];
    assign _e_412 = _e_413[_e_415];
    assign _e_417 = _e_354[2];
    assign _e_418 = _e_354[1];
    assign _e_419 = _e_354[0];
    assign _e_593 = _e_417 && _e_418;
    assign _e_594 = _e_593 && _e_419;
    assign _e_422 = layer_n156[3:0];
    assign _e_424 = three_n169[1:0];
    assign _e_421 = _e_422[_e_424];
    always_comb begin
        priority casez ({_e_552, _e_558, _e_564, _e_570, _e_576, _e_582, _e_588, _e_594})
            8'b1???????: _e_428 = _e_362;
            8'b01??????: _e_428 = _e_370;
            8'b001?????: _e_428 = _e_378;
            8'b0001????: _e_428 = _e_387;
            8'b00001???: _e_428 = _e_396;
            8'b000001??: _e_428 = _e_404;
            8'b0000001?: _e_428 = _e_412;
            8'b00000001: _e_428 = _e_421;
            8'b?: _e_428 = 'x;
        endcase
    end
    assign _e_427 = {_e_428, c_n163};
    assign {c_n163_o} = _e_427_o;
    assign output__ = _e_427;
    assign _e_427_o = input__;
endmodule

module e_proj_cell_cell_test_harness (
        input clk_i,
        input x_i,
        input y_i,
        input cfg_clk_i,
        input cfg_value_i,
        output output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_cell_cell_test_harness" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_cell_cell_test_harness);
        end
        #1;
    end
    `endif
    logic clk_n93;
    assign clk_n93 = clk_i;
    logic x_n94;
    assign x_n94 = x_i;
    logic y_n95;
    assign y_n95 = y_i;
    logic cfg_clk_n96;
    assign cfg_clk_n96 = cfg_clk_i;
    logic cfg_value_n97;
    assign cfg_value_n97 = cfg_value_i;
    (* src = "src/cell.spade:40,16" *)
    logic _e_95;
    logic[1:0] _e_97_o;
    (* src = "src/cell.spade:38,13" *)
    logic[1:0] c_n98;
    logic[1:0] c_n98_o;
    (* src = "src/cell.spade:44,24" *)
    logic[2:0] _e_106;
    logic[1:0] _e_106_o;
    logic _e_110;
    logic[1:0] chain_n100;
    logic[1:0] chain_n100_o;
    (* src = "src/cell.spade:45,9" *)
    logic[1:0] _e_107_o;
    logic[1:0] _e_109;
    assign _e_95 = cfg_value_n97;
    
    assign c_n98 = {cfg_clk_n96, _e_95};
    assign {_e_97_o} = c_n98_o;
    (* src = "src/cell.spade:44,24" *)
    e_proj_cell_cell _e_106_i(clk_n93, x_n94, y_n95, c_n98, c_n98_o, _e_106, _e_106_o);
    assign _e_110 = _e_106[2];
    assign chain_n100 = _e_106[1:0];
    assign _e_106_o[1:0] = chain_n100_o;
    assign chain_n100_o[1:0] = _e_107_o;
    assign _e_109 = 1;
    assign _e_107_o = _e_109;
    assign output__ = _e_110;
endmodule

module e_proj_main_cell_with_routing (
        input clk_i,
        input[7:0] input_layer_i,
        input[1:0] c_i, output[1:0] c_o,
        output[2:0] output__,
        input[1:0] input__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_main_cell_with_routing" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_main_cell_with_routing);
        end
        #1;
    end
    `endif
    logic clk_n102;
    assign clk_n102 = clk_i;
    logic[7:0] input_layer_n103;
    assign input_layer_n103 = input_layer_i;
    logic[1:0] c_n104;
    assign c_n104 = c_i;
    logic[1:0] c_n104_o;
    assign c_o = c_n104_o;
    (* src = "src/main.spade:26,18" *)
    logic[2:0] _e_126;
    logic[1:0] _e_126_o;
    logic x_n109;
    logic[1:0] c_n106;
    logic[1:0] c_n106_o;
    (* src = "src/main.spade:27,18" *)
    logic[2:0] _e_132;
    logic[1:0] _e_132_o;
    logic y_n110;
    logic[1:0] c_n108;
    logic[1:0] c_n108_o;
    (* src = "src/main.spade:34,5" *)
    logic[2:0] _e_139;
    logic[1:0] _e_139_o;
    (* src = "src/main.spade:26,18" *)
    e_proj_routing_layer_sel_mux _e_126_i(input_layer_n103, c_n104, c_n104_o, _e_126, _e_126_o);
    assign x_n109 = _e_126[2];
    assign c_n106 = _e_126[1:0];
    assign _e_126_o[1:0] = c_n106_o;
    (* src = "src/main.spade:27,18" *)
    e_proj_routing_layer_sel_mux _e_132_i(input_layer_n103, c_n106, c_n106_o, _e_132, _e_132_o);
    assign y_n110 = _e_132[2];
    assign c_n108 = _e_132[1:0];
    assign _e_132_o[1:0] = c_n108_o;
    (* src = "src/main.spade:34,5" *)
    e_proj_cell_cell _e_139_i(clk_n102, x_n109, y_n110, c_n108, c_n108_o, _e_139, _e_139_o);
    assign output__ = _e_139;
    assign _e_139_o = input__;
endmodule