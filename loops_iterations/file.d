import std.stdio;
import std.string;

void main(string[] args)
{
    if (args.length < 2)
    {
        writeln("Please provide a file name");
        return;
    }

    string file_name = args[1];
    file_name = file_name.strip();
    writeln("The file name is: ", file_name);
    long file_extension = std.string.lastIndexOf(file_name, ".");
    writeln("The file extension is: ", file_name[file_extension + 1 .. $]);

}
