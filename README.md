# C3 Learning Repository

Welcome to your C3 learning repository! This is a hands-on environment for learning C3, a modern evolution of the C programming language.

## What is C3?

C3 is a systems programming language that builds on C's foundation while adding modern features and improved safety. It aims to be:
- **Familiar**: If you know C, C3 will feel natural
- **Modern**: Includes features like modules, error handling, and better type safety
- **Fast**: Compiles to efficient machine code like C
- **Safe**: Reduces common C pitfalls while maintaining low-level control

## Getting Started

### Installing C3

Visit the official C3 website for installation instructions:
- Official site: https://c3-lang.org/
- GitHub: https://github.com/c3lang/c3c

### Repository Structure

```
C3Tests/
├── basics/          # Fundamental C3 concepts
├── examples/        # Practical examples
├── exercises/       # Practice problems
└── README.md        # This file
```

## Learning Path

### 1. Basics
Start with the `basics/` directory to learn:
- Hello World
- Variables and types
- Functions
- Control flow
- Arrays and slices

### 2. Examples
Explore `examples/` for practical code:
- String manipulation
- File I/O
- Data structures
- Error handling

### 3. Exercises
Practice with `exercises/` to reinforce learning:
- Solve programming challenges
- Implement common algorithms
- Build small projects

## Building and Running C3 Code

### Compile a single file:
```bash
c3c compile <filename>.c3
```

### Run a C3 file:
```bash
c3c run <filename>.c3
```

### Build a project:
```bash
c3c build
```

## Key C3 Concepts

### Modules
C3 uses modules instead of header files:
```c3
module myapp;
```

### Error Handling
C3 has built-in error handling with `!` syntax:
```c3
fn int! divide(int a, int b) {
    if (b == 0) return MathError.DIVISION_BY_ZERO?;
    return a / b;
}
```

### Types
C3 improves on C's type system:
- `isize`/`usize` for pointer-sized integers
- Better array handling
- Distinct types for improved safety

## Resources

- [Official C3 Documentation](https://c3-lang.org/guide/getting-started/)
- [C3 Language Guide](https://c3-lang.org/guide/)
- [C3 Standard Library](https://c3-lang.org/stdlib/)
- [C3 Community Discord](https://discord.gg/qN76R87)

## Tips for Learning

1. **Start small**: Begin with simple programs in `basics/`
2. **Experiment**: Modify examples and see what happens
3. **Read error messages**: C3's compiler provides helpful feedback
4. **Compare with C**: Notice what's different and improved
5. **Practice regularly**: Work through exercises consistently

## Contributing

Feel free to add your own examples and exercises as you learn!

Happy coding! 🚀
