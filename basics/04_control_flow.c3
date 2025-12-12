// Control Flow in C3
// Learn about if statements, loops, and switch

module control_flow;
import std::io;

fn void main()
{
    // If-else statements
    io::printn("=== If-Else Statements ===");
    int age = 25;

    if (age >= 18)
    {
        io::printn("You are an adult");
    }
    else
    {
        io::printn("You are a minor");
    }

    // Ternary operator
    String status = age >= 21 ? "Can drink" : "Cannot drink";
    io::printfn("Status: %s", status);

    // For loop
    io::printn("\n=== For Loop ===");
    for (int i = 0; i < 5; i++)
    {
        io::printfn("Loop iteration: %d", i);
    }

    // While loop
    io::printn("\n=== While Loop ===");
    int count = 0;
    while (count < 3)
    {
        io::printfn("Count: %d", count);
        count++;
    }

    // Do-while loop
    io::printn("\n=== Do-While Loop ===");
    int num = 0;
    do
    {
        io::printfn("Number: %d", num);
        num++;
    } while (num < 3);

    // Switch statement
    io::printn("\n=== Switch Statement ===");
    int day = 3;

    switch (day)
    {
        case 1:
            io::printn("Monday");
        case 2:
            io::printn("Tuesday");
        case 3:
            io::printn("Wednesday");
        case 4:
            io::printn("Thursday");
        case 5:
            io::printn("Friday");
        default:
            io::printn("Weekend");
    }

    // Break and continue
    io::printn("\n=== Break and Continue ===");
    for (int i = 0; i < 10; i++)
    {
        if (i == 3)
        {
            continue;  // Skip 3
        }
        if (i == 7)
        {
            break;  // Stop at 7
        }
        io::printfn("i = %d", i);
    }
}
