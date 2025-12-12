// Exercise 01: FizzBuzz
// Classic programming challenge to practice loops and conditionals
//
// Problem:
// Print numbers from 1 to n, but:
// - For multiples of 3, print "Fizz" instead
// - For multiples of 5, print "Buzz" instead
// - For multiples of both 3 and 5, print "FizzBuzz"
//
// Example output for n = 15:
// 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

module exercise_fizzbuzz;
import std::io;

// TODO: Implement this function
fn void fizzbuzz(int n)
{
    // Your code here
    // Hint: Use a for loop and if-else statements
    // Check for divisibility using the modulo operator (%)
}

fn void main()
{
    io::printn("=== FizzBuzz Exercise ===");
    io::printn("Output for n = 20:\n");

    fizzbuzz(20);

    io::printn("\nIf you see the correct pattern above, you've solved it!");
}
