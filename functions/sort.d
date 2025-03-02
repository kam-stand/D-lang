import std.stdio;
import std.algorithm;
import std.array;


void print_max(int* arr, size_t size)
{
    auto max = (int a, int b) => a > b ? a : b;
    int j = 1;
    for (size_t i = 0; i < size - 1; i++)
    {
        if (max(arr[j], arr[i]))
        {
            writeln("Current max: ", arr[i]);
        }

    }

    return;
}

bool bubble_sort(int* arr, size_t size)
{
    for (size_t i = 0; i < size - 1; i++)
    {
        for (size_t j = 0; j < size - i - 1; j++) // Loop should go up to size-i-1
        {
            if (arr[j] > arr[j + 1])
            {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    return true;
}

void print_even(int[] arr)
{
    auto isEven = (int a) => a % 2 == 0;
    foreach (num; arr)
    {
        if (isEven(num))
        {
            writefln("%d is even", num);
        }
    }
    return;
}

ref int[5] cube_each(ref int[5] arr)
{
    auto square = (int a) => a * a;
    auto cube = (int a) => square(a) * a;

    for (int i = 0; i < arr.length; i++)
    {
        arr[i] = cube(arr[i]);

    }

    return arr;

}

void main()
{
    int[] arr = [13, 4, 15, 6, 7, 2];
    writeln("Unsorted: ", arr);
    int* arr_ptr = arr.ptr;
    print_max(arr_ptr, arr.length);
    bool res = bubble_sort(arr_ptr, arr.length);
    writeln("Sorted: ", arr);

    auto square = (int a) => a * a;

    writeln(square(2));

    int[5] l1 = [1, 2, 3, 4, 5]; // since its a static array and the parameter for cube was a ref then by default it changes the default type. the function return can be void or a ref
    l1 = cube_each(l1);
    writeln(l1);

    print_even(arr);
    int [] numbers = [1, 2, 3, 4, 5];
    int [] mult =  numbers.map!(n => n*100).array();
    writeln(mult);
}
