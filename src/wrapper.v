module thezoq2_yafpga (
    input [7:0] io_in,
    output [7:0] io_out
    );

    e_main main
        ( .clk_i(io_in[0])
        , .inputs_unsync_i(io_in[4:1])
        , .cfg_value_i(io_in[5])
        , .cfg_clk_i(io_in[6])
        , .output__(io_out)
        );
endmodule
