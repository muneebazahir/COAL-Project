module instructionMemory(
    input[31:0] pc,   // serve as address to read instructions from memory
    output reg[31:0] instruction      //will hold the pc's fetched instruction
);
    (* ramStyle = "block" *) reg[31:0] Memory[0:255];

//"ramStyle="block"... it is a hint to synthesis tools that memory should be implemented using dedicated block RAM"

    integer i;
    initial 
begin
        for(i=0;i< 256;i=i+1)
            Memory[i] = 32'b0;

        // Format: opcode[31:26],src1[25:21],src2[20:16] dest[15:11] unused[10:0]
        // Using your new format:dest=00010(ACC)
        Memory[0]={6'b000000,5'd0,5'd1,5'd2,11'd0};         // ADD R0, R1 -> ACC
        Memory[1]={6'b000001,5'd0,5'd1,5'd2,11'd0};         // SUB R0, R1 -> ACC
        Memory[2]={6'b000010,5'd0,5'd1,5'd2,11'd0};         // AND R0, R1 -> ACC

        $display("Instruction Memory Initialized:");
        $display("Memory[0] = %b", Memory[0]);
        $display("Memory[1] = %b", Memory[1]);
        $display("Memory[2] = %b", Memory[2]);
    end

    always @(*) begin
        instruction = Memory[pc[9:2]];
    end
endmodule

