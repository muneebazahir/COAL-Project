module dataMemory(
    input clk,
    input[31:0] addres,
    input[31:0] dataIn,
    input writeEnable,
    output[31:0] dataOut
);
    reg[31:0]Memory[0:255];
    
    always @(posedge clk) 
      begin
        if(writeEnable)
            Memory[addres[7:0]>>2]<=dataIn;
      end
    assign dataOut = Memory[addres[7:0]>>2];
endmodule

