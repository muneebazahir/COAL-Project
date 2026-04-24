module regFile(
    input clk,             // declaring clk signal
    input reset,            // declaring reset signal
    input writeEnable,         // write_enable declaration
    input [31:0] dataIn,    // 32-bit input variable. this value will be written in the register when write_en is active.
    output reg[31:0] r0,    // 32-bit output reg 
    output reg[31:0] r1,    // 32-bit output reg 
    output reg[31:0] accum    // 32-bit output reg 
);
    always @(posedge clk or posedge reset) //sensitive to the psoitive edge of cl or reset
begin       
        if (reset) // if reset is 1
	  begin      
            r0 <= 32'b0;    // assign all 32 bits zero
            r1 <= 32'b0;
            accum <= 32'b0;
        end
        else if (writeEnable)  // if write_enable is 1
	  begin   
            accum<=dataIn;  // Always write ALU result to ACC
        end
    end
endmodule

