import std.stdio;

import std.conv;
import std.regex;

void main(string[] args)
{
    int count  = 0;
    File file = stdin;
    while (!(file.eof))
    {
        string line = stdin.readln();
        if (line.length > 0)
        {
            auto r = regex(r"mul\(\d+,\d+\)");
            foreach (c; matchAll(line, r))
            {
                string num = "";
                num ~= c.hit;
                import std.string;
                
                writefln("%s, %d, %d", num, indexOf(num, '('), lastIndexOf(num, ')'));
                string num1 = (num[indexOf(num, '(')+1 .. indexOf(num, ',')]);
                //writeln(parse!int(num1));
                string num2 =(num[indexOf(num, ',')+1 .. lastIndexOf(num, ')')]);
                //writeln(parse!int(num2));
                count += (parse!int(num1) * parse!int(num2));

            }
        }
    }
    writeln(count);
    file.close();
}
