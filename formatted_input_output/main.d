
import std.stdio;

int main(string[] args)
{
    writeln("Please enter year month day in the following format yyyy.mm.dd ");
    int day, year, month;
    readf("%d.%d.%d", &year, &month, &day);
    writeln(month);

    return 0;
}