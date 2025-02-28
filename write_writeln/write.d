import std.stdio;

void foo()
{
    std.stdio.write("My name is: ", "Kamrul\n");
    // have to manually add the \n for the new line character 
}

void main() {

    // std.stdio.write("No new line");
    // writeln("Kamrul Hassan"); 

    // Printint with no spave between words or sentences
    writeln("Hello, World!", "Hello, fish!");
    // Printing WITH space in between
    writeln("Hello, World!", " ", "Hello, fish!");
    // printin with space using write
    std.stdio.write("Hello, ");
    std.stdio.write("World!\n");

    // calling write with more than one parameter
    foo();
}

// cannot use write line as is must use std.stdio.write(...)