// Simple Calculator in C3
// Demonstrates error handling and user input

module calculator;
import std::io;

fault MathError
{
    DIVISION_BY_ZERO,
    INVALID_OPERATION
}

fn double! add(double a, double b)
{
    return a + b;
}

fn double! subtract(double a, double b)
{
    return a - b;
}

fn double! multiply(double a, double b)
{
    return a * b;
}

fn double! divide(double a, double b)
{
    if (b == 0.0)
    {
        return MathError.DIVISION_BY_ZERO?;
    }
    return a / b;
}

fn void main()
{
    io::printn("=== C3 Calculator ===");
    io::printn("This calculator demonstrates error handling");

    double x = 10.0;
    double y = 5.0;

    io::printfn("\nNumber 1: %.2f", x);
    io::printfn("Number 2: %.2f", y);

    // Perform operations with error handling
    if (catch result = add(x, y))
    {
        io::printfn("\nAddition: %.2f + %.2f = %.2f", x, y, result);
    }

    if (catch result = subtract(x, y))
    {
        io::printfn("Subtraction: %.2f - %.2f = %.2f", x, y, result);
    }

    if (catch result = multiply(x, y))
    {
        io::printfn("Multiplication: %.2f * %.2f = %.2f", x, y, result);
    }

    if (catch result = divide(x, y))
    {
        io::printfn("Division: %.2f / %.2f = %.2f", x, y, result);
    }

    // Try division by zero
    io::printn("\nTrying to divide by zero...");
    if (catch result = divide(x, 0.0))
    {
        io::printfn("Result: %.2f", result);
    }
    else
    {
        io::printn("Error: Cannot divide by zero!");
    }
}
