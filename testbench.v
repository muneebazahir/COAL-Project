module testbench;
    reg clk = 0;
    reg reset = 1;
    reg [31:0] forced_pc = 0;
    reg force_pc = 0;
    wire [31:0] pc_out;

    // Instantiate UPDATED CPU module (renamed to main_cpu)
    main_cpu cpu(
        .clk(clk),
        .reset(reset),
        .force_pc(force_pc),
        .forced_pc(forced_pc),
        .pc_out(pc_out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, testbench);

        reset = 1;
        #20 reset = 0;

        $display("=== ADD Phase ===");
        #40;

        $display("=== AND Phase ===");
        force_pc = 1;
        forced_pc = 32'h00000008;
        @(posedge clk);
        force_pc = 0;
        #40;

        $display("=== SUB Phase ===");
        force_pc = 1;
        forced_pc = 32'h00000004;
        @(posedge clk);
        force_pc = 0;
        #40;

        $display("=== Test Finished ===");
        $finish;
    end
endmodule

