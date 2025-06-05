// Write two goroutines which have a race condition when executed concurrently. Explain what the race condition is and how it can occur.

package main

import (
	"fmt"
	"time"
)

func main() {
	// Shared variable
	counter := 0

	// First goroutine increments the counter
	go func() {
		for i := 0; i < 1000; i++ {
			counter++
			time.Sleep(1 * time.Millisecond) // Simulate some work
		}
	}()

	// Second goroutine decrements the counter
	go func() {
		for i := 0; i < 1000; i++ {
			counter--
			time.Sleep(1 * time.Millisecond) // Simulate some work
		}
	}()

	// Wait for a moment to let goroutines finish
	time.Sleep(1 * time.Second)

	fmt.Println("Final counter value:", counter)
}

//The race condition occurs because both goroutines are accessing and modifying
// the shared variable `counter` concurrently without any synchronization mechanism.
// This can lead to unpredictable results, as the operations of incrementing and decrementing
// the counter may overlap, causing some updates to be lost.
// For example, if the first goroutine reads the value of `counter` and then the second goroutine
// modifies it before the first goroutine writes back its incremented value, the incremented value
// will be lost, leading to an incorrect final value of `counter`.
