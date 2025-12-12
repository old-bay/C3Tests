// Arrays and Slices in C3
// Learn about fixed arrays and dynamic slices

module arrays;
import std::io;

fn void main()
{
    // Fixed-size array
    io::printn("=== Fixed Arrays ===");
    int[5] numbers = { 10, 20, 30, 40, 50 };

    // Access array elements
    io::printfn("First element: %d", numbers[0]);
    io::printfn("Third element: %d", numbers[2]);

    // Get array length
    io::printfn("Array length: %d", numbers.len);

    // Iterate through array
    io::printn("\nAll elements:");
    for (int i = 0; i < numbers.len; i++)
    {
        io::printfn("  numbers[%d] = %d", i, numbers[i]);
    }

    // Foreach loop (C3 style)
    io::printn("\nUsing foreach:");
    foreach (int i, num : numbers)
    {
        io::printfn("  Index %d: %d", i, num);
    }

    // Multi-dimensional array
    io::printn("\n=== Multi-dimensional Arrays ===");
    int[3][3] matrix = {
        { 1, 2, 3 },
        { 4, 5, 6 },
        { 7, 8, 9 }
    };

    io::printn("Matrix:");
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            io::printf("%d ", matrix[i][j]);
        }
        io::printn("");
    }

    // Array initialization
    io::printn("\n=== Array Initialization ===");
    int[10] zeros;  // Uninitialized
    int[5] ones = { [0..4] = 1 };  // Initialize all to 1

    io::printn("Ones array:");
    foreach (val : ones)
    {
        io::printf("%d ", val);
    }
    io::printn("");

    // Character arrays (strings)
    io::printn("\n=== Character Arrays ===");
    char[20] greeting = "Hello, C3!";
    io::printfn("Greeting: %s", &greeting);
}
