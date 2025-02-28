module variables.main;

import std.stdio;


void main()
{
    double euros = 20.0;

    double exchange_rate = 2.11;

    writeln("I have exchanged ",
        euros,
        " Euros for the rate of ",
        exchange_rate);

    int a = 12;
    int b = 13;
    writeln("a = ", a, "\n", "b = ", b);
    a =  a ^ b;
    b = a ^ b;
    a = a ^ b;
    writeln("Swapping variables: using bitwise operations");

    writeln("a = ", a, "\n", "b = ", b);
}
