
module gray_counter_3bit (
    input C, // 1-bit clock input (positive edge-triggered)
    input R, // 1-bit reset (positive edge-triggered)
    output reg [2:0] OUT // 3-bit result
);
    reg [2:0] count; // Internal counter

    always @(posedge C or posedge R)
    begin
        if (R) // Reset condition
            count <= 3'b000;
        else
            count <= count + 1; // Increment the counter
    end

    // Gray code conversion
    assign OUT[2] = count[2];
    assign OUT[1] = count[2] ^ count[1];
    assign OUT[0] = count[1] ^ count[0];
endmodule
