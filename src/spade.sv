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
    logic clk_n106;
    assign clk_n106 = clk_i;
    logic[7:0] input_layer_n107;
    assign input_layer_n107 = input_layer_i;
    logic[1:0] c_n108;
    assign c_n108 = c_i;
    logic[1:0] c_n108_o;
    assign c_o = c_n108_o;
    (* src = "src/main.spade:39,19" *)
    logic[2:0] _e_158;
    logic[1:0] _e_158_o;
    logic _e_183;
    logic[1:0] c_n110;
    logic[1:0] c_n110_o;
    (* src = "src/main.spade:40,19" *)
    logic[2:0] _e_165;
    logic[1:0] _e_165_o;
    logic _e_185;
    logic[1:0] c_n112;
    logic[1:0] c_n112_o;
    (* src = "src/main.spade:41,19" *)
    logic[2:0] _e_172;
    logic[1:0] _e_172_o;
    logic _e_187;
    logic[1:0] c_n114;
    logic[1:0] c_n114_o;
    (* src = "src/main.spade:42,19" *)
    logic[2:0] _e_179;
    logic[1:0] _e_179_o;
    logic _e_189;
    logic[1:0] c_n116;
    logic[1:0] c_n116_o;
    (* src = "src/main.spade:44,7" *)
    logic[3:0] _e_181;
    (* src = "src/main.spade:44,6" *)
    logic[5:0] _e_180;
    logic[1:0] _e_180_o;
    (* src = "src/main.spade:39,19" *)
    e_proj_main_cell_with_routing _e_158_i(clk_n106, input_layer_n107, c_n108, c_n108_o, _e_158, _e_158_o);
    assign _e_183 = _e_158[2];
    assign c_n110 = _e_158[1:0];
    assign _e_158_o[1:0] = c_n110_o;
    (* src = "src/main.spade:40,19" *)
    e_proj_main_cell_with_routing _e_165_i(clk_n106, input_layer_n107, c_n110, c_n110_o, _e_165, _e_165_o);
    assign _e_185 = _e_165[2];
    assign c_n112 = _e_165[1:0];
    assign _e_165_o[1:0] = c_n112_o;
    (* src = "src/main.spade:41,19" *)
    e_proj_main_cell_with_routing _e_172_i(clk_n106, input_layer_n107, c_n112, c_n112_o, _e_172, _e_172_o);
    assign _e_187 = _e_172[2];
    assign c_n114 = _e_172[1:0];
    assign _e_172_o[1:0] = c_n114_o;
    (* src = "src/main.spade:42,19" *)
    e_proj_main_cell_with_routing _e_179_i(clk_n106, input_layer_n107, c_n114, c_n114_o, _e_179, _e_179_o);
    assign _e_189 = _e_179[2];
    assign c_n116 = _e_179[1:0];
    assign _e_179_o[1:0] = c_n116_o;
    assign _e_181 = {_e_189, _e_187, _e_185, _e_183};
    assign _e_180 = {_e_181, c_n116};
    assign {c_n116_o} = _e_180_o;
    assign output__ = _e_180;
    assign _e_180_o = input__;
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
    logic clk_n117;
    assign clk_n117 = clk_i;
    logic[3:0] inputs_n118;
    assign inputs_n118 = inputs_i;
    logic cfg_clk_n119;
    assign cfg_clk_n119 = cfg_clk_i;
    logic cfg_value_n120;
    assign cfg_value_n120 = cfg_value_i;
    (* src = "src/main.spade:55,16" *)
    logic _e_195;
    logic[1:0] _e_197_o;
    (* src = "src/main.spade:53,13" *)
    logic[1:0] c_n121;
    logic[1:0] c_n121_o;
    (* src = "src/main.spade:61,25" *)
    logic[3:0] _e_201;
    (* src = "src/main.spade:59,18" *)
    logic[7:0] layer1_n123;
    (* src = "src/main.spade:64,22" *)
    logic[5:0] _e_210;
    logic[1:0] _e_210_o;
    logic[3:0] l_out_n122;
    logic[1:0] c_n124;
    logic[1:0] c_n124_o;
    (* src = "src/main.spade:66,9" *)
    logic[1:0] _e_211_o;
    logic[1:0] _e_213;
    logic[2:0] _e_214;
    (* src = "src/main.spade:68,9" *)
    logic[2:0] two_n125;
    logic[2:0] _e_216;
    (* src = "src/main.spade:69,9" *)
    logic[2:0] three_n126;
    logic[3:0] _e_219;
    (* src = "src/main.spade:70,22" *)
    logic[3:0] _e_223;
    logic[1:0] _e_225;
    (* src = "src/main.spade:70,22" *)
    logic _e_222;
    (* src = "src/main.spade:70,17" *)
    logic _e_221;
    (* src = "src/main.spade:70,48" *)
    logic[3:0] _e_229;
    logic[1:0] _e_231;
    (* src = "src/main.spade:70,48" *)
    logic _e_228;
    (* src = "src/main.spade:70,43" *)
    logic _e_227;
    (* src = "src/main.spade:70,74" *)
    logic[3:0] _e_235;
    (* src = "src/main.spade:70,82" *)
    logic[1:0] _e_237;
    (* src = "src/main.spade:70,74" *)
    logic _e_234;
    (* src = "src/main.spade:70,69" *)
    logic _e_233;
    (* src = "src/main.spade:70,109" *)
    logic[3:0] _e_241;
    (* src = "src/main.spade:70,117" *)
    logic[1:0] _e_243;
    (* src = "src/main.spade:70,109" *)
    logic _e_240;
    (* src = "src/main.spade:70,104" *)
    logic _e_239;
    logic[1:0] _e_232;
    logic[2:0] _e_226;
    logic[3:0] _e_220;
    logic[7:0] _e_218;
    assign _e_195 = cfg_value_n120;
    
    assign c_n121 = {cfg_clk_n119, _e_195};
    assign {_e_197_o} = c_n121_o;
    assign _e_201 = l_out_n122;
    assign layer1_n123 = {inputs_n118, _e_201};
    (* src = "src/main.spade:64,22" *)
    e_proj_main_layer _e_210_i(clk_n117, layer1_n123, c_n121, c_n121_o, _e_210, _e_210_o);
    assign l_out_n122 = _e_210[5:2];
    assign c_n124 = _e_210[1:0];
    assign _e_210_o[1:0] = c_n124_o;
    assign c_n124_o[1:0] = _e_211_o;
    assign _e_213 = 0;
    assign _e_211_o = _e_213;
    assign _e_214 = 2;
    assign two_n125 = _e_214;
    assign _e_216 = 3;
    assign three_n126 = _e_216;
    assign _e_219 = 0;
    assign _e_223 = l_out_n122;
    assign _e_225 = 0;
    assign _e_222 = _e_223[_e_225];
    (* src = "src/main.spade:70,17" *)
    e_proj_main_b2i _e_221_i(_e_222, _e_221);
    assign _e_229 = l_out_n122;
    assign _e_231 = 1;
    assign _e_228 = _e_229[_e_231];
    (* src = "src/main.spade:70,43" *)
    e_proj_main_b2i _e_227_i(_e_228, _e_227);
    assign _e_235 = l_out_n122;
    assign _e_237 = two_n125[1:0];
    assign _e_234 = _e_235[_e_237];
    (* src = "src/main.spade:70,69" *)
    e_proj_main_b2i _e_233_i(_e_234, _e_233);
    assign _e_241 = l_out_n122;
    assign _e_243 = three_n126[1:0];
    assign _e_240 = _e_241[_e_243];
    (* src = "src/main.spade:70,104" *)
    e_proj_main_b2i _e_239_i(_e_240, _e_239);
    assign _e_232 = {_e_233, _e_239};
    assign _e_226 = {_e_227, _e_232};
    assign _e_220 = {_e_221, _e_226};
    assign _e_218 = {_e_219, _e_220};
    assign output__ = _e_218;
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
    logic clk_n90;
    assign clk_n90 = clk_i;
    logic x_n91;
    assign x_n91 = x_i;
    logic y_n92;
    assign y_n92 = y_i;
    logic cfg_clk_n93;
    assign cfg_clk_n93 = cfg_clk_i;
    logic cfg_value_n94;
    assign cfg_value_n94 = cfg_value_i;
    (* src = "src/cell.spade:45,16" *)
    logic _e_106;
    logic[1:0] _e_108_o;
    (* src = "src/cell.spade:43,13" *)
    logic[1:0] c_n95;
    logic[1:0] c_n95_o;
    (* src = "src/cell.spade:49,24" *)
    logic[2:0] _e_117;
    logic[1:0] _e_117_o;
    logic _e_121;
    logic[1:0] chain_n97;
    logic[1:0] chain_n97_o;
    (* src = "src/cell.spade:50,9" *)
    logic[1:0] _e_118_o;
    logic[1:0] _e_120;
    assign _e_106 = cfg_value_n94;
    
    assign c_n95 = {cfg_clk_n93, _e_106};
    assign {_e_108_o} = c_n95_o;
    (* src = "src/cell.spade:49,24" *)
    e_proj_cell_cell _e_117_i(clk_n90, x_n91, y_n92, c_n95, c_n95_o, _e_117, _e_117_o);
    assign _e_121 = _e_117[2];
    assign chain_n97 = _e_117[1:0];
    assign _e_117_o[1:0] = chain_n97_o;
    assign chain_n97_o[1:0] = _e_118_o;
    assign _e_120 = 1;
    assign _e_118_o = _e_120;
    assign output__ = _e_121;
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
    logic clk_n99;
    assign clk_n99 = clk_i;
    logic[7:0] input_layer_n100;
    assign input_layer_n100 = input_layer_i;
    logic[1:0] c_n101;
    assign c_n101 = c_i;
    logic[1:0] c_n101_o;
    assign c_o = c_n101_o;
    (* src = "src/main.spade:25,18" *)
    logic[2:0] _e_137;
    logic[1:0] _e_137_o;
    logic _e_146;
    logic[1:0] c_n103;
    logic[1:0] c_n103_o;
    (* src = "src/main.spade:26,18" *)
    logic[2:0] _e_143;
    logic[1:0] _e_143_o;
    logic _e_148;
    logic[1:0] c_n105;
    logic[1:0] c_n105_o;
    (* src = "src/main.spade:28,5" *)
    logic[2:0] _e_144;
    logic[1:0] _e_144_o;
    (* src = "src/main.spade:25,18" *)
    e_proj_routing_layer_sel_mux _e_137_i(input_layer_n100, c_n101, c_n101_o, _e_137, _e_137_o);
    assign _e_146 = _e_137[2];
    assign c_n103 = _e_137[1:0];
    assign _e_137_o[1:0] = c_n103_o;
    (* src = "src/main.spade:26,18" *)
    e_proj_routing_layer_sel_mux _e_143_i(input_layer_n100, c_n103, c_n103_o, _e_143, _e_143_o);
    assign _e_148 = _e_143[2];
    assign c_n105 = _e_143[1:0];
    assign _e_143_o[1:0] = c_n105_o;
    (* src = "src/main.spade:28,5" *)
    e_proj_cell_cell _e_144_i(clk_n99, _e_146, _e_148, c_n105, c_n105_o, _e_144, _e_144_o);
    assign output__ = _e_144;
    assign _e_144_o = input__;
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
    logic[7:0] layer_n127;
    assign layer_n127 = layer_i;
    logic[1:0] c_n128;
    assign c_n128 = c_i;
    logic[1:0] c_n128_o;
    assign c_o = c_n128_o;
    (* src = "src/routing.spade:13,19" *)
    logic[2:0] _e_250;
    logic[1:0] _e_250_o;
    logic _e_269;
    logic[1:0] c_n130;
    logic[1:0] c_n130_o;
    (* src = "src/routing.spade:14,19" *)
    logic[2:0] _e_255;
    logic[1:0] _e_255_o;
    logic _e_271;
    logic[1:0] c_n132;
    logic[1:0] c_n132_o;
    (* src = "src/routing.spade:15,19" *)
    logic[2:0] _e_260;
    logic[1:0] _e_260_o;
    logic _e_273;
    logic[1:0] c_n134;
    logic[1:0] c_n134_o;
    logic[3:0] _e_261;
    (* src = "src/routing.spade:18,9" *)
    logic[3:0] one_n135;
    logic[3:0] _e_263;
    (* src = "src/routing.spade:19,9" *)
    logic[3:0] two_n136;
    logic[3:0] _e_265;
    (* src = "src/routing.spade:20,9" *)
    logic[3:0] three_n137;
    (* src = "src/routing.spade:21,25" *)
    logic[2:0] _e_268;
    logic _e_275;
    logic _e_276;
    logic _e_277;
    logic _e_349;
    logic _e_350;
    logic _e_351;
    logic _e_352;
    logic _e_353;
    (* src = "src/routing.spade:22,34" *)
    logic[3:0] _e_280;
    logic[1:0] _e_282;
    (* src = "src/routing.spade:22,34" *)
    logic _e_279;
    logic _e_283;
    logic _e_284;
    logic _e_285;
    logic _e_355;
    logic _e_356;
    logic _e_358;
    logic _e_359;
    (* src = "src/routing.spade:23,33" *)
    logic[3:0] _e_288;
    logic[1:0] _e_290;
    (* src = "src/routing.spade:23,33" *)
    logic _e_287;
    logic _e_291;
    logic _e_292;
    logic _e_293;
    logic _e_361;
    logic _e_363;
    logic _e_364;
    logic _e_365;
    (* src = "src/routing.spade:24,33" *)
    logic[3:0] _e_296;
    (* src = "src/routing.spade:24,48" *)
    logic[1:0] _e_298;
    (* src = "src/routing.spade:24,33" *)
    logic _e_295;
    logic _e_300;
    logic _e_301;
    logic _e_302;
    logic _e_367;
    logic _e_370;
    logic _e_371;
    (* src = "src/routing.spade:25,32" *)
    logic[3:0] _e_305;
    (* src = "src/routing.spade:25,47" *)
    logic[1:0] _e_307;
    (* src = "src/routing.spade:25,32" *)
    logic _e_304;
    logic _e_309;
    logic _e_310;
    logic _e_311;
    logic _e_374;
    logic _e_375;
    logic _e_376;
    logic _e_377;
    (* src = "src/routing.spade:26,33" *)
    logic[3:0] _e_314;
    logic[1:0] _e_316;
    (* src = "src/routing.spade:26,33" *)
    logic _e_313;
    logic _e_317;
    logic _e_318;
    logic _e_319;
    logic _e_380;
    logic _e_382;
    logic _e_383;
    (* src = "src/routing.spade:27,32" *)
    logic[3:0] _e_322;
    logic[1:0] _e_324;
    (* src = "src/routing.spade:27,32" *)
    logic _e_321;
    logic _e_325;
    logic _e_326;
    logic _e_327;
    logic _e_387;
    logic _e_388;
    logic _e_389;
    (* src = "src/routing.spade:28,32" *)
    logic[3:0] _e_330;
    (* src = "src/routing.spade:28,53" *)
    logic[1:0] _e_332;
    (* src = "src/routing.spade:28,32" *)
    logic _e_329;
    logic _e_334;
    logic _e_335;
    logic _e_336;
    logic _e_394;
    logic _e_395;
    (* src = "src/routing.spade:29,31" *)
    logic[3:0] _e_339;
    (* src = "src/routing.spade:29,52" *)
    logic[1:0] _e_341;
    (* src = "src/routing.spade:29,31" *)
    logic _e_338;
    (* src = "src/routing.spade:21,18" *)
    logic _e_345;
    (* src = "src/routing.spade:32,6" *)
    logic[2:0] _e_344;
    logic[1:0] _e_344_o;
    (* src = "src/routing.spade:13,19" *)
    e_proj_config_chain_cfg_bit _e_250_i(c_n128, c_n128_o, _e_250, _e_250_o);
    assign _e_269 = _e_250[2];
    assign c_n130 = _e_250[1:0];
    assign _e_250_o[1:0] = c_n130_o;
    (* src = "src/routing.spade:14,19" *)
    e_proj_config_chain_cfg_bit _e_255_i(c_n130, c_n130_o, _e_255, _e_255_o);
    assign _e_271 = _e_255[2];
    assign c_n132 = _e_255[1:0];
    assign _e_255_o[1:0] = c_n132_o;
    (* src = "src/routing.spade:15,19" *)
    e_proj_config_chain_cfg_bit _e_260_i(c_n132, c_n132_o, _e_260, _e_260_o);
    assign _e_273 = _e_260[2];
    assign c_n134 = _e_260[1:0];
    assign _e_260_o[1:0] = c_n134_o;
    assign _e_261 = 1;
    assign one_n135 = _e_261;
    assign _e_263 = 2;
    assign two_n136 = _e_263;
    assign _e_265 = 3;
    assign three_n137 = _e_265;
    assign _e_268 = {_e_269, _e_271, _e_273};
    assign _e_275 = _e_268[2];
    assign _e_276 = _e_268[1];
    assign _e_277 = _e_268[0];
    assign _e_349 = !_e_275;
    assign _e_350 = !_e_276;
    assign _e_351 = !_e_277;
    assign _e_352 = _e_349 && _e_350;
    assign _e_353 = _e_352 && _e_351;
    assign _e_280 = layer_n127[7:4];
    assign _e_282 = 0;
    assign _e_279 = _e_280[_e_282];
    assign _e_283 = _e_268[2];
    assign _e_284 = _e_268[1];
    assign _e_285 = _e_268[0];
    assign _e_355 = !_e_283;
    assign _e_356 = !_e_284;
    assign _e_358 = _e_355 && _e_356;
    assign _e_359 = _e_358 && _e_285;
    assign _e_288 = layer_n127[7:4];
    assign _e_290 = 1;
    assign _e_287 = _e_288[_e_290];
    assign _e_291 = _e_268[2];
    assign _e_292 = _e_268[1];
    assign _e_293 = _e_268[0];
    assign _e_361 = !_e_291;
    assign _e_363 = !_e_293;
    assign _e_364 = _e_361 && _e_292;
    assign _e_365 = _e_364 && _e_363;
    assign _e_296 = layer_n127[7:4];
    assign _e_298 = two_n136[1:0];
    assign _e_295 = _e_296[_e_298];
    assign _e_300 = _e_268[2];
    assign _e_301 = _e_268[1];
    assign _e_302 = _e_268[0];
    assign _e_367 = !_e_300;
    assign _e_370 = _e_367 && _e_301;
    assign _e_371 = _e_370 && _e_302;
    assign _e_305 = layer_n127[7:4];
    assign _e_307 = three_n137[1:0];
    assign _e_304 = _e_305[_e_307];
    assign _e_309 = _e_268[2];
    assign _e_310 = _e_268[1];
    assign _e_311 = _e_268[0];
    assign _e_374 = !_e_310;
    assign _e_375 = !_e_311;
    assign _e_376 = _e_309 && _e_374;
    assign _e_377 = _e_376 && _e_375;
    assign _e_314 = layer_n127[3:0];
    assign _e_316 = 0;
    assign _e_313 = _e_314[_e_316];
    assign _e_317 = _e_268[2];
    assign _e_318 = _e_268[1];
    assign _e_319 = _e_268[0];
    assign _e_380 = !_e_318;
    assign _e_382 = _e_317 && _e_380;
    assign _e_383 = _e_382 && _e_319;
    assign _e_322 = layer_n127[3:0];
    assign _e_324 = 1;
    assign _e_321 = _e_322[_e_324];
    assign _e_325 = _e_268[2];
    assign _e_326 = _e_268[1];
    assign _e_327 = _e_268[0];
    assign _e_387 = !_e_327;
    assign _e_388 = _e_325 && _e_326;
    assign _e_389 = _e_388 && _e_387;
    assign _e_330 = layer_n127[3:0];
    assign _e_332 = two_n136[1:0];
    assign _e_329 = _e_330[_e_332];
    assign _e_334 = _e_268[2];
    assign _e_335 = _e_268[1];
    assign _e_336 = _e_268[0];
    assign _e_394 = _e_334 && _e_335;
    assign _e_395 = _e_394 && _e_336;
    assign _e_339 = layer_n127[3:0];
    assign _e_341 = three_n137[1:0];
    assign _e_338 = _e_339[_e_341];
    always_comb begin
        priority casez ({_e_353, _e_359, _e_365, _e_371, _e_377, _e_383, _e_389, _e_395})
            8'b1???????: _e_345 = _e_279;
            8'b01??????: _e_345 = _e_287;
            8'b001?????: _e_345 = _e_295;
            8'b0001????: _e_345 = _e_304;
            8'b00001???: _e_345 = _e_313;
            8'b000001??: _e_345 = _e_321;
            8'b0000001?: _e_345 = _e_329;
            8'b00000001: _e_345 = _e_338;
            8'b?: _e_345 = 'x;
        endcase
    end
    assign _e_344 = {_e_345, c_n134};
    assign {c_n134_o} = _e_344_o;
    assign output__ = _e_344;
    assign _e_344_o = input__;
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
    logic clk_n73;
    assign clk_n73 = clk_i;
    logic x_n74;
    assign x_n74 = x_i;
    logic y_n75;
    assign y_n75 = y_i;
    logic[1:0] c_n76;
    assign c_n76 = c_i;
    logic[1:0] c_n76_o;
    assign c_o = c_n76_o;
    (* src = "src/cell.spade:13,21" *)
    logic[2:0] _e_50;
    logic[1:0] _e_50_o;
    logic on00_n77;
    logic[1:0] c_n78;
    logic[1:0] c_n78_o;
    (* src = "src/cell.spade:14,21" *)
    logic[2:0] _e_55;
    logic[1:0] _e_55_o;
    logic on01_n79;
    logic[1:0] c_n80;
    logic[1:0] c_n80_o;
    (* src = "src/cell.spade:15,21" *)
    logic[2:0] _e_60;
    logic[1:0] _e_60_o;
    logic on10_n81;
    logic[1:0] c_n82;
    logic[1:0] c_n82_o;
    (* src = "src/cell.spade:16,21" *)
    logic[2:0] _e_65;
    logic[1:0] _e_65_o;
    logic on11_n83;
    logic[1:0] c_n84;
    logic[1:0] c_n84_o;
    (* src = "src/cell.spade:17,25" *)
    logic[2:0] _e_70;
    logic[1:0] _e_70_o;
    logic register_n87;
    logic[1:0] c_n86;
    logic[1:0] c_n86_o;
    (* src = "src/cell.spade:20,27" *)
    logic[1:0] _e_76;
    logic _e_79;
    logic _e_80;
    logic _e_397;
    logic _e_398;
    logic _e_399;
    logic _e_83;
    logic _e_84;
    logic _e_401;
    logic _e_403;
    logic _e_87;
    logic _e_88;
    logic _e_406;
    logic _e_407;
    logic _e_91;
    logic _e_92;
    logic _e_411;
    (* src = "src/cell.spade:20,20" *)
    logic lut_out_n88;
    (* src = "src/cell.spade:27,14" *)
    reg _e_100;
    (* src = "src/cell.spade:30,6" *)
    logic[2:0] _e_99;
    logic[1:0] _e_99_o;
    (* src = "src/cell.spade:13,21" *)
    e_proj_config_chain_cfg_bit _e_50_i(c_n76, c_n76_o, _e_50, _e_50_o);
    assign on00_n77 = _e_50[2];
    assign c_n78 = _e_50[1:0];
    assign _e_50_o[1:0] = c_n78_o;
    (* src = "src/cell.spade:14,21" *)
    e_proj_config_chain_cfg_bit _e_55_i(c_n78, c_n78_o, _e_55, _e_55_o);
    assign on01_n79 = _e_55[2];
    assign c_n80 = _e_55[1:0];
    assign _e_55_o[1:0] = c_n80_o;
    (* src = "src/cell.spade:15,21" *)
    e_proj_config_chain_cfg_bit _e_60_i(c_n80, c_n80_o, _e_60, _e_60_o);
    assign on10_n81 = _e_60[2];
    assign c_n82 = _e_60[1:0];
    assign _e_60_o[1:0] = c_n82_o;
    (* src = "src/cell.spade:16,21" *)
    e_proj_config_chain_cfg_bit _e_65_i(c_n82, c_n82_o, _e_65, _e_65_o);
    assign on11_n83 = _e_65[2];
    assign c_n84 = _e_65[1:0];
    assign _e_65_o[1:0] = c_n84_o;
    (* src = "src/cell.spade:17,25" *)
    e_proj_config_chain_cfg_bit _e_70_i(c_n84, c_n84_o, _e_70, _e_70_o);
    assign register_n87 = _e_70[2];
    assign c_n86 = _e_70[1:0];
    assign _e_70_o[1:0] = c_n86_o;
    assign _e_76 = {x_n74, y_n75};
    assign _e_79 = _e_76[1];
    assign _e_80 = _e_76[0];
    assign _e_397 = !_e_79;
    assign _e_398 = !_e_80;
    assign _e_399 = _e_397 && _e_398;
    assign _e_83 = _e_76[1];
    assign _e_84 = _e_76[0];
    assign _e_401 = !_e_83;
    assign _e_403 = _e_401 && _e_84;
    assign _e_87 = _e_76[1];
    assign _e_88 = _e_76[0];
    assign _e_406 = !_e_88;
    assign _e_407 = _e_87 && _e_406;
    assign _e_91 = _e_76[1];
    assign _e_92 = _e_76[0];
    assign _e_411 = _e_91 && _e_92;
    always_comb begin
        priority casez ({_e_399, _e_403, _e_407, _e_411})
            4'b1???: lut_out_n88 = on00_n77;
            4'b01??: lut_out_n88 = on01_n79;
            4'b001?: lut_out_n88 = on10_n81;
            4'b0001: lut_out_n88 = on11_n83;
            4'b?: lut_out_n88 = 'x;
        endcase
    end
    always @(posedge clk_n73) begin
        _e_100 <= lut_out_n88;
    end
    assign _e_99 = {_e_100, c_n86};
    assign {c_n86_o} = _e_99_o;
    assign output__ = _e_99;
    assign _e_99_o = input__;
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
    logic x_n98;
    assign x_n98 = x_i;
    logic _e_128;
    (* src = "src/main.spade:9,11" *)
    logic _e_127;
    logic _e_130;
    (* src = "src/main.spade:9,5" *)
    logic _e_124;
    assign _e_128 = 0;
    assign _e_127 = ~_e_128;
    assign _e_130 = 0;
    assign _e_124 = x_n98 ? _e_127 : _e_130;
    assign output__ = _e_124;
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
    logic clk_n63;
    assign clk_n63 = clk_i;
    logic sync1_n64;
    assign sync1_n64 = sync1_i;
    (* src = "build/spade/stdlib/io.spade:3,14" *)
    reg sync2_n65;
    (* src = "build/spade/stdlib/io.spade:4,14" *)
    logic _e_6;
    (* src = "build/spade/stdlib/io.spade:4,5" *)
    logic _e_4;
    always @(posedge clk_n63) begin
        sync2_n65 <= sync1_n64;
    end
    assign _e_6 = !sync2_n65;
    assign _e_4 = sync1_n64 && _e_6;
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
    logic clk_n66;
    assign clk_n66 = clk_i;
    logic sync1_n67;
    assign sync1_n67 = sync1_i;
    (* src = "build/spade/stdlib/io.spade:9,14" *)
    reg sync2_n68;
    (* src = "build/spade/stdlib/io.spade:10,14" *)
    logic _e_14;
    (* src = "build/spade/stdlib/io.spade:10,5" *)
    logic _e_12;
    always @(posedge clk_n66) begin
        sync2_n68 <= sync1_n67;
    end
    assign _e_14 = !sync1_n67;
    assign _e_12 = sync2_n68 && _e_14;
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
    logic[1:0] chain_n70;
    assign chain_n70 = chain_i;
    logic[1:0] chain_n70_o;
    assign chain_o = chain_n70_o;
    (* src = "src/config_chain.spade:11,9" *)
    logic _e_28;
    (* src = "src/config_chain.spade:11,29" *)
    logic _e_30;
    (* src = "src/config_chain.spade:11,20" *)
    reg value_n71;
    (* src = "src/config_chain.spade:14,14" *)
    logic _e_34;
    (* src = "src/config_chain.spade:15,16" *)
    logic _e_36;
    (* src = "src/config_chain.spade:16,16" *)
    logic[1:0] _e_38_o;
    (* src = "src/config_chain.spade:13,21" *)
    logic[1:0] new_chain_n72;
    logic[1:0] new_chain_n72_o;
    (* src = "src/config_chain.spade:18,6" *)
    logic _e_42;
    (* src = "src/config_chain.spade:18,6" *)
    logic[2:0] _e_41;
    logic[1:0] _e_41_o;
    assign _e_28 = chain_n70[1];
    assign _e_30 = chain_n70[0];
    always @(posedge _e_28) begin
        value_n71 <= _e_30;
    end
    assign _e_34 = chain_n70[1];
    assign _e_36 = value_n71;
    assign chain_n70_o[1:0] = _e_38_o;
    assign new_chain_n72 = {_e_34, _e_36};
    assign {_e_38_o} = new_chain_n72_o;
    assign _e_42 = value_n71;
    assign _e_41 = {_e_42, new_chain_n72};
    assign {new_chain_n72_o} = _e_41_o;
    assign output__ = _e_41;
    assign _e_41_o = input__;
endmodule