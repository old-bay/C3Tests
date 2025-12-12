// Structs and Methods in C3
// Demonstrates C3's struct system and associated functions

module struct_example;
import std::io;

// Define a struct
struct Person
{
    String name;
    int age;
    double height;
}

// Method for Person struct
fn void Person.print(&self)
{
    io::printfn("Name: %s", self.name);
    io::printfn("Age: %d", self.age);
    io::printfn("Height: %.2f meters", self.height);
}

// Constructor-like function
fn Person Person.create(String name, int age, double height)
{
    Person p;
    p.name = name;
    p.age = age;
    p.height = height;
    return p;
}

// Method to check if adult
fn bool Person.is_adult(&self)
{
    return self.age >= 18;
}

// Struct with nested struct
struct Address
{
    String street;
    String city;
    int zip_code;
}

struct Employee
{
    Person person;
    Address address;
    String job_title;
    double salary;
}

fn void Employee.print(&self)
{
    io::printn("=== Employee Information ===");
    self.person.print();
    io::printfn("Job: %s", self.job_title);
    io::printfn("Salary: $%.2f", self.salary);
    io::printfn("Address: %s, %s %d",
        self.address.street,
        self.address.city,
        self.address.zip_code);
}

fn void main()
{
    // Create a Person
    io::printn("=== Person Example ===");
    Person alice = Person.create("Alice", 25, 1.65);
    alice.print();
    io::printfn("Is adult: %s", alice.is_adult() ? "Yes" : "No");

    // Create another Person
    io::printn("\n=== Another Person ===");
    Person bob = {
        .name = "Bob",
        .age = 16,
        .height = 1.70
    };
    bob.print();
    io::printfn("Is adult: %s", bob.is_adult() ? "Yes" : "No");

    // Create an Employee
    io::printn("\n=== Employee Example ===");
    Employee emp = {
        .person = Person.create("Charlie", 30, 1.80),
        .address = {
            .street = "123 Main St",
            .city = "Tech City",
            .zip_code = 12345
        },
        .job_title = "Software Engineer",
        .salary = 75000.0
    };
    emp.print();
}
