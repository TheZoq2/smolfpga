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
    logic[2:0] _e_331;
    logic[1:0] _e_331_o;
    logic _e_343;
    logic[1:0] c_n159;
    logic[1:0] c_n159_o;
    (* src = "src/routing.spade:16,19" *)
    logic[2:0] _e_336;
    logic[1:0] _e_336_o;
    logic _e_345;
    logic[1:0] c_n161;
    logic[1:0] c_n161_o;
    (* src = "src/routing.spade:17,19" *)
    logic[2:0] _e_341;
    logic[1:0] _e_341_o;
    logic _e_347;
    logic[1:0] c_n163;
    logic[1:0] c_n163_o;
    (* src = "src/routing.spade:18,25" *)
    logic[2:0] _e_352;
    logic s0_n164;
    logic s1_n165;
    logic s2_n166;
    logic[3:0] _e_353;
    (* src = "src/routing.spade:21,9" *)
    logic[3:0] one_n167;
    logic[3:0] _e_355;
    (* src = "src/routing.spade:22,9" *)
    logic[3:0] two_n168;
    logic[3:0] _e_357;
    (* src = "src/routing.spade:23,9" *)
    logic[3:0] three_n169;
    (* src = "src/routing.spade:24,25" *)
    logic[2:0] _e_360;
    logic _e_364;
    logic _e_365;
    logic _e_366;
    logic _e_538;
    logic _e_539;
    logic _e_540;
    logic _e_541;
    logic _e_542;
    (* src = "src/routing.spade:25,34" *)
    logic[3:0] _e_369;
    logic[1:0] _e_371;
    (* src = "src/routing.spade:25,34" *)
    logic _e_368;
    logic _e_372;
    logic _e_373;
    logic _e_374;
    logic _e_544;
    logic _e_545;
    logic _e_547;
    logic _e_548;
    (* src = "src/routing.spade:26,33" *)
    logic[3:0] _e_377;
    logic[1:0] _e_379;
    (* src = "src/routing.spade:26,33" *)
    logic _e_376;
    logic _e_380;
    logic _e_381;
    logic _e_382;
    logic _e_550;
    logic _e_552;
    logic _e_553;
    logic _e_554;
    (* src = "src/routing.spade:27,33" *)
    logic[3:0] _e_385;
    (* src = "src/routing.spade:27,48" *)
    logic[1:0] _e_387;
    (* src = "src/routing.spade:27,33" *)
    logic _e_384;
    logic _e_389;
    logic _e_390;
    logic _e_391;
    logic _e_556;
    logic _e_559;
    logic _e_560;
    (* src = "src/routing.spade:28,32" *)
    logic[3:0] _e_394;
    (* src = "src/routing.spade:28,47" *)
    logic[1:0] _e_396;
    (* src = "src/routing.spade:28,32" *)
    logic _e_393;
    logic _e_398;
    logic _e_399;
    logic _e_400;
    logic _e_563;
    logic _e_564;
    logic _e_565;
    logic _e_566;
    (* src = "src/routing.spade:29,33" *)
    logic[3:0] _e_403;
    logic[1:0] _e_405;
    (* src = "src/routing.spade:29,33" *)
    logic _e_402;
    logic _e_406;
    logic _e_407;
    logic _e_408;
    logic _e_569;
    logic _e_571;
    logic _e_572;
    (* src = "src/routing.spade:30,32" *)
    logic[3:0] _e_411;
    logic[1:0] _e_413;
    (* src = "src/routing.spade:30,32" *)
    logic _e_410;
    logic _e_414;
    logic _e_415;
    logic _e_416;
    logic _e_576;
    logic _e_577;
    logic _e_578;
    (* src = "src/routing.spade:31,32" *)
    logic[3:0] _e_419;
    (* src = "src/routing.spade:31,47" *)
    logic[1:0] _e_421;
    (* src = "src/routing.spade:31,32" *)
    logic _e_418;
    logic _e_423;
    logic _e_424;
    logic _e_425;
    logic _e_583;
    logic _e_584;
    (* src = "src/routing.spade:32,31" *)
    logic[3:0] _e_428;
    (* src = "src/routing.spade:32,46" *)
    logic[1:0] _e_430;
    (* src = "src/routing.spade:32,31" *)
    logic _e_427;
    (* src = "src/routing.spade:24,18" *)
    logic _e_434;
    (* src = "src/routing.spade:35,6" *)
    logic[2:0] _e_433;
    logic[1:0] _e_433_o;
    (* src = "src/routing.spade:15,19" *)
    e_proj_config_chain_cfg_bit _e_331_i(c_n157, c_n157_o, _e_331, _e_331_o);
    assign _e_343 = _e_331[2];
    assign c_n159 = _e_331[1:0];
    assign _e_331_o[1:0] = c_n159_o;
    (* src = "src/routing.spade:16,19" *)
    e_proj_config_chain_cfg_bit _e_336_i(c_n159, c_n159_o, _e_336, _e_336_o);
    assign _e_345 = _e_336[2];
    assign c_n161 = _e_336[1:0];
    assign _e_336_o[1:0] = c_n161_o;
    (* src = "src/routing.spade:17,19" *)
    e_proj_config_chain_cfg_bit _e_341_i(c_n161, c_n161_o, _e_341, _e_341_o);
    assign _e_347 = _e_341[2];
    assign c_n163 = _e_341[1:0];
    assign _e_341_o[1:0] = c_n163_o;
    assign _e_352 = {_e_343, _e_345, _e_347};
    assign s0_n164 = _e_352[2];
    assign s1_n165 = _e_352[1];
    assign s2_n166 = _e_352[0];
    assign _e_353 = 1;
    assign one_n167 = _e_353;
    assign _e_355 = 2;
    assign two_n168 = _e_355;
    assign _e_357 = 3;
    assign three_n169 = _e_357;
    assign _e_360 = {s0_n164, s1_n165, s2_n166};
    assign _e_364 = _e_360[2];
    assign _e_365 = _e_360[1];
    assign _e_366 = _e_360[0];
    assign _e_538 = !_e_364;
    assign _e_539 = !_e_365;
    assign _e_540 = !_e_366;
    assign _e_541 = _e_538 && _e_539;
    assign _e_542 = _e_541 && _e_540;
    assign _e_369 = layer_n156[7:4];
    assign _e_371 = 0;
    assign _e_368 = _e_369[_e_371];
    assign _e_372 = _e_360[2];
    assign _e_373 = _e_360[1];
    assign _e_374 = _e_360[0];
    assign _e_544 = !_e_372;
    assign _e_545 = !_e_373;
    assign _e_547 = _e_544 && _e_545;
    assign _e_548 = _e_547 && _e_374;
    assign _e_377 = layer_n156[7:4];
    assign _e_379 = 1;
    assign _e_376 = _e_377[_e_379];
    assign _e_380 = _e_360[2];
    assign _e_381 = _e_360[1];
    assign _e_382 = _e_360[0];
    assign _e_550 = !_e_380;
    assign _e_552 = !_e_382;
    assign _e_553 = _e_550 && _e_381;
    assign _e_554 = _e_553 && _e_552;
    assign _e_385 = layer_n156[7:4];
    assign _e_387 = two_n168[1:0];
    assign _e_384 = _e_385[_e_387];
    assign _e_389 = _e_360[2];
    assign _e_390 = _e_360[1];
    assign _e_391 = _e_360[0];
    assign _e_556 = !_e_389;
    assign _e_559 = _e_556 && _e_390;
    assign _e_560 = _e_559 && _e_391;
    assign _e_394 = layer_n156[7:4];
    assign _e_396 = three_n169[1:0];
    assign _e_393 = _e_394[_e_396];
    assign _e_398 = _e_360[2];
    assign _e_399 = _e_360[1];
    assign _e_400 = _e_360[0];
    assign _e_563 = !_e_399;
    assign _e_564 = !_e_400;
    assign _e_565 = _e_398 && _e_563;
    assign _e_566 = _e_565 && _e_564;
    assign _e_403 = layer_n156[3:0];
    assign _e_405 = 0;
    assign _e_402 = _e_403[_e_405];
    assign _e_406 = _e_360[2];
    assign _e_407 = _e_360[1];
    assign _e_408 = _e_360[0];
    assign _e_569 = !_e_407;
    assign _e_571 = _e_406 && _e_569;
    assign _e_572 = _e_571 && _e_408;
    assign _e_411 = layer_n156[3:0];
    assign _e_413 = 1;
    assign _e_410 = _e_411[_e_413];
    assign _e_414 = _e_360[2];
    assign _e_415 = _e_360[1];
    assign _e_416 = _e_360[0];
    assign _e_576 = !_e_416;
    assign _e_577 = _e_414 && _e_415;
    assign _e_578 = _e_577 && _e_576;
    assign _e_419 = layer_n156[3:0];
    assign _e_421 = two_n168[1:0];
    assign _e_418 = _e_419[_e_421];
    assign _e_423 = _e_360[2];
    assign _e_424 = _e_360[1];
    assign _e_425 = _e_360[0];
    assign _e_583 = _e_423 && _e_424;
    assign _e_584 = _e_583 && _e_425;
    assign _e_428 = layer_n156[3:0];
    assign _e_430 = three_n169[1:0];
    assign _e_427 = _e_428[_e_430];
    always_comb begin
        priority casez ({_e_542, _e_548, _e_554, _e_560, _e_566, _e_572, _e_578, _e_584})
            8'b1???????: _e_434 = _e_368;
            8'b01??????: _e_434 = _e_376;
            8'b001?????: _e_434 = _e_384;
            8'b0001????: _e_434 = _e_393;
            8'b00001???: _e_434 = _e_402;
            8'b000001??: _e_434 = _e_410;
            8'b0000001?: _e_434 = _e_418;
            8'b00000001: _e_434 = _e_427;
            8'b?: _e_434 = 'x;
        endcase
    end
    assign _e_433 = {_e_434, c_n163};
    assign {c_n163_o} = _e_433_o;
    assign output__ = _e_433;
    assign _e_433_o = input__;
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
    logic[3:0] _e_459;
    (* src = "src/routing.spade:64,9" *)
    logic[3:0] two_n183;
    logic[3:0] _e_461;
    (* src = "src/routing.spade:65,9" *)
    logic[3:0] three_n184;
    logic[1:0] _e_467;
    (* src = "src/routing.spade:66,42" *)
    logic _e_465;
    logic[1:0] _e_470;
    (* src = "src/routing.spade:66,61" *)
    logic _e_468;
    (* src = "src/routing.spade:66,19" *)
    logic[2:0] _e_474;
    logic[1:0] _e_474_o;
    logic _e_509;
    logic[1:0] c_n186;
    logic[1:0] c_n186_o;
    logic[1:0] _e_479;
    (* src = "src/routing.spade:67,42" *)
    logic _e_477;
    logic[1:0] _e_482;
    (* src = "src/routing.spade:67,61" *)
    logic _e_480;
    (* src = "src/routing.spade:67,19" *)
    logic[2:0] _e_486;
    logic[1:0] _e_486_o;
    logic _e_511;
    logic[1:0] c_n188;
    logic[1:0] c_n188_o;
    (* src = "src/routing.spade:68,57" *)
    logic[1:0] _e_491;
    (* src = "src/routing.spade:68,42" *)
    logic _e_489;
    (* src = "src/routing.spade:68,84" *)
    logic[1:0] _e_495;
    (* src = "src/routing.spade:68,70" *)
    logic _e_493;
    (* src = "src/routing.spade:68,19" *)
    logic[2:0] _e_500;
    logic[1:0] _e_500_o;
    logic _e_513;
    logic[1:0] c_n190;
    logic[1:0] c_n190_o;
    (* src = "src/routing.spade:69,22" *)
    logic[2:0] _e_505;
    logic[1:0] _e_505_o;
    logic dummy_n191;
    logic[1:0] c_n192;
    logic[1:0] c_n192_o;
    logic _e_515;
    (* src = "src/routing.spade:71,7" *)
    logic[3:0] _e_507;
    (* src = "src/routing.spade:71,6" *)
    logic[5:0] _e_506;
    logic[1:0] _e_506_o;
    always @(posedge clk_n178) begin
        from_layer_reg_n182 <= from_layer_n179;
    end
    assign _e_459 = 2;
    assign two_n183 = _e_459;
    assign _e_461 = 3;
    assign three_n184 = _e_461;
    assign _e_467 = 0;
    assign _e_465 = from_layer_reg_n182[_e_467];
    assign _e_470 = 0;
    assign _e_468 = from_previous_n180[_e_470];
    (* src = "src/routing.spade:66,19" *)
    e_proj_routing_feedback_mux _e_474_i(clk_n178, _e_465, _e_468, c_n181, c_n181_o, _e_474, _e_474_o);
    assign _e_509 = _e_474[2];
    assign c_n186 = _e_474[1:0];
    assign _e_474_o[1:0] = c_n186_o;
    assign _e_479 = 1;
    assign _e_477 = from_layer_reg_n182[_e_479];
    assign _e_482 = 1;
    assign _e_480 = from_previous_n180[_e_482];
    (* src = "src/routing.spade:67,19" *)
    e_proj_routing_feedback_mux _e_486_i(clk_n178, _e_477, _e_480, c_n186, c_n186_o, _e_486, _e_486_o);
    assign _e_511 = _e_486[2];
    assign c_n188 = _e_486[1:0];
    assign _e_486_o[1:0] = c_n188_o;
    assign _e_491 = two_n183[1:0];
    assign _e_489 = from_layer_reg_n182[_e_491];
    assign _e_495 = two_n183[1:0];
    assign _e_493 = from_previous_n180[_e_495];
    (* src = "src/routing.spade:68,19" *)
    e_proj_routing_feedback_mux _e_500_i(clk_n178, _e_489, _e_493, c_n188, c_n188_o, _e_500, _e_500_o);
    assign _e_513 = _e_500[2];
    assign c_n190 = _e_500[1:0];
    assign _e_500_o[1:0] = c_n190_o;
    (* src = "src/routing.spade:69,22" *)
    e_proj_config_chain_cfg_bit _e_505_i(c_n190, c_n190_o, _e_505, _e_505_o);
    assign dummy_n191 = _e_505[2];
    assign c_n192 = _e_505[1:0];
    assign _e_505_o[1:0] = c_n192_o;
    assign _e_515 = 0;
    assign _e_507 = {_e_515, _e_513, _e_511, _e_509};
    assign _e_506 = {_e_507, c_n192};
    assign {c_n192_o} = _e_506_o;
    assign output__ = _e_506;
    assign _e_506_o = input__;
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
    logic clk_n141;
    assign clk_n141 = clk_i;
    logic[3:0] inputs_unsync_n142;
    assign inputs_unsync_n142 = inputs_unsync_i;
    logic cfg_clk_n143;
    assign cfg_clk_n143 = cfg_clk_i;
    logic cfg_value_n144;
    assign cfg_value_n144 = cfg_value_i;
    (* src = "src/main.spade:125,14" *)
    reg[3:0] inputs_n145;
    (* src = "src/main.spade:127,5" *)
    logic[7:0] _e_298;
    always @(posedge clk_n141) begin
        inputs_n145 <= inputs_unsync_n142;
    end
    (* src = "src/main.spade:127,5" *)
    e_cell_test _e_298_i(clk_n141, inputs_n145, cfg_clk_n143, cfg_value_n144, _e_298);
    assign output__ = _e_298;
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
    logic _e_520;
    logic[1:0] _e_522_o;
    (* src = "src/routing.spade:82,13" *)
    logic[1:0] c_n198;
    logic[1:0] c_n198_o;
    (* src = "src/routing.spade:88,24" *)
    logic[5:0] _e_531;
    logic[1:0] _e_531_o;
    logic[3:0] _e_535;
    logic[1:0] chain_n200;
    logic[1:0] chain_n200_o;
    (* src = "src/routing.spade:89,9" *)
    logic[1:0] _e_532_o;
    logic[1:0] _e_534;
    assign _e_520 = cfg_value_n197;
    
    assign c_n198 = {cfg_clk_n196, _e_520};
    assign {_e_522_o} = c_n198_o;
    (* src = "src/routing.spade:88,24" *)
    e_proj_routing_feedback_tile _e_531_i(clk_n193, from_layer_n194, from_previous_n195, c_n198, c_n198_o, _e_531, _e_531_o);
    assign _e_535 = _e_531[5:2];
    assign chain_n200 = _e_531[1:0];
    assign _e_531_o[1:0] = chain_n200_o;
    assign chain_n200_o[1:0] = _e_532_o;
    assign _e_534 = 1;
    assign _e_532_o = _e_534;
    assign output__ = _e_535;
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
    logic _e_586;
    logic _e_587;
    logic _e_588;
    logic _e_75;
    logic _e_76;
    logic _e_590;
    logic _e_592;
    logic _e_79;
    logic _e_80;
    logic _e_595;
    logic _e_596;
    logic _e_83;
    logic _e_84;
    logic _e_600;
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
    assign _e_586 = !_e_71;
    assign _e_587 = !_e_72;
    assign _e_588 = _e_586 && _e_587;
    assign _e_75 = _e_68[1];
    assign _e_76 = _e_68[0];
    assign _e_590 = !_e_75;
    assign _e_592 = _e_590 && _e_76;
    assign _e_79 = _e_68[1];
    assign _e_80 = _e_68[0];
    assign _e_595 = !_e_80;
    assign _e_596 = _e_79 && _e_595;
    assign _e_83 = _e_68[1];
    assign _e_84 = _e_68[0];
    assign _e_600 = _e_83 && _e_84;
    always_comb begin
        priority casez ({_e_588, _e_592, _e_596, _e_600})
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
    logic[2:0] _e_442;
    logic[1:0] _e_442_o;
    logic _e_444;
    logic[1:0] c_n176;
    logic[1:0] c_n176_o;
    (* src = "src/routing.spade:46,18" *)
    logic _e_452;
    (* src = "src/routing.spade:52,6" *)
    logic[2:0] _e_451;
    logic[1:0] _e_451_o;
    (* src = "src/routing.spade:44,29" *)
    e_proj_config_chain_cfg_bit _e_442_i(c_n174, c_n174_o, _e_442, _e_442_o);
    assign _e_444 = _e_442[2];
    assign c_n176 = _e_442[1:0];
    assign _e_442_o[1:0] = c_n176_o;
    assign _e_452 = _e_444 ? from_previous_n173 : from_layer_n172;
    assign _e_451 = {_e_452, c_n176};
    assign {c_n176_o} = _e_451_o;
    assign output__ = _e_451;
    assign _e_451_o = input__;
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
    logic[2:0] _e_263;
    (* src = "src/main.spade:108,9" *)
    logic[2:0] two_n139;
    logic[2:0] _e_265;
    (* src = "src/main.spade:109,9" *)
    logic[2:0] three_n140;
    logic[3:0] _e_268;
    (* src = "src/main.spade:111,23" *)
    logic[3:0] _e_272;
    logic[1:0] _e_274;
    (* src = "src/main.spade:111,23" *)
    logic _e_271;
    (* src = "src/main.spade:111,18" *)
    logic _e_270;
    (* src = "src/main.spade:112,23" *)
    logic[3:0] _e_278;
    logic[1:0] _e_280;
    (* src = "src/main.spade:112,23" *)
    logic _e_277;
    (* src = "src/main.spade:112,18" *)
    logic _e_276;
    (* src = "src/main.spade:113,23" *)
    logic[3:0] _e_284;
    (* src = "src/main.spade:113,31" *)
    logic[1:0] _e_286;
    (* src = "src/main.spade:113,23" *)
    logic _e_283;
    (* src = "src/main.spade:113,18" *)
    logic _e_282;
    (* src = "src/main.spade:114,23" *)
    logic[3:0] _e_290;
    (* src = "src/main.spade:114,31" *)
    logic[1:0] _e_292;
    (* src = "src/main.spade:114,23" *)
    logic _e_289;
    (* src = "src/main.spade:114,18" *)
    logic _e_288;
    logic[1:0] _e_281;
    logic[2:0] _e_275;
    logic[3:0] _e_269;
    logic[7:0] _e_267;
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
    assign _e_263 = 2;
    assign two_n139 = _e_263;
    assign _e_265 = 3;
    assign three_n140 = _e_265;
    assign _e_268 = 0;
    assign _e_272 = cells_n135;
    assign _e_274 = 0;
    assign _e_271 = _e_272[_e_274];
    (* src = "src/main.spade:111,18" *)
    e_proj_main_b2i _e_270_i(_e_271, _e_270);
    assign _e_278 = cells_n135;
    assign _e_280 = 1;
    assign _e_277 = _e_278[_e_280];
    (* src = "src/main.spade:112,18" *)
    e_proj_main_b2i _e_276_i(_e_277, _e_276);
    assign _e_284 = cells_n135;
    assign _e_286 = two_n139[1:0];
    assign _e_283 = _e_284[_e_286];
    (* src = "src/main.spade:113,18" *)
    e_proj_main_b2i _e_282_i(_e_283, _e_282);
    assign _e_290 = cells_n135;
    assign _e_292 = three_n140[1:0];
    assign _e_289 = _e_290[_e_292];
    (* src = "src/main.spade:114,18" *)
    e_proj_main_b2i _e_288_i(_e_289, _e_288);
    assign _e_281 = {_e_282, _e_288};
    assign _e_275 = {_e_276, _e_281};
    assign _e_269 = {_e_270, _e_275};
    assign _e_267 = {_e_268, _e_269};
    assign output__ = _e_267;
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
    (* src = "src/main.spade:143,16" *)
    logic _e_306;
    logic[1:0] _e_308_o;
    (* src = "src/main.spade:141,13" *)
    logic[1:0] c_n152;
    logic[1:0] c_n152_o;
    (* src = "src/main.spade:147,23" *)
    logic[7:0] input_layer_n153;
    (* src = "src/main.spade:149,24" *)
    logic[5:0] _e_320;
    logic[1:0] _e_320_o;
    logic[3:0] _e_324;
    logic[1:0] chain_n155;
    logic[1:0] chain_n155_o;
    (* src = "src/main.spade:150,9" *)
    logic[1:0] _e_321_o;
    logic[1:0] _e_323;
    assign _e_306 = cfg_value_n151;
    
    assign c_n152 = {cfg_clk_n150, _e_306};
    assign {_e_308_o} = c_n152_o;
    assign input_layer_n153 = {cell_out_n147, feedback_n148};
    (* src = "src/main.spade:149,24" *)
    e_proj_main_layer _e_320_i(clk_n146, input_layer_n153, c_n152, c_n152_o, _e_320, _e_320_o);
    assign _e_324 = _e_320[5:2];
    assign chain_n155 = _e_320[1:0];
    assign _e_320_o[1:0] = chain_n155_o;
    assign chain_n155_o[1:0] = _e_321_o;
    assign _e_323 = 1;
    assign _e_321_o = _e_323;
    assign output__ = _e_324;
endmodule