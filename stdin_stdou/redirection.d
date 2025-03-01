module stdin_stdou.redirection;

import std.stdio;
import std.string;

void main()
{
    // Read all lines from stdin and process them
    string line;
    while ((line = readln()) !is null)
    {
        // Strip newline character
        line = line.chomp();
        writeln("redirection.d received: ", line);
    }
}
