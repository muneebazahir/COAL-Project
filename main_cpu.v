module main_cpu(
    input clk,
    input reset,
    input force_pc,
    input [31:0] forced_pc,
    output [31:0] pc_out
);
    reg [31:0] pc = 32'b0;
    assign pc_out = pc;

    wire [31:0] instruction;
    wire [2:0] alu_op;
    wire reg_write;
    wire [31:0] r0, r1, acc;
    wire [31:0] alu_result;

    instruction_mem imem(.pc(pc), .instruction(instruction));
    control_unit ctrl(.opcode(instruction[31:26]), .alu_op(alu_op), .reg_write(reg_write));
    reg_file rf(
        .clk(clk),
        .reset(reset),
        .write_en(reg_write),
        .data_in(alu_result),
        .r0(r0),
        .r1(r1),
        .acc(acc)
    );
    alu alu_unit(.a(r0), .b(r1), .opcode(alu_op), .result(alu_result));

    always @(posedge clk or posedge reset) begin
        if (reset)
            pc <= 32'b0;
        else if (force_pc)
            pc <= forced_pc;
        else
            pc <= pc + 4;
    end
endmodule

