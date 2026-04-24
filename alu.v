module alu(
    input [31:0] a, b,
    input [2:0] opcode,
    output reg [31:0] result
);
    always @(*) 
    begin
        case(opcode)
            3'b000: result=a+b;  //perform addition
            3'b001: result= a-b;  // perform subttraction
            3'b010: result=a&b;  // perform and operation
            default: result=32'b0;
        endcase
    end
endmodule
