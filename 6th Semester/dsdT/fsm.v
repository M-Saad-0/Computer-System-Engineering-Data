task-1



module traffic_light_fsm (
    input clk,
    input reset,
    input [3:0] t, // 4-bit input for the time
    output reg [1:0] state,
    output reg [2:0] color // 3-bit color code: 100 for RED, 010 for YELLOW, 001 for GREEN
);

    // State encoding
    parameter S0 = 2'b00; // RED
    parameter S1 = 2'b01; // YELLOW
    parameter S2 = 2'b10; // GREEN

    // State transition logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S0; // Start at RED
            color <= 3'b100; // RED
        end else begin
            case (state)
                S0: // RED state
                    if (t == 4'b1010) begin // Check if t=10
                        state <= S1; // Move to YELLOW
                        color <= 3'b010; // YELLOW
                    end
                S1: // YELLOW state
                    if (t == 4'b1010) begin
                        state <= S2; // Move to GREEN
                        color <= 3'b001; // GREEN
                    end
                S2: // GREEN state
                    if (t == 4'b1010) begin
                        state <= S0; // Move back to RED
                        color <= 3'b100; // RED
                    end
                default: // Default case
                    state <= S0;
            endcase
        end
    end

    // Self-loop when t<10
    always @(t) begin
        if(t < 4'b1010) begin
            // Stay in the current state
        end
    end

endmodule








//task-2

module TrafficLightController (
    input wire clk,     // Clock signal
    input wire rst,     // Reset signal
    input wire vehicle, // Vehicle presence signal
    output reg [1:0] highwaySignal, // Highway signal (2-bit)
    output reg [1:0] farmSignal     // Farm road signal (2-bit)
);

    // Define states
    reg [2:0] state;
    parameter Green_Highway = 3'b001;
    parameter Yellow_Highway = 3'b010;
    parameter Red_Highway = 3'b100;
    parameter Green_Farm = 3'b001;
    parameter Yellow_Farm = 3'b010;
    parameter Red_Farm = 3'b100;

    // Initialize state
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= Green_Highway;
        end else begin
            case (state)
                Green_Highway:
                    if (vehicle) state <= Yellow_Highway;
                Yellow_Highway:
                    state <= Red_Highway;
                Red_Highway:
                    state <= Green_Farm;
                Green_Farm:
                    state <= Yellow_Farm;
                Yellow_Farm:
                    state <= Red_Farm;
                Red_Farm:
                    state <= Green_Highway;
            endcase
        end
    end

    // Output signals based on state
    always @(state) begin
        case (state)
            Green_Highway:
                begin
                    highwaySignal = 2'b01; // Green
                    farmSignal = 2'b00;    // Red
                end
            Yellow_Highway:
                begin
                    highwaySignal = 2'b10; // Yellow
                    farmSignal = 2'b00;    // Red
                end
            Red_Highway:
                begin
                    highwaySignal = 2'b00; // Red
                    farmSignal = 2'b01;    // Green
                end
            Green_Farm:
                begin
                    highwaySignal = 2'b00; // Red
                    farmSignal = 2'b01;    // Green
                end
            Yellow_Farm:
                begin
                    highwaySignal = 2'b00; // Red
                    farmSignal = 2'b10;    // Yellow
                end
            Red_Farm:
                begin
                    highwaySignal = 2'b01; // Green
                    farmSignal = 2'b00;    // Red
                end
        endcase
    end

endmodule



