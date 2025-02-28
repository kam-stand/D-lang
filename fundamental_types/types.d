module fundamental_types.types;

import std.stdio;

void bits()
{
    writeln("1 byte: 8 bits");
    writeln("The smalles unit of value represented is a byte");
}

void print_type_byte()
{
    writeln("The type of byte: ", byte.stringof);

    writeln("How many bytes are in a byte?: ", byte.sizeof);
    bits();

    writeln("The min size of byte: ", byte.min);

    writeln("The max of byte: ", byte.max);

    writeln("The initial value of byte: ", byte.init);

    return;

}

void print_type_double()
{
    writeln("The type of double: ", double.stringof); // double

    writeln("How many bytes are in a double?: ", double.sizeof); // 64 bits -> 1 byte = 8 bits -> 64 / 8 = 8?

    // writeln("The min size of double: ", double.min); // cannot print min or max because its floating point

    // writeln("The max of double: ", double.max);

    writeln("The initial value of double: ", double.init);

    return;


}



void main()
{
    print_type_byte();
    writeln("==================");
    print_type_double();
}
