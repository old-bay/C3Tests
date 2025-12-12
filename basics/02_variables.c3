// Variables and Types in C3
// Learn about C3's type system and variable declarations

module variables;
import std::io;

fn void main()
{
    // Integer types
    int x = 42;
    long y = 1000000;
    short z = 100;

    // Unsigned integers
    uint positive = 42;

    // Platform-dependent sizes
    isize pointer_sized_int = 64;
    usize unsigned_size = 128;

    // Floating point
    float pi = 3.14159;
    double precise_pi = 3.14159265359;

    // Boolean
    bool is_learning = true;

    // Character
    char letter = 'C';

    // String (pointer to char)
    String message = "C3 is awesome!";

    // Print all variables
    io::printfn("Integer: %d", x);
    io::printfn("Long: %d", y);
    io::printfn("Float: %.2f", pi);
    io::printfn("Double: %.5f", precise_pi);
    io::printfn("Boolean: %s", is_learning ? "true" : "false");
    io::printfn("Character: %c", letter);
    io::printfn("String: %s", message);

    // Type inference with var
    var auto_int = 123;  // Inferred as int
    var auto_string = "Auto!";  // Inferred as String

    io::printfn("\nAuto int: %d", auto_int);
    io::printfn("Auto string: %s", auto_string);

    // Constants
    const int MAX_SIZE = 100;
    io::printfn("\nConstant MAX_SIZE: %d", MAX_SIZE);
}
