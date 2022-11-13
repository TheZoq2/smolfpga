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
    logic clk_n177;
    assign clk_n177 = clk_i;
    logic[3:0] from_layer_n178;
    assign from_layer_n178 = from_layer_i;
    logic[3:0] from_previous_n179;
    assign from_previous_n179 = from_previous_i;
    logic[1:0] c_n180;
    assign c_n180 = c_i;
    logic[1:0] c_n180_o;
    assign c_o = c_n180_o;
    (* src = "src/routing.spade:61,14" *)
    reg[3:0] from_layer_reg_n181;
    logic[3:0] _e_456;
    (* src = "src/routing.spade:64,9" *)
    logic[3:0] two_n182;
    logic[3:0] _e_458;
    (* src = "src/routing.spade:65,9" *)
    logic[3:0] three_n183;
    logic[1:0] _e_464;
    (* src = "src/routing.spade:66,42" *)
    logic _e_462;
    logic[1:0] _e_467;
    (* src = "src/routing.spade:66,61" *)
    logic _e_465;
    (* src = "src/routing.spade:66,19" *)
    logic[2:0] _e_471;
    logic[1:0] _e_471_o;
    logic _e_515;
    logic[1:0] c_n185;
    logic[1:0] c_n185_o;
    logic[1:0] _e_476;
    (* src = "src/routing.spade:67,42" *)
    logic _e_474;
    logic[1:0] _e_479;
    (* src = "src/routing.spade:67,61" *)
    logic _e_477;
    (* src = "src/routing.spade:67,19" *)
    logic[2:0] _e_483;
    logic[1:0] _e_483_o;
    logic _e_517;
    logic[1:0] c_n187;
    logic[1:0] c_n187_o;
    (* src = "src/routing.spade:68,57" *)
    logic[1:0] _e_488;
    (* src = "src/routing.spade:68,42" *)
    logic _e_486;
    (* src = "src/routing.spade:68,84" *)
    logic[1:0] _e_492;
    (* src = "src/routing.spade:68,70" *)
    logic _e_490;
    (* src = "src/routing.spade:68,19" *)
    logic[2:0] _e_497;
    logic[1:0] _e_497_o;
    logic _e_519;
    logic[1:0] c_n189;
    logic[1:0] c_n189_o;
    (* src = "src/routing.spade:69,57" *)
    logic[1:0] _e_502;
    (* src = "src/routing.spade:69,42" *)
    logic _e_500;
    (* src = "src/routing.spade:69,86" *)
    logic[1:0] _e_506;
    (* src = "src/routing.spade:69,72" *)
    logic _e_504;
    (* src = "src/routing.spade:69,19" *)
    logic[2:0] _e_511;
    logic[1:0] _e_511_o;
    logic _e_521;
    logic[1:0] c_n191;
    logic[1:0] c_n191_o;
    (* src = "src/routing.spade:71,7" *)
    logic[3:0] _e_513;
    (* src = "src/routing.spade:71,6" *)
    logic[5:0] _e_512;
    logic[1:0] _e_512_o;
    always @(posedge clk_n177) begin
        from_layer_reg_n181 <= from_layer_n178;
    end
    assign _e_456 = 2;
    assign two_n182 = _e_456;
    assign _e_458 = 3;
    assign three_n183 = _e_458;
    assign _e_464 = 0;
    assign _e_462 = from_layer_reg_n181[_e_464];
    assign _e_467 = 0;
    assign _e_465 = from_previous_n179[_e_467];
    (* src = "src/routing.spade:66,19" *)
    e_proj_routing_feedback_mux _e_471_i(clk_n177, _e_462, _e_465, c_n180, c_n180_o, _e_471, _e_471_o);
    assign _e_515 = _e_471[2];
    assign c_n185 = _e_471[1:0];
    assign _e_471_o[1:0] = c_n185_o;
    assign _e_476 = 1;
    assign _e_474 = from_layer_reg_n181[_e_476];
    assign _e_479 = 1;
    assign _e_477 = from_previous_n179[_e_479];
    (* src = "src/routing.spade:67,19" *)
    e_proj_routing_feedback_mux _e_483_i(clk_n177, _e_474, _e_477, c_n185, c_n185_o, _e_483, _e_483_o);
    assign _e_517 = _e_483[2];
    assign c_n187 = _e_483[1:0];
    assign _e_483_o[1:0] = c_n187_o;
    assign _e_488 = two_n182[1:0];
    assign _e_486 = from_layer_reg_n181[_e_488];
    assign _e_492 = two_n182[1:0];
    assign _e_490 = from_previous_n179[_e_492];
    (* src = "src/routing.spade:68,19" *)
    e_proj_routing_feedback_mux _e_497_i(clk_n177, _e_486, _e_490, c_n187, c_n187_o, _e_497, _e_497_o);
    assign _e_519 = _e_497[2];
    assign c_n189 = _e_497[1:0];
    assign _e_497_o[1:0] = c_n189_o;
    assign _e_502 = three_n183[1:0];
    assign _e_500 = from_layer_reg_n181[_e_502];
    assign _e_506 = three_n183[1:0];
    assign _e_504 = from_previous_n179[_e_506];
    (* src = "src/routing.spade:69,19" *)
    e_proj_routing_feedback_mux _e_511_i(clk_n177, _e_500, _e_504, c_n189, c_n189_o, _e_511, _e_511_o);
    assign _e_521 = _e_511[2];
    assign c_n191 = _e_511[1:0];
    assign _e_511_o[1:0] = c_n191_o;
    assign _e_513 = {_e_521, _e_519, _e_517, _e_515};
    assign _e_512 = {_e_513, c_n191};
    assign {c_n191_o} = _e_512_o;
    assign output__ = _e_512;
    assign _e_512_o = input__;
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
    logic[7:0] layer_n155;
    assign layer_n155 = layer_i;
    logic[1:0] c_n156;
    assign c_n156 = c_i;
    logic[1:0] c_n156_o;
    assign c_o = c_n156_o;
    (* src = "src/routing.spade:15,19" *)
    logic[2:0] _e_328;
    logic[1:0] _e_328_o;
    logic _e_340;
    logic[1:0] c_n158;
    logic[1:0] c_n158_o;
    (* src = "src/routing.spade:16,19" *)
    logic[2:0] _e_333;
    logic[1:0] _e_333_o;
    logic _e_342;
    logic[1:0] c_n160;
    logic[1:0] c_n160_o;
    (* src = "src/routing.spade:17,19" *)
    logic[2:0] _e_338;
    logic[1:0] _e_338_o;
    logic _e_344;
    logic[1:0] c_n162;
    logic[1:0] c_n162_o;
    (* src = "src/routing.spade:18,25" *)
    logic[2:0] _e_349;
    logic s0_n163;
    logic s1_n164;
    logic s2_n165;
    logic[3:0] _e_350;
    (* src = "src/routing.spade:21,9" *)
    logic[3:0] one_n166;
    logic[3:0] _e_352;
    (* src = "src/routing.spade:22,9" *)
    logic[3:0] two_n167;
    logic[3:0] _e_354;
    (* src = "src/routing.spade:23,9" *)
    logic[3:0] three_n168;
    (* src = "src/routing.spade:24,25" *)
    logic[2:0] _e_357;
    logic _e_361;
    logic _e_362;
    logic _e_363;
    logic _e_545;
    logic _e_546;
    logic _e_547;
    logic _e_548;
    logic _e_549;
    (* src = "src/routing.spade:25,34" *)
    logic[3:0] _e_366;
    logic[1:0] _e_368;
    (* src = "src/routing.spade:25,34" *)
    logic _e_365;
    logic _e_369;
    logic _e_370;
    logic _e_371;
    logic _e_551;
    logic _e_552;
    logic _e_554;
    logic _e_555;
    (* src = "src/routing.spade:26,33" *)
    logic[3:0] _e_374;
    logic[1:0] _e_376;
    (* src = "src/routing.spade:26,33" *)
    logic _e_373;
    logic _e_377;
    logic _e_378;
    logic _e_379;
    logic _e_557;
    logic _e_559;
    logic _e_560;
    logic _e_561;
    (* src = "src/routing.spade:27,33" *)
    logic[3:0] _e_382;
    (* src = "src/routing.spade:27,48" *)
    logic[1:0] _e_384;
    (* src = "src/routing.spade:27,33" *)
    logic _e_381;
    logic _e_386;
    logic _e_387;
    logic _e_388;
    logic _e_563;
    logic _e_566;
    logic _e_567;
    (* src = "src/routing.spade:28,32" *)
    logic[3:0] _e_391;
    (* src = "src/routing.spade:28,47" *)
    logic[1:0] _e_393;
    (* src = "src/routing.spade:28,32" *)
    logic _e_390;
    logic _e_395;
    logic _e_396;
    logic _e_397;
    logic _e_570;
    logic _e_571;
    logic _e_572;
    logic _e_573;
    (* src = "src/routing.spade:29,33" *)
    logic[3:0] _e_400;
    logic[1:0] _e_402;
    (* src = "src/routing.spade:29,33" *)
    logic _e_399;
    logic _e_403;
    logic _e_404;
    logic _e_405;
    logic _e_576;
    logic _e_578;
    logic _e_579;
    (* src = "src/routing.spade:30,32" *)
    logic[3:0] _e_408;
    logic[1:0] _e_410;
    (* src = "src/routing.spade:30,32" *)
    logic _e_407;
    logic _e_411;
    logic _e_412;
    logic _e_413;
    logic _e_583;
    logic _e_584;
    logic _e_585;
    (* src = "src/routing.spade:31,32" *)
    logic[3:0] _e_416;
    (* src = "src/routing.spade:31,47" *)
    logic[1:0] _e_418;
    (* src = "src/routing.spade:31,32" *)
    logic _e_415;
    logic _e_420;
    logic _e_421;
    logic _e_422;
    logic _e_590;
    logic _e_591;
    (* src = "src/routing.spade:32,31" *)
    logic[3:0] _e_425;
    (* src = "src/routing.spade:32,46" *)
    logic[1:0] _e_427;
    (* src = "src/routing.spade:32,31" *)
    logic _e_424;
    (* src = "src/routing.spade:24,18" *)
    logic _e_431;
    (* src = "src/routing.spade:35,6" *)
    logic[2:0] _e_430;
    logic[1:0] _e_430_o;
    (* src = "src/routing.spade:15,19" *)
    e_proj_config_chain_cfg_bit _e_328_i(c_n156, c_n156_o, _e_328, _e_328_o);
    assign _e_340 = _e_328[2];
    assign c_n158 = _e_328[1:0];
    assign _e_328_o[1:0] = c_n158_o;
    (* src = "src/routing.spade:16,19" *)
    e_proj_config_chain_cfg_bit _e_333_i(c_n158, c_n158_o, _e_333, _e_333_o);
    assign _e_342 = _e_333[2];
    assign c_n160 = _e_333[1:0];
    assign _e_333_o[1:0] = c_n160_o;
    (* src = "src/routing.spade:17,19" *)
    e_proj_config_chain_cfg_bit _e_338_i(c_n160, c_n160_o, _e_338, _e_338_o);
    assign _e_344 = _e_338[2];
    assign c_n162 = _e_338[1:0];
    assign _e_338_o[1:0] = c_n162_o;
    assign _e_349 = {_e_340, _e_342, _e_344};
    assign s0_n163 = _e_349[2];
    assign s1_n164 = _e_349[1];
    assign s2_n165 = _e_349[0];
    assign _e_350 = 1;
    assign one_n166 = _e_350;
    assign _e_352 = 2;
    assign two_n167 = _e_352;
    assign _e_354 = 3;
    assign three_n168 = _e_354;
    assign _e_357 = {s0_n163, s1_n164, s2_n165};
    assign _e_361 = _e_357[2];
    assign _e_362 = _e_357[1];
    assign _e_363 = _e_357[0];
    assign _e_545 = !_e_361;
    assign _e_546 = !_e_362;
    assign _e_547 = !_e_363;
    assign _e_548 = _e_545 && _e_546;
    assign _e_549 = _e_548 && _e_547;
    assign _e_366 = layer_n155[7:4];
    assign _e_368 = 0;
    assign _e_365 = _e_366[_e_368];
    assign _e_369 = _e_357[2];
    assign _e_370 = _e_357[1];
    assign _e_371 = _e_357[0];
    assign _e_551 = !_e_369;
    assign _e_552 = !_e_370;
    assign _e_554 = _e_551 && _e_552;
    assign _e_555 = _e_554 && _e_371;
    assign _e_374 = layer_n155[7:4];
    assign _e_376 = 1;
    assign _e_373 = _e_374[_e_376];
    assign _e_377 = _e_357[2];
    assign _e_378 = _e_357[1];
    assign _e_379 = _e_357[0];
    assign _e_557 = !_e_377;
    assign _e_559 = !_e_379;
    assign _e_560 = _e_557 && _e_378;
    assign _e_561 = _e_560 && _e_559;
    assign _e_382 = layer_n155[7:4];
    assign _e_384 = two_n167[1:0];
    assign _e_381 = _e_382[_e_384];
    assign _e_386 = _e_357[2];
    assign _e_387 = _e_357[1];
    assign _e_388 = _e_357[0];
    assign _e_563 = !_e_386;
    assign _e_566 = _e_563 && _e_387;
    assign _e_567 = _e_566 && _e_388;
    assign _e_391 = layer_n155[7:4];
    assign _e_393 = three_n168[1:0];
    assign _e_390 = _e_391[_e_393];
    assign _e_395 = _e_357[2];
    assign _e_396 = _e_357[1];
    assign _e_397 = _e_357[0];
    assign _e_570 = !_e_396;
    assign _e_571 = !_e_397;
    assign _e_572 = _e_395 && _e_570;
    assign _e_573 = _e_572 && _e_571;
    assign _e_400 = layer_n155[3:0];
    assign _e_402 = 0;
    assign _e_399 = _e_400[_e_402];
    assign _e_403 = _e_357[2];
    assign _e_404 = _e_357[1];
    assign _e_405 = _e_357[0];
    assign _e_576 = !_e_404;
    assign _e_578 = _e_403 && _e_576;
    assign _e_579 = _e_578 && _e_405;
    assign _e_408 = layer_n155[3:0];
    assign _e_410 = 1;
    assign _e_407 = _e_408[_e_410];
    assign _e_411 = _e_357[2];
    assign _e_412 = _e_357[1];
    assign _e_413 = _e_357[0];
    assign _e_583 = !_e_413;
    assign _e_584 = _e_411 && _e_412;
    assign _e_585 = _e_584 && _e_583;
    assign _e_416 = layer_n155[3:0];
    assign _e_418 = two_n167[1:0];
    assign _e_415 = _e_416[_e_418];
    assign _e_420 = _e_357[2];
    assign _e_421 = _e_357[1];
    assign _e_422 = _e_357[0];
    assign _e_590 = _e_420 && _e_421;
    assign _e_591 = _e_590 && _e_422;
    assign _e_425 = layer_n155[3:0];
    assign _e_427 = three_n168[1:0];
    assign _e_424 = _e_425[_e_427];
    always_comb begin
        priority casez ({_e_549, _e_555, _e_561, _e_567, _e_573, _e_579, _e_585, _e_591})
            8'b1???????: _e_431 = _e_365;
            8'b01??????: _e_431 = _e_373;
            8'b001?????: _e_431 = _e_381;
            8'b0001????: _e_431 = _e_390;
            8'b00001???: _e_431 = _e_399;
            8'b000001??: _e_431 = _e_407;
            8'b0000001?: _e_431 = _e_415;
            8'b00000001: _e_431 = _e_424;
            8'b?: _e_431 = 'x;
        endcase
    end
    assign _e_430 = {_e_431, c_n162};
    assign {c_n162_o} = _e_430_o;
    assign output__ = _e_430;
    assign _e_430_o = input__;
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
    logic clk_n170;
    assign clk_n170 = clk_i;
    logic from_layer_n171;
    assign from_layer_n171 = from_layer_i;
    logic from_previous_n172;
    assign from_previous_n172 = from_previous_i;
    logic[1:0] c_n173;
    assign c_n173 = c_i;
    logic[1:0] c_n173_o;
    assign c_o = c_n173_o;
    (* src = "src/routing.spade:44,29" *)
    logic[2:0] _e_439;
    logic[1:0] _e_439_o;
    logic _e_441;
    logic[1:0] c_n175;
    logic[1:0] c_n175_o;
    (* src = "src/routing.spade:46,18" *)
    logic _e_449;
    (* src = "src/routing.spade:52,6" *)
    logic[2:0] _e_448;
    logic[1:0] _e_448_o;
    (* src = "src/routing.spade:44,29" *)
    e_proj_config_chain_cfg_bit _e_439_i(c_n173, c_n173_o, _e_439, _e_439_o);
    assign _e_441 = _e_439[2];
    assign c_n175 = _e_439[1:0];
    assign _e_439_o[1:0] = c_n175_o;
    assign _e_449 = _e_441 ? from_previous_n172 : from_layer_n171;
    assign _e_448 = {_e_449, c_n175};
    assign {c_n175_o} = _e_448_o;
    assign output__ = _e_448;
    assign _e_448_o = input__;
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
    (* src = "src/main.spade:125,5" *)
    logic[7:0] _e_295;
    (* src = "src/main.spade:125,5" *)
    e_cell_test _e_295_i(clk_n141, inputs_unsync_n142, cfg_clk_n143, cfg_value_n144, _e_295);
    assign output__ = _e_295;
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
    logic clk_n192;
    assign clk_n192 = clk_i;
    logic[3:0] from_layer_n193;
    assign from_layer_n193 = from_layer_i;
    logic[3:0] from_previous_n194;
    assign from_previous_n194 = from_previous_i;
    logic cfg_clk_n195;
    assign cfg_clk_n195 = cfg_clk_i;
    logic cfg_value_n196;
    assign cfg_value_n196 = cfg_value_i;
    (* src = "src/routing.spade:84,16" *)
    logic _e_527;
    logic[1:0] _e_529_o;
    (* src = "src/routing.spade:82,13" *)
    logic[1:0] c_n197;
    logic[1:0] c_n197_o;
    (* src = "src/routing.spade:88,24" *)
    logic[5:0] _e_538;
    logic[1:0] _e_538_o;
    logic[3:0] _e_542;
    logic[1:0] chain_n199;
    logic[1:0] chain_n199_o;
    (* src = "src/routing.spade:89,9" *)
    logic[1:0] _e_539_o;
    logic[1:0] _e_541;
    assign _e_527 = cfg_value_n196;
    
    assign c_n197 = {cfg_clk_n195, _e_527};
    assign {_e_529_o} = c_n197_o;
    (* src = "src/routing.spade:88,24" *)
    e_proj_routing_feedback_tile _e_538_i(clk_n192, from_layer_n193, from_previous_n194, c_n197, c_n197_o, _e_538, _e_538_o);
    assign _e_542 = _e_538[5:2];
    assign chain_n199 = _e_538[1:0];
    assign _e_538_o[1:0] = chain_n199_o;
    assign chain_n199_o[1:0] = _e_539_o;
    assign _e_541 = 1;
    assign _e_539_o = _e_541;
    assign output__ = _e_542;
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
    logic _e_593;
    logic _e_594;
    logic _e_595;
    logic _e_75;
    logic _e_76;
    logic _e_597;
    logic _e_599;
    logic _e_79;
    logic _e_80;
    logic _e_602;
    logic _e_603;
    logic _e_83;
    logic _e_84;
    logic _e_607;
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
    assign _e_593 = !_e_71;
    assign _e_594 = !_e_72;
    assign _e_595 = _e_593 && _e_594;
    assign _e_75 = _e_68[1];
    assign _e_76 = _e_68[0];
    assign _e_597 = !_e_75;
    assign _e_599 = _e_597 && _e_76;
    assign _e_79 = _e_68[1];
    assign _e_80 = _e_68[0];
    assign _e_602 = !_e_80;
    assign _e_603 = _e_79 && _e_602;
    assign _e_83 = _e_68[1];
    assign _e_84 = _e_68[0];
    assign _e_607 = _e_83 && _e_84;
    always_comb begin
        priority casez ({_e_595, _e_599, _e_603, _e_607})
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
    logic clk_n145;
    assign clk_n145 = clk_i;
    logic[3:0] cell_out_n146;
    assign cell_out_n146 = cell_out_i;
    logic[3:0] feedback_n147;
    assign feedback_n147 = feedback_i;
    logic[7:0] input_layer_n148;
    assign input_layer_n148 = input_layer_i;
    logic cfg_clk_n149;
    assign cfg_clk_n149 = cfg_clk_i;
    logic cfg_value_n150;
    assign cfg_value_n150 = cfg_value_i;
    (* src = "src/main.spade:141,16" *)
    logic _e_303;
    logic[1:0] _e_305_o;
    (* src = "src/main.spade:139,13" *)
    logic[1:0] c_n151;
    logic[1:0] c_n151_o;
    (* src = "src/main.spade:145,23" *)
    logic[7:0] input_layer_n152;
    (* src = "src/main.spade:147,24" *)
    logic[5:0] _e_317;
    logic[1:0] _e_317_o;
    logic[3:0] _e_321;
    logic[1:0] chain_n154;
    logic[1:0] chain_n154_o;
    (* src = "src/main.spade:148,9" *)
    logic[1:0] _e_318_o;
    logic[1:0] _e_320;
    assign _e_303 = cfg_value_n150;
    
    assign c_n151 = {cfg_clk_n149, _e_303};
    assign {_e_305_o} = c_n151_o;
    assign input_layer_n152 = {cell_out_n146, feedback_n147};
    (* src = "src/main.spade:147,24" *)
    e_proj_main_layer _e_317_i(clk_n145, input_layer_n152, c_n151, c_n151_o, _e_317, _e_317_o);
    assign _e_321 = _e_317[5:2];
    assign chain_n154 = _e_317[1:0];
    assign _e_317_o[1:0] = chain_n154_o;
    assign chain_n154_o[1:0] = _e_318_o;
    assign _e_320 = 1;
    assign _e_318_o = _e_320;
    assign output__ = _e_321;
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