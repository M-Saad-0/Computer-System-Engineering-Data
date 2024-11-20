module test_1();
	reg clk, reset, door_close, start, filled, detergent_added, cycle_timeout, drained, spin_timeout;
	wire door_lock, motor_on, fill_value_on, drain_value_on, done, soap_wash, water_wash; 
	
	automatic_washing_machine machine1(
		.clk(clk), 
		.reset(reset), 
		.door_close(door_close), 
		.start(start), 
		.filled(filled), 
		.detergent_added(detergent_added), 
		.cycle_timeout(cycle_timeout), 
		.drained(drained), 
		.spin_timeout(spin_timeout), 
		.door_lock(door_lock), 
		.motor_on(motor_on), 
		.fill_value_on(fill_value_on), 
		.drain_value_on(drain_value_on), 
		.done(done), 
		.soap_wash(soap_wash), 
		.water_wash(water_wash)
	);

	initial begin
		clk = 0;
		reset = 1;
		start = 0;
		door_close = 0;
		filled = 0;
		drained = 0;
		detergent_added = 0;
		cycle_timeout = 0;
		spin_timeout = 0;

		#5 reset = 0;
		#5 start = 1; door_close = 1;
		#10 filled = 1;
		#10 detergent_added = 1;
		#20 cycle_timeout = 1; // Wait longer before timeout
		#10 drained = 1;
		#10 spin_timeout = 1;

		// Additional tests
		// Test Case 2: Reset in middle of operation
		#20 reset = 1;
		#10 reset = 0; start = 1; door_close = 1; filled = 1; detergent_added = 1; cycle_timeout = 1; drained = 1; spin_timeout = 1;

		// Test Case 3: Start without closing the door
		#50 start = 0; reset = 1;
		#10 reset = 0;
		#5 start = 1; door_close = 0; // door is not closed
		#20 start = 0; door_close = 1; // now close the door
		#10 start = 1;

		// Test Case 4: Door opens during the cycle
		#50 reset = 1;
		#10 reset = 0; start = 1; door_close = 1; filled = 1; detergent_added = 1; cycle_timeout = 1; drained = 1; spin_timeout = 0;
		#10 door_close = 0; // Door opens unexpectedly
		#10 door_close = 1;

		// Test Case 5: Multiple cycles
		#50 reset = 1;
		#10 reset = 0; start = 1; door_close = 1;
		#10 filled = 1; detergent_added = 1;
		#20 cycle_timeout = 1;
		#10 drained = 1;
		#10 spin_timeout = 1;
		#20 start = 1; filled = 1; detergent_added = 1; cycle_timeout = 1; drained = 1; spin_timeout = 1; // Start another cycle

		#100 $finish; // End simulation after sufficient time
	end
	
	always begin
		#5 clk = ~clk;
	end
	
	initial begin
		$monitor(
			"Time=%d, Clock=%b, Reset=%b, start=%b, door_close=%b, filled=%b, detergent_added=%b, cycle_timeout=%b, drained=%b, spin_timeout=%b, door_lock=%b, motor_on=%b, fill_valve_on=%b, drain_valve_on=%b, soap_wash=%b, water_wash=%b, done=%b",
			$time, clk, reset, start, door_close, filled, detergent_added, cycle_timeout, drained, spin_timeout, door_lock, motor_on, fill_value_on, drain_value_on, soap_wash, water_wash, done
		);
	end
endmodule
