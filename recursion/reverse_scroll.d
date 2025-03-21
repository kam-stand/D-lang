import std.stdio;

string reverseScroll(string str)
{
    if (str.length == 0)
    {
        return "";
    }
    return str[$-1] ~ reverseScroll(str[0 .. $-1]);
}

void main()
{
    string str = "kam";
    writeln(reverseScroll(str)); // Output: "mak"
}
