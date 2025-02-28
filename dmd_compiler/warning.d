module dmd_compiler.warning;

import std.stdio;

void main() {
    int unusedVariable; // Warning: variable is declared but never used
    int x = 42;
    int y = 0;
    auto result = x / y; // Warning: division by zero
    writeln("Result: ", result);
}

// See the warnings of the file when compiled:
/** 
 * dmd -w -wi -wo example.d

 */