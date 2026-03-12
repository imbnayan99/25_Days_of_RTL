`timescale 1ns / 1ps

module bcd_counter(
    input clock,
    input clear,
    output reg [3:0] count
);

always @(posedge clock)
begin
    if (clear)
        count <= 4'b0000;        // Reset counter
    else if (count == 4'b1001)   // If count = 9
        count <= 4'b0000;        // Reset to 0
    else
        count <= count + 1;      // Increment
end

endmodule
