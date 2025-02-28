import std.stdio;
import std.string;

void main()
{

    File file = File("./file.txt", "r+"); // file.txt is the file to be read
    File new_file = File("./new_file.txt", "w"); // new_file.txt is the file to be written to

    if (file.error())
    {
        writeln("Error opening file");
        return;
    }

    while (!file.eof()) // loop through the file
    {
        string line = strip(file.readln()); // read the line and remove any leading or trailing whitespaces
        string append = "- [ ] "; // create string to append to the line
        string new_line = append ~ line; // append the string to the line
        writeln(new_line);
        new_file.writeln(new_line); // write the new line to the new file

    }
    // close files
    file.close();
    new_file.close();
    return;
}
