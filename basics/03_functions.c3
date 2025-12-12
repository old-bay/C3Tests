// Functions in C3
// Learn how to define and use functions

module functions;
import std::io;

// Simple function with no parameters
fn void greet()
{
    io::printn("Hello from a function!");
}

// Function with parameters and return value
fn int add(int a, int b)
{
    return a + b;
}

// Function with multiple return values (using out parameters)
fn int multiply_and_divide(int a, int b, int* quotient)
{
    *quotient = a / b;
    return a * b;
}

// Function that can return an error
fn int! safe_divide(int a, int b)
{
    if (b == 0)
    {
        io::printn("Error: Division by zero!");
        return IoError.UNEXPECTED_EOF?;  // Return an error
    }
    return a / b;
}

// Function with default parameter (macro-like feature)
macro square(x)
{
    return x * x;
}

fn void main()
{
    // Call simple function
    greet();

    // Call function with parameters
    int sum = add(5, 3);
    io::printfn("\n5 + 3 = %d", sum);

    // Call function with output parameter
    int quotient;
    int product = multiply_and_divide(20, 4, &quotient);
    io::printfn("20 * 4 = %d, 20 / 4 = %d", product, quotient);

    // Call function that can fail
    if (catch result = safe_divide(10, 2))
    {
        io::printfn("\n10 / 2 = %d", result);
    }

    // This would fail
    if (catch err = safe_divide(10, 0))
    {
        io::printn("This won't print");
    }
    else
    {
        io::printn("Division by zero was caught!");
    }

    // Use macro
    int squared = square(7);
    io::printfn("\n7 squared = %d", squared);
}
