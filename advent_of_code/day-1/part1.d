import std.stdio;
import std.string;
import std.conv;
import std.algorithm;
import std.range;
import std.math;


void main(string[] args)
{
    int count = 0;
    int[] left;
    int[] right;
    File file = stdin;
    while(!(file.eof))
    {
        string line = strip(stdin.readln());
        string[] line_split = line.split(" ");
        if (line_split.length  > 0 && line_split[0].length > 0)
        {
            left ~= parse!int(line_split[0]);
            right ~= parse!int(line_split[$-1]);
        }
    }
  
    left.sort!("a < b");
    right.sort!("a < b");

    foreach (l, r; zip(left, right))
    {
        count += abs(l - r);
    }
    writeln(count);
    file.close();
}
