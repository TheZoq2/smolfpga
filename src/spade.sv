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
    logic clk_n66;
    assign clk_n66 = clk_i;
    logic sync1_n67;
    assign sync1_n67 = sync1_i;
    (* src = "build/spade/stdlib/io.spade:3,14" *)
    reg sync2_n68;
    (* src = "build/spade/stdlib/io.spade:4,14" *)
    logic _e_6;
    (* src = "build/spade/stdlib/io.spade:4,5" *)
    logic _e_4;
    always @(posedge clk_n66) begin
        sync2_n68 <= sync1_n67;
    end
    assign _e_6 = !sync2_n68;
    assign _e_4 = sync1_n67 && _e_6;
    assign output__ = _e_4;
endmodule

module e_proj_main_cell_test (
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
        if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == "e_proj_main_cell_test" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin
            $dumpfile (__vcd_file);
            $dumpvars (0, e_proj_main_cell_test);
        end
        #1;
    end
    `endif
    logic clk_n114;
    assign clk_n114 = clk_i;
    logic[3:0] inputs_n115;
    assign inputs_n115 = inputs_i;
    logic cfg_clk_n116;
    assign cfg_clk_n116 = cfg_clk_i;
    logic cfg_value_n117;
    assign cfg_value_n117 = cfg_value_i;
    (* src = "src/main.spade:56,16" *)
    logic _e_176;
    logic[1:0] _e_178_o;
    (* src = "src/main.spade:54,13" *)
    logic[1:0] c_n118;
    logic[1:0] c_n118_o;
    (* src = "src/main.spade:63,22" *)
    logic[7:0] _e_182;
    (* src = "src/main.spade:61,22" *)
    logic[5:0] _e_189;
    logic[1:0] _e_189_o;
    logic[3:0] cells_n122;
    logic[1:0] c_n123;
    logic[1:0] c_n123_o;
    (* src = "src/main.spade:69,50" *)
    logic[3:0] _e_192;
    (* src = "src/main.spade:69,58" *)
    logic[3:0] _e_194;
    (* src = "src/main.spade:69,26" *)
    logic[5:0] _e_199;
    logic[1:0] _e_199_o;
    logic[3:0] _e_184;
    logic[1:0] c_n124;
    logic[1:0] c_n124_o;
    (* src = "src/main.spade:73,23" *)
    logic[3:0] _e_203;
    (* src = "src/main.spade:74,23" *)
    logic[3:0] _e_205;
    (* src = "src/main.spade:72,22" *)
    logic[7:0] _e_202;
    (* src = "src/main.spade:70,22" *)
    logic[5:0] _e_210;
    logic[1:0] _e_210_o;
    logic[3:0] cells_n125;
    logic[1:0] c_n126;
    logic[1:0] c_n126_o;
    (* src = "src/main.spade:78,50" *)
    logic[3:0] _e_213;
    (* src = "src/main.spade:78,58" *)
    logic[3:0] _e_215;
    (* src = "src/main.spade:78,26" *)
    logic[5:0] _e_220;
    logic[1:0] _e_220_o;
    logic[3:0] feedback1_n120;
    logic[1:0] c_n127;
    logic[1:0] c_n127_o;
    (* src = "src/main.spade:82,23" *)
    logic[3:0] _e_224;
    (* src = "src/main.spade:83,23" *)
    logic[3:0] _e_226;
    (* src = "src/main.spade:81,22" *)
    logic[7:0] _e_223;
    (* src = "src/main.spade:79,22" *)
    logic[5:0] _e_231;
    logic[1:0] _e_231_o;
    logic[3:0] cells_n128;
    logic[1:0] c_n129;
    logic[1:0] c_n129_o;
    (* src = "src/main.spade:87,50" *)
    logic[3:0] _e_234;
    logic _e_237;
    logic _e_238;
    logic _e_239;
    logic _e_240;
    (* src = "src/main.spade:87,58" *)
    logic[3:0] _e_236;
    (* src = "src/main.spade:87,26" *)
    logic[5:0] _e_244;
    logic[1:0] _e_244_o;
    logic[3:0] feedback2_n121;
    logic[1:0] c_n130;
    logic[1:0] c_n130_o;
    (* src = "src/main.spade:98,9" *)
    logic[1:0] _e_245_o;
    logic[1:0] _e_247;
    logic[2:0] _e_248;
    (* src = "src/main.spade:100,9" *)
    logic[2:0] two_n131;
    logic[2:0] _e_250;
    (* src = "src/main.spade:101,9" *)
    logic[2:0] three_n132;
    logic[3:0] _e_253;
    (* src = "src/main.spade:103,23" *)
    logic[3:0] _e_257;
    logic[1:0] _e_259;
    (* src = "src/main.spade:103,23" *)
    logic _e_256;
    (* src = "src/main.spade:103,18" *)
    logic _e_255;
    (* src = "src/main.spade:104,23" *)
    logic[3:0] _e_263;
    logic[1:0] _e_265;
    (* src = "src/main.spade:104,23" *)
    logic _e_262;
    (* src = "src/main.spade:104,18" *)
    logic _e_261;
    (* src = "src/main.spade:105,23" *)
    logic[3:0] _e_269;
    (* src = "src/main.spade:105,31" *)
    logic[1:0] _e_271;
    (* src = "src/main.spade:105,23" *)
    logic _e_268;
    (* src = "src/main.spade:105,18" *)
    logic _e_267;
    (* src = "src/main.spade:106,23" *)
    logic[3:0] _e_275;
    (* src = "src/main.spade:106,31" *)
    logic[1:0] _e_277;
    (* src = "src/main.spade:106,23" *)
    logic _e_274;
    (* src = "src/main.spade:106,18" *)
    logic _e_273;
    logic[1:0] _e_266;
    logic[2:0] _e_260;
    logic[3:0] _e_254;
    logic[7:0] _e_252;
    assign _e_176 = cfg_value_n117;
    
    assign c_n118 = {cfg_clk_n116, _e_176};
    assign {_e_178_o} = c_n118_o;
    assign _e_182 = {inputs_n115, _e_184};
    (* src = "src/main.spade:61,22" *)
    e_proj_main_layer _e_189_i(clk_n114, _e_182, c_n118, c_n118_o, _e_189, _e_189_o);
    assign cells_n122 = _e_189[5:2];
    assign c_n123 = _e_189[1:0];
    assign _e_189_o[1:0] = c_n123_o;
    assign _e_192 = cells_n122;
    assign _e_194 = feedback1_n120;
    (* src = "src/main.spade:69,26" *)
    e_proj_routing_feedback_tile _e_199_i(clk_n114, _e_192, _e_194, c_n123, c_n123_o, _e_199, _e_199_o);
    assign _e_184 = _e_199[5:2];
    assign c_n124 = _e_199[1:0];
    assign _e_199_o[1:0] = c_n124_o;
    assign _e_203 = cells_n122;
    assign _e_205 = feedback1_n120;
    assign _e_202 = {_e_203, _e_205};
    (* src = "src/main.spade:70,22" *)
    e_proj_main_layer _e_210_i(clk_n114, _e_202, c_n124, c_n124_o, _e_210, _e_210_o);
    assign cells_n125 = _e_210[5:2];
    assign c_n126 = _e_210[1:0];
    assign _e_210_o[1:0] = c_n126_o;
    assign _e_213 = cells_n125;
    assign _e_215 = feedback2_n121;
    (* src = "src/main.spade:78,26" *)
    e_proj_routing_feedback_tile _e_220_i(clk_n114, _e_213, _e_215, c_n126, c_n126_o, _e_220, _e_220_o);
    assign feedback1_n120 = _e_220[5:2];
    assign c_n127 = _e_220[1:0];
    assign _e_220_o[1:0] = c_n127_o;
    assign _e_224 = cells_n125;
    assign _e_226 = feedback2_n121;
    assign _e_223 = {_e_224, _e_226};
    (* src = "src/main.spade:79,22" *)
    e_proj_main_layer _e_231_i(clk_n114, _e_223, c_n127, c_n127_o, _e_231, _e_231_o);
    assign cells_n128 = _e_231[5:2];
    assign c_n129 = _e_231[1:0];
    assign _e_231_o[1:0] = c_n129_o;
    assign _e_234 = cells_n128;
    assign _e_237 = 0;
    assign _e_238 = 0;
    assign _e_239 = 0;
    assign _e_240 = 0;
    assign _e_236 = {_e_240, _e_239, _e_238, _e_237};
    (* src = "src/main.spade:87,26" *)
    e_proj_routing_feedback_tile _e_244_i(clk_n114, _e_234, _e_236, c_n129, c_n129_o, _e_244, _e_244_o);
    assign feedback2_n121 = _e_244[5:2];
    assign c_n130 = _e_244[1:0];
    assign _e_244_o[1:0] = c_n130_o;
    assign c_n130_o[1:0] = _e_245_o;
    assign _e_247 = 0;
    assign _e_245_o = _e_247;
    assign _e_248 = 2;
    assign two_n131 = _e_248;
    assign _e_250 = 3;
    assign three_n132 = _e_250;
    assign _e_253 = 0;
    assign _e_257 = cells_n128;
    assign _e_259 = 0;
    assign _e_256 = _e_257[_e_259];
    (* src = "src/main.spade:103,18" *)
    e_proj_main_b2i _e_255_i(_e_256, _e_255);
    assign _e_263 = cells_n128;
    assign _e_265 = 1;
    assign _e_262 = _e_263[_e_265];
    (* src = "src/main.spade:104,18" *)
    e_proj_main_b2i _e_261_i(_e_262, _e_261);
    assign _e_269 = cells_n128;
    assign _e_271 = two_n131[1:0];
    assign _e_268 = _e_269[_e_271];
    (* src = "src/main.spade:105,18" *)
    e_proj_main_b2i _e_267_i(_e_268, _e_267);
    assign _e_275 = cells_n128;
    assign _e_277 = three_n132[1:0];
    assign _e_274 = _e_275[_e_277];
    (* src = "src/main.spade:106,18" *)
    e_proj_main_b2i _e_273_i(_e_274, _e_273);
    assign _e_266 = {_e_267, _e_273};
    assign _e_260 = {_e_261, _e_266};
    assign _e_254 = {_e_255, _e_260};
    assign _e_252 = {_e_253, _e_254};
    assign output__ = _e_252;
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
    logic x_n97;
    assign x_n97 = x_i;
    logic _e_117;
    (* src = "src/main.spade:10,11" *)
    logic _e_116;
    logic _e_119;
    (* src = "src/main.spade:10,5" *)
    logic _e_113;
    assign _e_117 = 0;
    assign _e_116 = ~_e_117;
    assign _e_119 = 0;
    assign _e_113 = x_n97 ? _e_116 : _e_119;
    assign output__ = _e_113;
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
    logic clk_n98;
    assign clk_n98 = clk_i;
    logic[7:0] input_layer_n99;
    assign input_layer_n99 = input_layer_i;
    logic[1:0] c_n100;
    assign c_n100 = c_i;
    logic[1:0] c_n100_o;
    assign c_o = c_n100_o;
    (* src = "src/main.spade:26,18" *)
    logic[2:0] _e_126;
    logic[1:0] _e_126_o;
    logic _e_135;
    logic[1:0] c_n102;
    logic[1:0] c_n102_o;
    (* src = "src/main.spade:27,18" *)
    logic[2:0] _e_132;
    logic[1:0] _e_132_o;
    logic _e_137;
    logic[1:0] c_n104;
    logic[1:0] c_n104_o;
    (* src = "src/main.spade:29,5" *)
    logic[2:0] _e_133;
    logic[1:0] _e_133_o;
    (* src = "src/main.spade:26,18" *)
    e_proj_routing_layer_sel_mux _e_126_i(input_layer_n99, c_n100, c_n100_o, _e_126, _e_126_o);
    assign _e_135 = _e_126[2];
    assign c_n102 = _e_126[1:0];
    assign _e_126_o[1:0] = c_n102_o;
    (* src = "src/main.spade:27,18" *)
    e_proj_routing_layer_sel_mux _e_132_i(input_layer_n99, c_n102, c_n102_o, _e_132, _e_132_o);
    assign _e_137 = _e_132[2];
    assign c_n104 = _e_132[1:0];
    assign _e_132_o[1:0] = c_n104_o;
    (* src = "src/main.spade:29,5" *)
    e_proj_cell_cell _e_133_i(clk_n98, _e_135, _e_137, c_n104, c_n104_o, _e_133, _e_133_o);
    assign output__ = _e_133;
    assign _e_133_o = input__;
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
    logic clk_n145;
    assign clk_n145 = clk_i;
    logic from_layer_n146;
    assign from_layer_n146 = from_layer_i;
    logic from_previous_n147;
    assign from_previous_n147 = from_previous_i;
    logic[1:0] c_n148;
    assign c_n148 = c_i;
    logic[1:0] c_n148_o;
    assign c_o = c_n148_o;
    (* src = "src/routing.spade:41,29" *)
    logic[2:0] _e_387;
    logic[1:0] _e_387_o;
    logic _e_389;
    logic[1:0] c_n150;
    logic[1:0] c_n150_o;
    (* src = "src/routing.spade:43,18" *)
    logic _e_397;
    (* src = "src/routing.spade:49,6" *)
    logic[2:0] _e_396;
    logic[1:0] _e_396_o;
    (* src = "src/routing.spade:41,29" *)
    e_proj_config_chain_cfg_bit _e_387_i(c_n148, c_n148_o, _e_387, _e_387_o);
    assign _e_389 = _e_387[2];
    assign c_n150 = _e_387[1:0];
    assign _e_387_o[1:0] = c_n150_o;
    assign _e_397 = _e_389 ? from_previous_n147 : from_layer_n146;
    assign _e_396 = {_e_397, c_n150};
    assign {c_n150_o} = _e_396_o;
    assign output__ = _e_396;
    assign _e_396_o = input__;
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
    logic clk_n105;
    assign clk_n105 = clk_i;
    logic[7:0] input_layer_n106;
    assign input_layer_n106 = input_layer_i;
    logic[1:0] c_n107;
    assign c_n107 = c_i;
    logic[1:0] c_n107_o;
    assign c_o = c_n107_o;
    (* src = "src/main.spade:40,19" *)
    logic[2:0] _e_147;
    logic[1:0] _e_147_o;
    logic _e_165;
    logic[1:0] c_n109;
    logic[1:0] c_n109_o;
    (* src = "src/main.spade:41,19" *)
    logic[2:0] _e_154;
    logic[1:0] _e_154_o;
    logic _e_167;
    logic[1:0] c_n111;
    logic[1:0] c_n111_o;
    (* src = "src/main.spade:42,19" *)
    logic[2:0] _e_161;
    logic[1:0] _e_161_o;
    logic _e_169;
    logic[1:0] c_n113;
    logic[1:0] c_n113_o;
    logic _e_171;
    (* src = "src/main.spade:45,7" *)
    logic[3:0] _e_163;
    (* src = "src/main.spade:45,6" *)
    logic[5:0] _e_162;
    logic[1:0] _e_162_o;
    (* src = "src/main.spade:40,19" *)
    e_proj_main_cell_with_routing _e_147_i(clk_n105, input_layer_n106, c_n107, c_n107_o, _e_147, _e_147_o);
    assign _e_165 = _e_147[2];
    assign c_n109 = _e_147[1:0];
    assign _e_147_o[1:0] = c_n109_o;
    (* src = "src/main.spade:41,19" *)
    e_proj_main_cell_with_routing _e_154_i(clk_n105, input_layer_n106, c_n109, c_n109_o, _e_154, _e_154_o);
    assign _e_167 = _e_154[2];
    assign c_n111 = _e_154[1:0];
    assign _e_154_o[1:0] = c_n111_o;
    (* src = "src/main.spade:42,19" *)
    e_proj_main_cell_with_routing _e_161_i(clk_n105, input_layer_n106, c_n111, c_n111_o, _e_161, _e_161_o);
    assign _e_169 = _e_161[2];
    assign c_n113 = _e_161[1:0];
    assign _e_161_o[1:0] = c_n113_o;
    assign _e_171 = 1;
    assign _e_163 = {_e_171, _e_169, _e_167, _e_165};
    assign _e_162 = {_e_163, c_n113};
    assign {c_n113_o} = _e_162_o;
    assign output__ = _e_162;
    assign _e_162_o = input__;
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
    logic clk_n76;
    assign clk_n76 = clk_i;
    logic x_n77;
    assign x_n77 = x_i;
    logic y_n78;
    assign y_n78 = y_i;
    logic[1:0] c_n79;
    assign c_n79 = c_i;
    logic[1:0] c_n79_o;
    assign c_o = c_n79_o;
    (* src = "src/cell.spade:12,21" *)
    logic[2:0] _e_50;
    logic[1:0] _e_50_o;
    logic on00_n80;
    logic[1:0] c_n81;
    logic[1:0] c_n81_o;
    (* src = "src/cell.spade:13,21" *)
    logic[2:0] _e_55;
    logic[1:0] _e_55_o;
    logic on01_n82;
    logic[1:0] c_n83;
    logic[1:0] c_n83_o;
    (* src = "src/cell.spade:14,21" *)
    logic[2:0] _e_60;
    logic[1:0] _e_60_o;
    logic on10_n84;
    logic[1:0] c_n85;
    logic[1:0] c_n85_o;
    (* src = "src/cell.spade:15,21" *)
    logic[2:0] _e_65;
    logic[1:0] _e_65_o;
    logic on11_n86;
    logic[1:0] c_n87;
    logic[1:0] c_n87_o;
    (* src = "src/cell.spade:17,27" *)
    logic[1:0] _e_68;
    logic _e_71;
    logic _e_72;
    logic _e_473;
    logic _e_474;
    logic _e_475;
    logic _e_75;
    logic _e_76;
    logic _e_477;
    logic _e_479;
    logic _e_79;
    logic _e_80;
    logic _e_482;
    logic _e_483;
    logic _e_83;
    logic _e_84;
    logic _e_487;
    (* src = "src/cell.spade:17,20" *)
    logic _e_89;
    (* src = "src/cell.spade:25,6" *)
    logic[2:0] _e_88;
    logic[1:0] _e_88_o;
    (* src = "src/cell.spade:12,21" *)
    e_proj_config_chain_cfg_bit _e_50_i(c_n79, c_n79_o, _e_50, _e_50_o);
    assign on00_n80 = _e_50[2];
    assign c_n81 = _e_50[1:0];
    assign _e_50_o[1:0] = c_n81_o;
    (* src = "src/cell.spade:13,21" *)
    e_proj_config_chain_cfg_bit _e_55_i(c_n81, c_n81_o, _e_55, _e_55_o);
    assign on01_n82 = _e_55[2];
    assign c_n83 = _e_55[1:0];
    assign _e_55_o[1:0] = c_n83_o;
    (* src = "src/cell.spade:14,21" *)
    e_proj_config_chain_cfg_bit _e_60_i(c_n83, c_n83_o, _e_60, _e_60_o);
    assign on10_n84 = _e_60[2];
    assign c_n85 = _e_60[1:0];
    assign _e_60_o[1:0] = c_n85_o;
    (* src = "src/cell.spade:15,21" *)
    e_proj_config_chain_cfg_bit _e_65_i(c_n85, c_n85_o, _e_65, _e_65_o);
    assign on11_n86 = _e_65[2];
    assign c_n87 = _e_65[1:0];
    assign _e_65_o[1:0] = c_n87_o;
    assign _e_68 = {x_n77, y_n78};
    assign _e_71 = _e_68[1];
    assign _e_72 = _e_68[0];
    assign _e_473 = !_e_71;
    assign _e_474 = !_e_72;
    assign _e_475 = _e_473 && _e_474;
    assign _e_75 = _e_68[1];
    assign _e_76 = _e_68[0];
    assign _e_477 = !_e_75;
    assign _e_479 = _e_477 && _e_76;
    assign _e_79 = _e_68[1];
    assign _e_80 = _e_68[0];
    assign _e_482 = !_e_80;
    assign _e_483 = _e_79 && _e_482;
    assign _e_83 = _e_68[1];
    assign _e_84 = _e_68[0];
    assign _e_487 = _e_83 && _e_84;
    always_comb begin
        priority casez ({_e_475, _e_479, _e_483, _e_487})
            4'b1???: _e_89 = on00_n80;
            4'b01??: _e_89 = on01_n82;
            4'b001?: _e_89 = on10_n84;
            4'b0001: _e_89 = on11_n86;
            4'b?: _e_89 = 'x;
        endcase
    end
    assign _e_88 = {_e_89, c_n87};
    assign {c_n87_o} = _e_88_o;
    assign output__ = _e_88;
    assign _e_88_o = input__;
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
    logic[7:0] layer_n133;
    assign layer_n133 = layer_i;
    logic[1:0] c_n134;
    assign c_n134 = c_i;
    logic[1:0] c_n134_o;
    assign c_o = c_n134_o;
    (* src = "src/routing.spade:13,19" *)
    logic[2:0] _e_284;
    logic[1:0] _e_284_o;
    logic _e_303;
    logic[1:0] c_n136;
    logic[1:0] c_n136_o;
    (* src = "src/routing.spade:14,19" *)
    logic[2:0] _e_289;
    logic[1:0] _e_289_o;
    logic _e_305;
    logic[1:0] c_n138;
    logic[1:0] c_n138_o;
    (* src = "src/routing.spade:15,19" *)
    logic[2:0] _e_294;
    logic[1:0] _e_294_o;
    logic _e_307;
    logic[1:0] c_n140;
    logic[1:0] c_n140_o;
    logic[3:0] _e_295;
    (* src = "src/routing.spade:18,9" *)
    logic[3:0] one_n141;
    logic[3:0] _e_297;
    (* src = "src/routing.spade:19,9" *)
    logic[3:0] two_n142;
    logic[3:0] _e_299;
    (* src = "src/routing.spade:20,9" *)
    logic[3:0] three_n143;
    (* src = "src/routing.spade:21,25" *)
    logic[2:0] _e_302;
    logic _e_309;
    logic _e_310;
    logic _e_311;
    logic _e_489;
    logic _e_490;
    logic _e_491;
    logic _e_492;
    logic _e_493;
    (* src = "src/routing.spade:22,34" *)
    logic[3:0] _e_314;
    logic[1:0] _e_316;
    (* src = "src/routing.spade:22,34" *)
    logic _e_313;
    logic _e_317;
    logic _e_318;
    logic _e_319;
    logic _e_495;
    logic _e_496;
    logic _e_498;
    logic _e_499;
    (* src = "src/routing.spade:23,33" *)
    logic[3:0] _e_322;
    logic[1:0] _e_324;
    (* src = "src/routing.spade:23,33" *)
    logic _e_321;
    logic _e_325;
    logic _e_326;
    logic _e_327;
    logic _e_501;
    logic _e_503;
    logic _e_504;
    logic _e_505;
    (* src = "src/routing.spade:24,33" *)
    logic[3:0] _e_330;
    (* src = "src/routing.spade:24,48" *)
    logic[1:0] _e_332;
    (* src = "src/routing.spade:24,33" *)
    logic _e_329;
    logic _e_334;
    logic _e_335;
    logic _e_336;
    logic _e_507;
    logic _e_510;
    logic _e_511;
    (* src = "src/routing.spade:25,32" *)
    logic[3:0] _e_339;
    (* src = "src/routing.spade:25,47" *)
    logic[1:0] _e_341;
    (* src = "src/routing.spade:25,32" *)
    logic _e_338;
    logic _e_343;
    logic _e_344;
    logic _e_345;
    logic _e_514;
    logic _e_515;
    logic _e_516;
    logic _e_517;
    (* src = "src/routing.spade:26,33" *)
    logic[3:0] _e_348;
    logic[1:0] _e_350;
    (* src = "src/routing.spade:26,33" *)
    logic _e_347;
    logic _e_351;
    logic _e_352;
    logic _e_353;
    logic _e_520;
    logic _e_522;
    logic _e_523;
    (* src = "src/routing.spade:27,32" *)
    logic[3:0] _e_356;
    logic[1:0] _e_358;
    (* src = "src/routing.spade:27,32" *)
    logic _e_355;
    logic _e_359;
    logic _e_360;
    logic _e_361;
    logic _e_527;
    logic _e_528;
    logic _e_529;
    (* src = "src/routing.spade:28,32" *)
    logic[3:0] _e_364;
    (* src = "src/routing.spade:28,47" *)
    logic[1:0] _e_366;
    (* src = "src/routing.spade:28,32" *)
    logic _e_363;
    logic _e_368;
    logic _e_369;
    logic _e_370;
    logic _e_534;
    logic _e_535;
    (* src = "src/routing.spade:29,31" *)
    logic[3:0] _e_373;
    (* src = "src/routing.spade:29,46" *)
    logic[1:0] _e_375;
    (* src = "src/routing.spade:29,31" *)
    logic _e_372;
    (* src = "src/routing.spade:21,18" *)
    logic _e_379;
    (* src = "src/routing.spade:32,6" *)
    logic[2:0] _e_378;
    logic[1:0] _e_378_o;
    (* src = "src/routing.spade:13,19" *)
    e_proj_config_chain_cfg_bit _e_284_i(c_n134, c_n134_o, _e_284, _e_284_o);
    assign _e_303 = _e_284[2];
    assign c_n136 = _e_284[1:0];
    assign _e_284_o[1:0] = c_n136_o;
    (* src = "src/routing.spade:14,19" *)
    e_proj_config_chain_cfg_bit _e_289_i(c_n136, c_n136_o, _e_289, _e_289_o);
    assign _e_305 = _e_289[2];
    assign c_n138 = _e_289[1:0];
    assign _e_289_o[1:0] = c_n138_o;
    (* src = "src/routing.spade:15,19" *)
    e_proj_config_chain_cfg_bit _e_294_i(c_n138, c_n138_o, _e_294, _e_294_o);
    assign _e_307 = _e_294[2];
    assign c_n140 = _e_294[1:0];
    assign _e_294_o[1:0] = c_n140_o;
    assign _e_295 = 1;
    assign one_n141 = _e_295;
    assign _e_297 = 2;
    assign two_n142 = _e_297;
    assign _e_299 = 3;
    assign three_n143 = _e_299;
    assign _e_302 = {_e_303, _e_305, _e_307};
    assign _e_309 = _e_302[2];
    assign _e_310 = _e_302[1];
    assign _e_311 = _e_302[0];
    assign _e_489 = !_e_309;
    assign _e_490 = !_e_310;
    assign _e_491 = !_e_311;
    assign _e_492 = _e_489 && _e_490;
    assign _e_493 = _e_492 && _e_491;
    assign _e_314 = layer_n133[7:4];
    assign _e_316 = 0;
    assign _e_313 = _e_314[_e_316];
    assign _e_317 = _e_302[2];
    assign _e_318 = _e_302[1];
    assign _e_319 = _e_302[0];
    assign _e_495 = !_e_317;
    assign _e_496 = !_e_318;
    assign _e_498 = _e_495 && _e_496;
    assign _e_499 = _e_498 && _e_319;
    assign _e_322 = layer_n133[7:4];
    assign _e_324 = 1;
    assign _e_321 = _e_322[_e_324];
    assign _e_325 = _e_302[2];
    assign _e_326 = _e_302[1];
    assign _e_327 = _e_302[0];
    assign _e_501 = !_e_325;
    assign _e_503 = !_e_327;
    assign _e_504 = _e_501 && _e_326;
    assign _e_505 = _e_504 && _e_503;
    assign _e_330 = layer_n133[7:4];
    assign _e_332 = two_n142[1:0];
    assign _e_329 = _e_330[_e_332];
    assign _e_334 = _e_302[2];
    assign _e_335 = _e_302[1];
    assign _e_336 = _e_302[0];
    assign _e_507 = !_e_334;
    assign _e_510 = _e_507 && _e_335;
    assign _e_511 = _e_510 && _e_336;
    assign _e_339 = layer_n133[7:4];
    assign _e_341 = three_n143[1:0];
    assign _e_338 = _e_339[_e_341];
    assign _e_343 = _e_302[2];
    assign _e_344 = _e_302[1];
    assign _e_345 = _e_302[0];
    assign _e_514 = !_e_344;
    assign _e_515 = !_e_345;
    assign _e_516 = _e_343 && _e_514;
    assign _e_517 = _e_516 && _e_515;
    assign _e_348 = layer_n133[3:0];
    assign _e_350 = 0;
    assign _e_347 = _e_348[_e_350];
    assign _e_351 = _e_302[2];
    assign _e_352 = _e_302[1];
    assign _e_353 = _e_302[0];
    assign _e_520 = !_e_352;
    assign _e_522 = _e_351 && _e_520;
    assign _e_523 = _e_522 && _e_353;
    assign _e_356 = layer_n133[3:0];
    assign _e_358 = 1;
    assign _e_355 = _e_356[_e_358];
    assign _e_359 = _e_302[2];
    assign _e_360 = _e_302[1];
    assign _e_361 = _e_302[0];
    assign _e_527 = !_e_361;
    assign _e_528 = _e_359 && _e_360;
    assign _e_529 = _e_528 && _e_527;
    assign _e_364 = layer_n133[3:0];
    assign _e_366 = two_n142[1:0];
    assign _e_363 = _e_364[_e_366];
    assign _e_368 = _e_302[2];
    assign _e_369 = _e_302[1];
    assign _e_370 = _e_302[0];
    assign _e_534 = _e_368 && _e_369;
    assign _e_535 = _e_534 && _e_370;
    assign _e_373 = layer_n133[3:0];
    assign _e_375 = three_n143[1:0];
    assign _e_372 = _e_373[_e_375];
    always_comb begin
        priority casez ({_e_493, _e_499, _e_505, _e_511, _e_517, _e_523, _e_529, _e_535})
            8'b1???????: _e_379 = _e_313;
            8'b01??????: _e_379 = _e_321;
            8'b001?????: _e_379 = _e_329;
            8'b0001????: _e_379 = _e_338;
            8'b00001???: _e_379 = _e_347;
            8'b000001??: _e_379 = _e_355;
            8'b0000001?: _e_379 = _e_363;
            8'b00000001: _e_379 = _e_372;
            8'b?: _e_379 = 'x;
        endcase
    end
    assign _e_378 = {_e_379, c_n140};
    assign {c_n140_o} = _e_378_o;
    assign output__ = _e_378;
    assign _e_378_o = input__;
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
    logic[1:0] chain_n73;
    assign chain_n73 = chain_i;
    logic[1:0] chain_n73_o;
    assign chain_o = chain_n73_o;
    (* src = "src/config_chain.spade:11,9" *)
    logic _e_28;
    (* src = "src/config_chain.spade:11,29" *)
    logic _e_30;
    (* src = "src/config_chain.spade:11,20" *)
    reg value_n74;
    (* src = "src/config_chain.spade:14,14" *)
    logic _e_34;
    (* src = "src/config_chain.spade:15,16" *)
    logic _e_36;
    (* src = "src/config_chain.spade:16,16" *)
    logic[1:0] _e_38_o;
    (* src = "src/config_chain.spade:13,21" *)
    logic[1:0] new_chain_n75;
    logic[1:0] new_chain_n75_o;
    (* src = "src/config_chain.spade:18,6" *)
    logic _e_42;
    (* src = "src/config_chain.spade:18,6" *)
    logic[2:0] _e_41;
    logic[1:0] _e_41_o;
    assign _e_28 = chain_n73[1];
    assign _e_30 = chain_n73[0];
    always @(posedge _e_28) begin
        value_n74 <= _e_30;
    end
    assign _e_34 = chain_n73[1];
    assign _e_36 = value_n74;
    assign chain_n73_o[1:0] = _e_38_o;
    assign new_chain_n75 = {_e_34, _e_36};
    assign {_e_38_o} = new_chain_n75_o;
    assign _e_42 = value_n74;
    assign _e_41 = {_e_42, new_chain_n75};
    assign {new_chain_n75_o} = _e_41_o;
    assign output__ = _e_41;
    assign _e_41_o = input__;
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
    logic clk_n89;
    assign clk_n89 = clk_i;
    logic x_n90;
    assign x_n90 = x_i;
    logic y_n91;
    assign y_n91 = y_i;
    logic cfg_clk_n92;
    assign cfg_clk_n92 = cfg_clk_i;
    logic cfg_value_n93;
    assign cfg_value_n93 = cfg_value_i;
    (* src = "src/cell.spade:40,16" *)
    logic _e_95;
    logic[1:0] _e_97_o;
    (* src = "src/cell.spade:38,13" *)
    logic[1:0] c_n94;
    logic[1:0] c_n94_o;
    (* src = "src/cell.spade:44,24" *)
    logic[2:0] _e_106;
    logic[1:0] _e_106_o;
    logic _e_110;
    logic[1:0] chain_n96;
    logic[1:0] chain_n96_o;
    (* src = "src/cell.spade:45,9" *)
    logic[1:0] _e_107_o;
    logic[1:0] _e_109;
    assign _e_95 = cfg_value_n93;
    
    assign c_n94 = {cfg_clk_n92, _e_95};
    assign {_e_97_o} = c_n94_o;
    (* src = "src/cell.spade:44,24" *)
    e_proj_cell_cell _e_106_i(clk_n89, x_n90, y_n91, c_n94, c_n94_o, _e_106, _e_106_o);
    assign _e_110 = _e_106[2];
    assign chain_n96 = _e_106[1:0];
    assign _e_106_o[1:0] = chain_n96_o;
    assign chain_n96_o[1:0] = _e_107_o;
    assign _e_109 = 1;
    assign _e_107_o = _e_109;
    assign output__ = _e_110;
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
    logic clk_n152;
    assign clk_n152 = clk_i;
    logic[3:0] from_layer_n153;
    assign from_layer_n153 = from_layer_i;
    logic[3:0] from_previous_n154;
    assign from_previous_n154 = from_previous_i;
    logic[1:0] c_n155;
    assign c_n155 = c_i;
    logic[1:0] c_n155_o;
    assign c_o = c_n155_o;
    (* src = "src/routing.spade:58,14" *)
    reg[3:0] from_layer_reg_n156;
    logic[3:0] _e_404;
    (* src = "src/routing.spade:61,9" *)
    logic[3:0] two_n157;
    logic[3:0] _e_406;
    (* src = "src/routing.spade:62,9" *)
    logic[3:0] three_n158;
    logic[1:0] _e_412;
    (* src = "src/routing.spade:63,42" *)
    logic _e_410;
    logic[1:0] _e_415;
    (* src = "src/routing.spade:63,61" *)
    logic _e_413;
    (* src = "src/routing.spade:63,19" *)
    logic[2:0] _e_419;
    logic[1:0] _e_419_o;
    logic _e_463;
    logic[1:0] c_n160;
    logic[1:0] c_n160_o;
    logic[1:0] _e_424;
    (* src = "src/routing.spade:64,42" *)
    logic _e_422;
    logic[1:0] _e_427;
    (* src = "src/routing.spade:64,61" *)
    logic _e_425;
    (* src = "src/routing.spade:64,19" *)
    logic[2:0] _e_431;
    logic[1:0] _e_431_o;
    logic _e_465;
    logic[1:0] c_n162;
    logic[1:0] c_n162_o;
    (* src = "src/routing.spade:65,57" *)
    logic[1:0] _e_436;
    (* src = "src/routing.spade:65,42" *)
    logic _e_434;
    (* src = "src/routing.spade:65,84" *)
    logic[1:0] _e_440;
    (* src = "src/routing.spade:65,70" *)
    logic _e_438;
    (* src = "src/routing.spade:65,19" *)
    logic[2:0] _e_445;
    logic[1:0] _e_445_o;
    logic _e_467;
    logic[1:0] c_n164;
    logic[1:0] c_n164_o;
    (* src = "src/routing.spade:66,57" *)
    logic[1:0] _e_450;
    (* src = "src/routing.spade:66,42" *)
    logic _e_448;
    (* src = "src/routing.spade:66,86" *)
    logic[1:0] _e_454;
    (* src = "src/routing.spade:66,72" *)
    logic _e_452;
    (* src = "src/routing.spade:66,19" *)
    logic[2:0] _e_459;
    logic[1:0] _e_459_o;
    logic _e_469;
    logic[1:0] c_n166;
    logic[1:0] c_n166_o;
    (* src = "src/routing.spade:68,7" *)
    logic[3:0] _e_461;
    (* src = "src/routing.spade:68,6" *)
    logic[5:0] _e_460;
    logic[1:0] _e_460_o;
    always @(posedge clk_n152) begin
        from_layer_reg_n156 <= from_layer_n153;
    end
    assign _e_404 = 2;
    assign two_n157 = _e_404;
    assign _e_406 = 3;
    assign three_n158 = _e_406;
    assign _e_412 = 0;
    assign _e_410 = from_layer_reg_n156[_e_412];
    assign _e_415 = 0;
    assign _e_413 = from_previous_n154[_e_415];
    (* src = "src/routing.spade:63,19" *)
    e_proj_routing_feedback_mux _e_419_i(clk_n152, _e_410, _e_413, c_n155, c_n155_o, _e_419, _e_419_o);
    assign _e_463 = _e_419[2];
    assign c_n160 = _e_419[1:0];
    assign _e_419_o[1:0] = c_n160_o;
    assign _e_424 = 1;
    assign _e_422 = from_layer_reg_n156[_e_424];
    assign _e_427 = 1;
    assign _e_425 = from_previous_n154[_e_427];
    (* src = "src/routing.spade:64,19" *)
    e_proj_routing_feedback_mux _e_431_i(clk_n152, _e_422, _e_425, c_n160, c_n160_o, _e_431, _e_431_o);
    assign _e_465 = _e_431[2];
    assign c_n162 = _e_431[1:0];
    assign _e_431_o[1:0] = c_n162_o;
    assign _e_436 = two_n157[1:0];
    assign _e_434 = from_layer_reg_n156[_e_436];
    assign _e_440 = two_n157[1:0];
    assign _e_438 = from_previous_n154[_e_440];
    (* src = "src/routing.spade:65,19" *)
    e_proj_routing_feedback_mux _e_445_i(clk_n152, _e_434, _e_438, c_n162, c_n162_o, _e_445, _e_445_o);
    assign _e_467 = _e_445[2];
    assign c_n164 = _e_445[1:0];
    assign _e_445_o[1:0] = c_n164_o;
    assign _e_450 = three_n158[1:0];
    assign _e_448 = from_layer_reg_n156[_e_450];
    assign _e_454 = three_n158[1:0];
    assign _e_452 = from_previous_n154[_e_454];
    (* src = "src/routing.spade:66,19" *)
    e_proj_routing_feedback_mux _e_459_i(clk_n152, _e_448, _e_452, c_n164, c_n164_o, _e_459, _e_459_o);
    assign _e_469 = _e_459[2];
    assign c_n166 = _e_459[1:0];
    assign _e_459_o[1:0] = c_n166_o;
    assign _e_461 = {_e_469, _e_467, _e_465, _e_463};
    assign _e_460 = {_e_461, c_n166};
    assign {c_n166_o} = _e_460_o;
    assign output__ = _e_460;
    assign _e_460_o = input__;
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
    logic clk_n69;
    assign clk_n69 = clk_i;
    logic sync1_n70;
    assign sync1_n70 = sync1_i;
    (* src = "build/spade/stdlib/io.spade:9,14" *)
    reg sync2_n71;
    (* src = "build/spade/stdlib/io.spade:10,14" *)
    logic _e_14;
    (* src = "build/spade/stdlib/io.spade:10,5" *)
    logic _e_12;
    always @(posedge clk_n69) begin
        sync2_n71 <= sync1_n70;
    end
    assign _e_14 = !sync1_n70;
    assign _e_12 = sync2_n71 && _e_14;
    assign output__ = _e_12;
endmodule