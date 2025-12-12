// Exercise 02: Fibonacci Sequence
// Practice recursion and iterative solutions
//
// Problem:
// Implement two functions to calculate the nth Fibonacci number:
// 1. fibonacci_recursive - using recursion
// 2. fibonacci_iterative - using a loop
//
// Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
// Where F(n) = F(n-1) + F(n-2), with F(0) = 0 and F(1) = 1

module exercise_fibonacci;
import std::io;

// TODO: Implement recursive version
fn long fibonacci_recursive(int n)
{
    // Your code here
    // Base cases: F(0) = 0, F(1) = 1
    // Recursive case: F(n) = F(n-1) + F(n-2)
    return 0;  // Replace this
}

// TODO: Implement iterative version
fn long fibonacci_iterative(int n)
{
    // Your code here
    // Use a loop to calculate the nth Fibonacci number
    // This is more efficient than recursion
    return 0;  // Replace this
}

fn void main()
{
    io::printn("=== Fibonacci Exercise ===");

    int test_n = 10;

    io::printfn("\nFibonacci(%d) using recursion: %d",
        test_n, fibonacci_recursive(test_n));

    io::printfn("Fibonacci(%d) using iteration: %d",
        test_n, fibonacci_iterative(test_n));

    io::printn("\nFirst 10 Fibonacci numbers:");
    for (int i = 0; i < 10; i++)
    {
        io::printfn("F(%d) = %d", i, fibonacci_iterative(i));
    }
}
