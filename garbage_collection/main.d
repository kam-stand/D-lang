import core.memory;
import std.stdio;
import core.stdc.stdlib;
import std.math;

enum length = 5;

void main()
{
    int *arr = cast(int *)malloc(int.sizeof * length);

    int[] slice = arr[0 .. length];
    for (int i = 0; i < length; i++)
    {
        slice[i] = rand();
    }

    foreach (num; slice)
    {
        writeln(num);
    }


}
