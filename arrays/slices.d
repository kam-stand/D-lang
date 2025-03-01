import std.stdio;

void main()
{
    double[] array = [1, 20, 2, 30, 7, 11]; // this is a slice aka dynamic array
    writeln(array);
    for (size_t i = 0; i < array.length; i++)
    {
        if (array[i] > 10)
        {
            array[i] /= 2; // changing the value of the element
            array = array[0 .. i] ~ array[i .. $]; // adding the element to the end of the array
        }
    }
    writeln(array);

    // slicing with [from .. to] is just concatenation of two array [0 - ) inclusive range of indexes 
    // $ == array.length
    // array[0 .. 3] == array[0 .. 3] ~ array[3 .. $]

    writeln(array[0 .. 3]);
    writeln(array[3 .. $]);
    writeln(array[0 .. $]);


    int [3] stat = [0,1, 2];
    int [] stat_slice = stat;
    writeln(stat.length is stat_slice.length);
    writeln(stat_slice.ptr+stat_slice.length is stat.ptr + stat.length);

}
