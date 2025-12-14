// Variables - Janus

module variables;
import std::io;

fn void main() {
  
  // ints
  int x = 42;
  long y = 100000;
  short z = 100;

  // uint
  uint pos = 42;

  // floats
  float pi = 3.14159;
  double pi_fly = 3.1415265359;

  // bool
  bool is_learning = true;

  // char
  char letter = 'C';

  // string (char*)
  String msg = "C3 peak!";

  // prints
  io::printfn("Integer: %d", x);
  io::printfn("Long: %d", y);
  io::printfn("Float: %.2f", pi);
  io::printfn("Double: %.5f", pi_fly);
  io::printfn("Boolean: %s", is_learning ? "true" : "false");
  io::printfn("Character: %c", letter);
  io::printfn("String: %s", msg);

  // Constants
  const int MAX_SIZE = 100;
  io::printfn("\nConstant MAX_SIZE: %d", MAX_SIZE);
}
