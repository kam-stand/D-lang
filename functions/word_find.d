module functions.word_find;

import std.stdio;
import std.string;
import std.algorithm;
import core.stdc.stdlib : EXIT_SUCCESS, EXIT_FAILURE;

int main(string[] args)
{
    if (args.length < 3)  // Ensure file path and word are provided
    {
        writeln("USAGE: ./program <File_path> <Word>");
        return EXIT_FAILURE;
    }

    File file = File(args[1], "r");
    if (!file.isOpen())
    {
        writeln("Cannot open file: ", args[1]);
        return EXIT_FAILURE;
    }

    string word = args[2];
    writefln("File: %s, Word: %s", file.name(), word);

    int lineNumber = 1; // Line counter

    while (!file.eof)
    {
        string line = strip(file.readln()); // Read and trim whitespace
        string[] words = line.split(" ");   // Split line into words

        foreach (w; words)
        {
            if (w == word)
            {
                writeln("Found '", word, "' on line ", lineNumber);
            }
        }

        lineNumber++; 
    }

    file.close();
    return EXIT_SUCCESS;
}
