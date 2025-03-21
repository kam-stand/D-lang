import std.stdio;


void main()
{
    writeln(doublePower(5, 3));
    writeln(doublePower(7, 2));

}


int doublePower(int initialPower, int n)
{
    if (n == 1)
    {
        return initialPower * 2;
    }

    return 2 * doublePower(initialPower, n-1);
}