import std.stdio;

struct MyStruct
{
    int a;
    int b;

}

struct MyStruct2
{
    float a;
    float b;

}

void main()
{
    MyStruct s = {1, 2};
    writeln(s);

    auto s2 = MyStruct(3, 4);
    writeln(s2);

    typeof(s) s3 = {5, 6};
    writeln(s3);

    /** 
     *  Write a program to determine the type of floating point literals like 1.2. typeof and .stringof would be useful in this program. 
     */
    typeof(1.2) f = 1.2;
    writeln(f);
    writeln(f.stringof);

    auto dif_struct = MyStruct2(1, 2);
    if (is(typeof(dif_struct) == MyStruct2))
    {
        writeln("dif_struct is MyStruct2");
    }
    else
    {
        writeln("dif_struct is not MyStruct2");
    }

    // lets see if struct2 is MyStruct

}
