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
    logic clk_n55;
    assign clk_n55 = clk_i;
    logic sync1_n56;
    assign sync1_n56 = sync1_i;
    (* src = "build/spade/stdlib/io.spade:3,14" *)
    reg sync2_n57;
    (* src = "build/spade/stdlib/io.spade:4,14" *)
    logic _e_6;
    (* src = "build/spade/stdlib/io.spade:4,5" *)
    logic _e_4;
    always @(posedge clk_n55) begin
        sync2_n57 <= sync1_n56;
    end
    assign _e_6 = !sync2_n57;
    assign _e_4 = sync1_n56 && _e_6;
    assign output__ = _e_4;
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
    logic clk_n82;
    assign clk_n82 = clk_i;
    logic x_n83;
    assign x_n83 = x_i;
    logic y_n84;
    assign y_n84 = y_i;
    logic cfg_clk_n85;
    assign cfg_clk_n85 = cfg_clk_i;
    logic cfg_value_n86;
    assign cfg_value_n86 = cfg_value_i;
    (* src = "src/cell.spade:44,16" *)
    logic _e_111;
    logic[1:0] _e_113_o;
    (* src = "src/cell.spade:42,13" *)
    logic[1:0] c_n87;
    logic[1:0] c_n87_o;
    (* src = "src/cell.spade:48,24" *)
    logic[2:0] _e_122;
    logic[1:0] _e_122_o;
    logic _e_126;
    logic[1:0] chain_n89;
    logic[1:0] chain_n89_o;
    (* src = "src/cell.spade:49,9" *)
    logic[1:0] _e_123_o;
    logic[1:0] _e_125;
    assign _e_111 = cfg_value_n86;
    
    assign c_n87 = {cfg_clk_n85, _e_111};
    assign {_e_113_o} = c_n87_o;
    (* src = "src/cell.spade:48,24" *)
    e_proj_cell_cell _e_122_i(clk_n82, x_n83, y_n84, c_n87, c_n87_o, _e_122, _e_122_o);
    assign _e_126 = _e_122[2];
    assign chain_n89 = _e_122[1:0];
    assign _e_122_o[1:0] = chain_n89_o;
    assign chain_n89_o[1:0] = _e_123_o;
    assign _e_125 = 1;
    assign _e_123_o = _e_125;
    assign output__ = _e_126;
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
    logic clk_n58;
    assign clk_n58 = clk_i;
    logic sync1_n59;
    assign sync1_n59 = sync1_i;
    (* src = "build/spade/stdlib/io.spade:9,14" *)
    reg sync2_n60;
    (* src = "build/spade/stdlib/io.spade:10,14" *)
    logic _e_14;
    (* src = "build/spade/stdlib/io.spade:10,5" *)
    logic _e_12;
    always @(posedge clk_n58) begin
        sync2_n60 <= sync1_n59;
    end
    assign _e_14 = !sync1_n59;
    assign _e_12 = sync2_n60 && _e_14;
    assign output__ = _e_12;
endmodule

module e_proj_main_cell_test (
        input clk_i,
        input[4:0] inputs_i,
        input cfg_clk_i,
        input cfg_value_i,
        output[7:0] output__
    );
    `ifdef COCOTB_SIM
    string __top_module;
    string __vcd_file;
    initial begin
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_main_cell_test" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_main_cell_test);
        end
        #1;
    end
    `endif
    logic clk_n91;
    assign clk_n91 = clk_i;
    logic[4:0] inputs_n92;
    assign inputs_n92 = inputs_i;
    logic cfg_clk_n93;
    assign cfg_clk_n93 = cfg_clk_i;
    logic cfg_value_n94;
    assign cfg_value_n94 = cfg_value_i;
    (* src = "src/main.spade:17,16" *)
    logic _e_139;
    logic[1:0] _e_141_o;
    (* src = "src/main.spade:15,13" *)
    logic[1:0] c_n95;
    logic[1:0] c_n95_o;
    logic[3:0] _e_143;
    (* src = "src/main.spade:21,9" *)
    logic[3:0] four_n96;
    logic[2:0] _e_149;
    (* src = "src/main.spade:22,34" *)
    logic _e_147;
    logic[2:0] _e_152;
    (* src = "src/main.spade:22,45" *)
    logic _e_150;
    (* src = "src/main.spade:22,19" *)
    logic[2:0] _e_156;
    logic[1:0] _e_156_o;
    logic _e_189;
    logic[1:0] c_n98;
    logic[1:0] c_n98_o;
    logic[2:0] _e_161;
    (* src = "src/main.spade:23,34" *)
    logic _e_159;
    logic[2:0] _e_164;
    (* src = "src/main.spade:23,45" *)
    logic _e_162;
    (* src = "src/main.spade:23,19" *)
    logic[2:0] _e_168;
    logic[1:0] _e_168_o;
    logic _e_193;
    logic[1:0] c_n100;
    logic[1:0] c_n100_o;
    logic[2:0] _e_173;
    (* src = "src/main.spade:24,34" *)
    logic _e_171;
    (* src = "src/main.spade:24,52" *)
    logic[2:0] _e_176;
    (* src = "src/main.spade:24,45" *)
    logic _e_174;
    (* src = "src/main.spade:24,19" *)
    logic[2:0] _e_181;
    logic[1:0] _e_181_o;
    logic _e_196;
    logic[1:0] c_n102;
    logic[1:0] c_n102_o;
    (* src = "src/main.spade:27,9" *)
    logic[1:0] _e_182_o;
    logic[1:0] _e_184;
    logic[4:0] _e_186;
    (* src = "src/main.spade:29,17" *)
    logic _e_188;
    (* src = "src/main.spade:29,35" *)
    logic _e_192;
    (* src = "src/main.spade:29,53" *)
    logic _e_195;
    logic[1:0] _e_191;
    logic[2:0] _e_187;
    logic[7:0] _e_185;
    assign _e_139 = cfg_value_n94;
    
    assign c_n95 = {cfg_clk_n93, _e_139};
    assign {_e_141_o} = c_n95_o;
    assign _e_143 = 4;
    assign four_n96 = _e_143;
    assign _e_149 = 0;
    assign _e_147 = inputs_n92[_e_149];
    assign _e_152 = 1;
    assign _e_150 = inputs_n92[_e_152];
    (* src = "src/main.spade:22,19" *)
    e_proj_cell_cell _e_156_i(clk_n91, _e_147, _e_150, c_n95, c_n95_o, _e_156, _e_156_o);
    assign _e_189 = _e_156[2];
    assign c_n98 = _e_156[1:0];
    assign _e_156_o[1:0] = c_n98_o;
    assign _e_161 = 2;
    assign _e_159 = inputs_n92[_e_161];
    assign _e_164 = 3;
    assign _e_162 = inputs_n92[_e_164];
    (* src = "src/main.spade:23,19" *)
    e_proj_cell_cell _e_168_i(clk_n91, _e_159, _e_162, c_n98, c_n98_o, _e_168, _e_168_o);
    assign _e_193 = _e_168[2];
    assign c_n100 = _e_168[1:0];
    assign _e_168_o[1:0] = c_n100_o;
    assign _e_173 = 3;
    assign _e_171 = inputs_n92[_e_173];
    assign _e_176 = four_n96[2:0];
    assign _e_174 = inputs_n92[_e_176];
    (* src = "src/main.spade:24,19" *)
    e_proj_cell_cell _e_181_i(clk_n91, _e_171, _e_174, c_n100, c_n100_o, _e_181, _e_181_o);
    assign _e_196 = _e_181[2];
    assign c_n102 = _e_181[1:0];
    assign _e_181_o[1:0] = c_n102_o;
    assign c_n102_o[1:0] = _e_182_o;
    assign _e_184 = 0;
    assign _e_182_o = _e_184;
    assign _e_186 = 0;
    (* src = "src/main.spade:29,17" *)
    e_proj_main_b2i _e_188_i(_e_189, _e_188);
    (* src = "src/main.spade:29,35" *)
    e_proj_main_b2i _e_192_i(_e_193, _e_192);
    (* src = "src/main.spade:29,53" *)
    e_proj_main_b2i _e_195_i(_e_196, _e_195);
    assign _e_191 = {_e_192, _e_195};
    assign _e_187 = {_e_188, _e_191};
    assign _e_185 = {_e_186, _e_187};
    assign output__ = _e_185;
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
    logic[1:0] chain_n62;
    assign chain_n62 = chain_i;
    logic[1:0] chain_n62_o;
    assign chain_o = chain_n62_o;
    (* src = "src/config_chain.spade:11,9" *)
    logic _e_28;
    (* src = "src/config_chain.spade:11,29" *)
    logic _e_30;
    (* src = "src/config_chain.spade:11,20" *)
    reg value_n63;
    (* src = "src/config_chain.spade:14,14" *)
    logic _e_34;
    (* src = "src/config_chain.spade:15,16" *)
    logic _e_36;
    (* src = "src/config_chain.spade:16,16" *)
    logic[1:0] _e_38_o;
    (* src = "src/config_chain.spade:13,21" *)
    logic[1:0] new_chain_n64;
    logic[1:0] new_chain_n64_o;
    (* src = "src/config_chain.spade:18,6" *)
    logic _e_42;
    (* src = "src/config_chain.spade:18,6" *)
    logic[2:0] _e_41;
    logic[1:0] _e_41_o;
    assign _e_28 = chain_n62[1];
    assign _e_30 = chain_n62[0];
    always @(posedge _e_28) begin
        value_n63 <= _e_30;
    end
    assign _e_34 = chain_n62[1];
    assign _e_36 = value_n63;
    assign chain_n62_o[1:0] = _e_38_o;
    assign new_chain_n64 = {_e_34, _e_36};
    assign {_e_38_o} = new_chain_n64_o;
    assign _e_42 = value_n63;
    assign _e_41 = {_e_42, new_chain_n64};
    assign {new_chain_n64_o} = _e_41_o;
    assign output__ = _e_41;
    assign _e_41_o = input__;
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
    logic x_n90;
    assign x_n90 = x_i;
    logic _e_133;
    (* src = "src/main.spade:6,11" *)
    logic _e_132;
    logic _e_135;
    (* src = "src/main.spade:6,5" *)
    logic _e_129;
    assign _e_133 = 0;
    assign _e_132 = ~_e_133;
    assign _e_135 = 0;
    assign _e_129 = x_n90 ? _e_132 : _e_135;
    assign output__ = _e_129;
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
    logic clk_n65;
    assign clk_n65 = clk_i;
    logic x_n66;
    assign x_n66 = x_i;
    logic y_n67;
    assign y_n67 = y_i;
    logic[1:0] c_n68;
    assign c_n68 = c_i;
    logic[1:0] c_n68_o;
    assign c_o = c_n68_o;
    (* src = "src/cell.spade:13,21" *)
    logic[2:0] _e_50;
    logic[1:0] _e_50_o;
    logic on00_n69;
    logic[1:0] c_n70;
    logic[1:0] c_n70_o;
    (* src = "src/cell.spade:14,21" *)
    logic[2:0] _e_55;
    logic[1:0] _e_55_o;
    logic on01_n71;
    logic[1:0] c_n72;
    logic[1:0] c_n72_o;
    (* src = "src/cell.spade:15,21" *)
    logic[2:0] _e_60;
    logic[1:0] _e_60_o;
    logic on10_n73;
    logic[1:0] c_n74;
    logic[1:0] c_n74_o;
    (* src = "src/cell.spade:16,21" *)
    logic[2:0] _e_65;
    logic[1:0] _e_65_o;
    logic on11_n75;
    logic[1:0] c_n76;
    logic[1:0] c_n76_o;
    (* src = "src/cell.spade:17,25" *)
    logic[2:0] _e_70;
    logic[1:0] _e_70_o;
    logic register_n79;
    logic[1:0] c_n78;
    logic[1:0] c_n78_o;
    (* src = "src/cell.spade:20,27" *)
    logic[1:0] _e_76;
    logic _e_79;
    logic _e_80;
    logic _e_199;
    logic _e_200;
    logic _e_201;
    logic _e_83;
    logic _e_84;
    logic _e_203;
    logic _e_205;
    logic _e_87;
    logic _e_88;
    logic _e_208;
    logic _e_209;
    logic _e_91;
    logic _e_92;
    logic _e_213;
    (* src = "src/cell.spade:20,20" *)
    logic lut_out_n80;
    (* src = "src/cell.spade:27,14" *)
    reg registered_n81;
    (* src = "src/cell.spade:29,7" *)
    logic _e_100;
    (* src = "src/cell.spade:29,6" *)
    logic[2:0] _e_99;
    logic[1:0] _e_99_o;
    (* src = "src/cell.spade:13,21" *)
    e_proj_config_chain_cfg_bit _e_50_i(c_n68, c_n68_o, _e_50, _e_50_o);
    assign on00_n69 = _e_50[2];
    assign c_n70 = _e_50[1:0];
    assign _e_50_o[1:0] = c_n70_o;
    (* src = "src/cell.spade:14,21" *)
    e_proj_config_chain_cfg_bit _e_55_i(c_n70, c_n70_o, _e_55, _e_55_o);
    assign on01_n71 = _e_55[2];
    assign c_n72 = _e_55[1:0];
    assign _e_55_o[1:0] = c_n72_o;
    (* src = "src/cell.spade:15,21" *)
    e_proj_config_chain_cfg_bit _e_60_i(c_n72, c_n72_o, _e_60, _e_60_o);
    assign on10_n73 = _e_60[2];
    assign c_n74 = _e_60[1:0];
    assign _e_60_o[1:0] = c_n74_o;
    (* src = "src/cell.spade:16,21" *)
    e_proj_config_chain_cfg_bit _e_65_i(c_n74, c_n74_o, _e_65, _e_65_o);
    assign on11_n75 = _e_65[2];
    assign c_n76 = _e_65[1:0];
    assign _e_65_o[1:0] = c_n76_o;
    (* src = "src/cell.spade:17,25" *)
    e_proj_config_chain_cfg_bit _e_70_i(c_n76, c_n76_o, _e_70, _e_70_o);
    assign register_n79 = _e_70[2];
    assign c_n78 = _e_70[1:0];
    assign _e_70_o[1:0] = c_n78_o;
    assign _e_76 = {x_n66, y_n67};
    assign _e_79 = _e_76[1];
    assign _e_80 = _e_76[0];
    assign _e_199 = !_e_79;
    assign _e_200 = !_e_80;
    assign _e_201 = _e_199 && _e_200;
    assign _e_83 = _e_76[1];
    assign _e_84 = _e_76[0];
    assign _e_203 = !_e_83;
    assign _e_205 = _e_203 && _e_84;
    assign _e_87 = _e_76[1];
    assign _e_88 = _e_76[0];
    assign _e_208 = !_e_88;
    assign _e_209 = _e_87 && _e_208;
    assign _e_91 = _e_76[1];
    assign _e_92 = _e_76[0];
    assign _e_213 = _e_91 && _e_92;
    always_comb begin
        priority casez ({_e_201, _e_205, _e_209, _e_213})
            4'b1???: lut_out_n80 = on00_n69;
            4'b01??: lut_out_n80 = on01_n71;
            4'b001?: lut_out_n80 = on10_n73;
            4'b0001: lut_out_n80 = on11_n75;
            4'b?: lut_out_n80 = 'x;
        endcase
    end
    always @(posedge clk_n65) begin
        registered_n81 <= lut_out_n80;
    end
    assign _e_100 = register_n79 ? registered_n81 : lut_out_n80;
    assign _e_99 = {_e_100, c_n78};
    assign {c_n78_o} = _e_99_o;
    assign output__ = _e_99;
    assign _e_99_o = input__;
endmodule