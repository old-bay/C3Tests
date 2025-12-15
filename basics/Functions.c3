// Function - Janus

module functions;
import std::io;

// no params
fn void greet() {
  io::printn("Greetings!");
}

// params and return
fn int add(int a, int b) {
  return a + b;
}

// multi-return out params, pointer manipulation
fn int multiply_and_divide(int a, int b, int* quotient) {
  *quotient = a / b;
  return a * b;
}

// error
fn int safe_divide(int a, int b) {
  if(b == 0) {
    io::printn("Error: Division by zero!");
    return IoError.UNEXPECTED_EOF?;
  }
  return a / b;
}

