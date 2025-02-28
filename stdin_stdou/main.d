module stdin_stdou.main;
import std.stdio;
import std.algorithm;

void print_hello_world()
{
    string str = "Hello world from different fucntion\n";
    stdout.write(str);

}

void main()

{
    stdout.writeln("Hello world");
    print_hello_world();

    // user input using stdin from readf and scanf
    stdout.write("Please enter the number of students in your class room");
    writeln();
    int num_students = 0;
    readf("%s\n", &num_students);
    writeln("The number of studetsn are: ", num_students);
    int[2] array;
    int index = 0;
    stdout.writeln("Please enter array value 1");
    readf("%d\n", &array[index++]);
    stdout.writeln("Please enter array value 2");
    readf("%d\n", &array[index]);
    writeln("arr[0] = ", array[0], "\n", "arr[1] = ", array[1]);

    // if you enter a character it will be an error as the format was "%d" not "%c"
    // See the error message below
    /** 
     * std.conv.ConvException@/usr/include/dlang/dmd/std/conv.d(2535): Unexpected 'k' when converting from type LockingTextReader to type int
----------------
??:? int std.conv.parse!(int, std.stdio.LockingTextReader, 0).parse(scope ref std.stdio.LockingTextReader) [0x45da6a]
??:? int std.conv.parse!(int, std.stdio.LockingTextReader, 0).parse(ref std.stdio.LockingTextReader, uint) [0x45d6e9]
??:? int std.format.internal.read.unformatValueImpl!(int, std.stdio.LockingTextReader, char).unformatValueImpl(ref std.stdio.LockingTextReader, scope ref const(std.format.spec.FormatSpec!(char).FormatSpec)) [0x45cfb0]
??:? int std.format.read.unformatValue!(int, std.stdio.LockingTextReader, char).unformatValue(ref std.stdio.LockingTextReader, scope ref const(std.format.spec.FormatSpec!(char).FormatSpec)) [0x45ce90]
??:? uint std.format.read.formattedRead!(std.stdio.LockingTextReader, char, int*).formattedRead(ref std.stdio.LockingTextReader, const(char)[], ref int*) [0x4580a8]
??:? uint std.stdio.File.readf!(int*).readf(scope const(char)[], ref int*) [0x457ffe]
??:? uint std.stdio.readf!(int*).readf(scope const(char)[], int*) [0x457f60]
??:? _Dmain [0x455a50]
     */
}
