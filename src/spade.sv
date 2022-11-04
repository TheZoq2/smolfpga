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
    logic clk_n81;
    assign clk_n81 = clk_i;
    logic x_n82;
    assign x_n82 = x_i;
    logic y_n83;
    assign y_n83 = y_i;
    logic cfg_clk_n84;
    assign cfg_clk_n84 = cfg_clk_i;
    logic cfg_value_n85;
    assign cfg_value_n85 = cfg_value_i;
    (* src = "src/cell.spade:44,16" *)
    logic _e_111;
    logic[1:0] _e_113_o;
    (* src = "src/cell.spade:42,13" *)
    logic[1:0] c_n86;
    logic[1:0] c_n86_o;
    (* src = "src/cell.spade:48,24" *)
    logic[2:0] _e_122;
    logic[1:0] _e_122_o;
    logic _e_126;
    logic[1:0] chain_n88;
    logic[1:0] chain_n88_o;
    (* src = "src/cell.spade:49,9" *)
    logic[1:0] _e_123_o;
    logic[1:0] _e_125;
    assign _e_111 = cfg_value_n85;
    
    assign c_n86 = {cfg_clk_n84, _e_111};
    assign {_e_113_o} = c_n86_o;
    (* src = "src/cell.spade:48,24" *)
    e_proj_cell_cell _e_122_i(clk_n81, x_n82, y_n83, c_n86, c_n86_o, _e_122, _e_122_o);
    assign _e_126 = _e_122[2];
    assign chain_n88 = _e_122[1:0];
    assign _e_122_o[1:0] = chain_n88_o;
    assign chain_n88_o[1:0] = _e_123_o;
    assign _e_125 = 1;
    assign _e_123_o = _e_125;
    assign output__ = _e_126;
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
    logic clk_n64;
    assign clk_n64 = clk_i;
    logic x_n65;
    assign x_n65 = x_i;
    logic y_n66;
    assign y_n66 = y_i;
    logic[1:0] c_n67;
    assign c_n67 = c_i;
    logic[1:0] c_n67_o;
    assign c_o = c_n67_o;
    (* src = "src/cell.spade:13,21" *)
    logic[2:0] _e_50;
    logic[1:0] _e_50_o;
    logic on00_n68;
    logic[1:0] c_n69;
    logic[1:0] c_n69_o;
    (* src = "src/cell.spade:14,21" *)
    logic[2:0] _e_55;
    logic[1:0] _e_55_o;
    logic on01_n70;
    logic[1:0] c_n71;
    logic[1:0] c_n71_o;
    (* src = "src/cell.spade:15,21" *)
    logic[2:0] _e_60;
    logic[1:0] _e_60_o;
    logic on10_n72;
    logic[1:0] c_n73;
    logic[1:0] c_n73_o;
    (* src = "src/cell.spade:16,21" *)
    logic[2:0] _e_65;
    logic[1:0] _e_65_o;
    logic on11_n74;
    logic[1:0] c_n75;
    logic[1:0] c_n75_o;
    (* src = "src/cell.spade:17,25" *)
    logic[2:0] _e_70;
    logic[1:0] _e_70_o;
    logic register_n78;
    logic[1:0] c_n77;
    logic[1:0] c_n77_o;
    (* src = "src/cell.spade:20,27" *)
    logic[1:0] _e_76;
    logic _e_79;
    logic _e_80;
    logic _e_158;
    logic _e_159;
    logic _e_160;
    logic _e_83;
    logic _e_84;
    logic _e_162;
    logic _e_164;
    logic _e_87;
    logic _e_88;
    logic _e_167;
    logic _e_168;
    logic _e_91;
    logic _e_92;
    logic _e_172;
    (* src = "src/cell.spade:20,20" *)
    logic lut_out_n79;
    (* src = "src/cell.spade:27,14" *)
    reg registered_n80;
    (* src = "src/cell.spade:29,7" *)
    logic _e_100;
    (* src = "src/cell.spade:29,6" *)
    logic[2:0] _e_99;
    logic[1:0] _e_99_o;
    (* src = "src/cell.spade:13,21" *)
    e_proj_config_chain_cfg_bit _e_50_i(c_n67, c_n67_o, _e_50, _e_50_o);
    assign on00_n68 = _e_50[2];
    assign c_n69 = _e_50[1:0];
    assign _e_50_o[1:0] = c_n69_o;
    (* src = "src/cell.spade:14,21" *)
    e_proj_config_chain_cfg_bit _e_55_i(c_n69, c_n69_o, _e_55, _e_55_o);
    assign on01_n70 = _e_55[2];
    assign c_n71 = _e_55[1:0];
    assign _e_55_o[1:0] = c_n71_o;
    (* src = "src/cell.spade:15,21" *)
    e_proj_config_chain_cfg_bit _e_60_i(c_n71, c_n71_o, _e_60, _e_60_o);
    assign on10_n72 = _e_60[2];
    assign c_n73 = _e_60[1:0];
    assign _e_60_o[1:0] = c_n73_o;
    (* src = "src/cell.spade:16,21" *)
    e_proj_config_chain_cfg_bit _e_65_i(c_n73, c_n73_o, _e_65, _e_65_o);
    assign on11_n74 = _e_65[2];
    assign c_n75 = _e_65[1:0];
    assign _e_65_o[1:0] = c_n75_o;
    (* src = "src/cell.spade:17,25" *)
    e_proj_config_chain_cfg_bit _e_70_i(c_n75, c_n75_o, _e_70, _e_70_o);
    assign register_n78 = _e_70[2];
    assign c_n77 = _e_70[1:0];
    assign _e_70_o[1:0] = c_n77_o;
    assign _e_76 = {x_n65, y_n66};
    assign _e_79 = _e_76[1];
    assign _e_80 = _e_76[0];
    assign _e_158 = !_e_79;
    assign _e_159 = !_e_80;
    assign _e_160 = _e_158 && _e_159;
    assign _e_83 = _e_76[1];
    assign _e_84 = _e_76[0];
    assign _e_162 = !_e_83;
    assign _e_164 = _e_162 && _e_84;
    assign _e_87 = _e_76[1];
    assign _e_88 = _e_76[0];
    assign _e_167 = !_e_88;
    assign _e_168 = _e_87 && _e_167;
    assign _e_91 = _e_76[1];
    assign _e_92 = _e_76[0];
    assign _e_172 = _e_91 && _e_92;
    always_comb begin
        priority casez ({_e_160, _e_164, _e_168, _e_172})
            4'b1???: lut_out_n79 = on00_n68;
            4'b01??: lut_out_n79 = on01_n70;
            4'b001?: lut_out_n79 = on10_n72;
            4'b0001: lut_out_n79 = on11_n74;
            4'b?: lut_out_n79 = 'x;
        endcase
    end
    always @(posedge clk_n64) begin
        registered_n80 <= lut_out_n79;
    end
    assign _e_100 = register_n78 ? registered_n80 : lut_out_n79;
    assign _e_99 = {_e_100, c_n77};
    assign {c_n77_o} = _e_99_o;
    assign output__ = _e_99;
    assign _e_99_o = input__;
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
    logic clk_n57;
    assign clk_n57 = clk_i;
    logic sync1_n58;
    assign sync1_n58 = sync1_i;
    (* src = "build/spade/stdlib/io.spade:9,14" *)
    reg sync2_n59;
    (* src = "build/spade/stdlib/io.spade:10,14" *)
    logic _e_14;
    (* src = "build/spade/stdlib/io.spade:10,5" *)
    logic _e_12;
    always @(posedge clk_n57) begin
        sync2_n59 <= sync1_n58;
    end
    assign _e_14 = !sync1_n58;
    assign _e_12 = sync2_n59 && _e_14;
    assign output__ = _e_12;
endmodule

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
    logic clk_n54;
    assign clk_n54 = clk_i;
    logic sync1_n55;
    assign sync1_n55 = sync1_i;
    (* src = "build/spade/stdlib/io.spade:3,14" *)
    reg sync2_n56;
    (* src = "build/spade/stdlib/io.spade:4,14" *)
    logic _e_6;
    (* src = "build/spade/stdlib/io.spade:4,5" *)
    logic _e_4;
    always @(posedge clk_n54) begin
        sync2_n56 <= sync1_n55;
    end
    assign _e_6 = !sync2_n56;
    assign _e_4 = sync1_n55 && _e_6;
    assign output__ = _e_4;
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
    logic clk_n89;
    assign clk_n89 = clk_i;
    logic[4:0] inputs_n90;
    assign inputs_n90 = inputs_i;
    logic cfg_clk_n91;
    assign cfg_clk_n91 = cfg_clk_i;
    logic cfg_value_n92;
    assign cfg_value_n92 = cfg_value_i;
    (* src = "src/main.spade:13,16" *)
    logic _e_131;
    logic[1:0] _e_133_o;
    (* src = "src/main.spade:11,17" *)
    logic[1:0] chain_n93;
    logic[1:0] chain_n93_o;
    logic[2:0] _e_139;
    (* src = "src/main.spade:19,12" *)
    logic _e_137;
    logic[2:0] _e_142;
    (* src = "src/main.spade:20,12" *)
    logic _e_140;
    (* src = "src/main.spade:17,29" *)
    logic[2:0] _e_146;
    logic[1:0] _e_146_o;
    logic _e_151;
    logic[1:0] chain_n95;
    logic[1:0] chain_n95_o;
    (* src = "src/main.spade:25,9" *)
    logic[1:0] _e_147_o;
    logic[1:0] _e_149;
    logic[7:0] _e_154;
    logic[7:0] _e_156;
    (* src = "src/main.spade:27,5" *)
    logic[7:0] _e_150;
    assign _e_131 = cfg_value_n92;
    
    assign chain_n93 = {cfg_clk_n91, _e_131};
    assign {_e_133_o} = chain_n93_o;
    assign _e_139 = 0;
    assign _e_137 = inputs_n90[_e_139];
    assign _e_142 = 1;
    assign _e_140 = inputs_n90[_e_142];
    (* src = "src/main.spade:17,29" *)
    e_proj_cell_cell _e_146_i(clk_n89, _e_137, _e_140, chain_n93, chain_n93_o, _e_146, _e_146_o);
    assign _e_151 = _e_146[2];
    assign chain_n95 = _e_146[1:0];
    assign _e_146_o[1:0] = chain_n95_o;
    assign chain_n95_o[1:0] = _e_147_o;
    assign _e_149 = 0;
    assign _e_147_o = _e_149;
    assign _e_154 = 1;
    assign _e_156 = 0;
    assign _e_150 = _e_151 ? _e_154 : _e_156;
    assign output__ = _e_150;
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
    logic[1:0] chain_n61;
    assign chain_n61 = chain_i;
    logic[1:0] chain_n61_o;
    assign chain_o = chain_n61_o;
    (* src = "src/config_chain.spade:11,9" *)
    logic _e_28;
    (* src = "src/config_chain.spade:11,29" *)
    logic _e_30;
    (* src = "src/config_chain.spade:11,20" *)
    reg value_n62;
    (* src = "src/config_chain.spade:14,14" *)
    logic _e_34;
    (* src = "src/config_chain.spade:15,16" *)
    logic _e_36;
    (* src = "src/config_chain.spade:16,16" *)
    logic[1:0] _e_38_o;
    (* src = "src/config_chain.spade:13,21" *)
    logic[1:0] new_chain_n63;
    logic[1:0] new_chain_n63_o;
    (* src = "src/config_chain.spade:18,6" *)
    logic _e_42;
    (* src = "src/config_chain.spade:18,6" *)
    logic[2:0] _e_41;
    logic[1:0] _e_41_o;
    assign _e_28 = chain_n61[1];
    assign _e_30 = chain_n61[0];
    always @(posedge _e_28) begin
        value_n62 <= _e_30;
    end
    assign _e_34 = chain_n61[1];
    assign _e_36 = value_n62;
    assign chain_n61_o[1:0] = _e_38_o;
    assign new_chain_n63 = {_e_34, _e_36};
    assign {_e_38_o} = new_chain_n63_o;
    assign _e_42 = value_n62;
    assign _e_41 = {_e_42, new_chain_n63};
    assign {new_chain_n63_o} = _e_41_o;
    assign output__ = _e_41;
    assign _e_41_o = input__;
endmodule