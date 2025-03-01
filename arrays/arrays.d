import std.stdio;

void print_dynamic_array(int[] arr)
{
    writeln("Array length: ", arr.length);
    for (size_t i = 0; i < arr.length; i++)
    {
        writeln("Element at index ", i, " is: ", arr[i]);
    }

}

void print_static_array(int[] arr, size_t length) // the argument for the arr is the same as static is pass by value therefore we need to pass a dynamic array argument to the function
{
    writeln("Array length: ", length);
    for (size_t i = 0; i < length; i++)
    {
        writeln("Element at index ", i, " is: ", arr[i]);
    }

}

bool sort_array(int* arr, size_t size)
{
    if (size == 0 || size == 1)
    {
        return false;
    }
    for (size_t i = 0; i < size; i++)
    {
        for (size_t j = i + 1; j < size; j++)
        {
            if (arr[i] > arr[j])
            {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
    return true;
}

void ask_array()
{
    size_t length = 0;
    writeln("Enter the length of the array: ");
    readf("%d\n", &length);

    int[] array = new int[length];

    for (size_t i = 0; i < length; i++)
    {
        writeln("Enter the element: ");
        readf("%d\n", &array[i]);
    }

    writeln("Array before sorting: ");
    print_dynamic_array(array);

    if (sort_array(array.ptr, length))
    {
        writeln("Array after sorting: ");
        print_dynamic_array(array);
    }
    else
    {
        writeln("Array is already sorted");
    }
}

bool append_value(int* arr, size_t size, int value, int index)
{
    if (cast(size_t) index > size)
    {
        return false;
    }
    // appending value to the index of that array
    for (size_t i = 0; i < size; i++)
    {
        if (i == index)
        {
            arr[i] += value;
        }
    }
    return true;

}

bool reverse_array(int* arr, size_t size)
{
    if (size == 0 || size == 1)
    {
        return false;
    }
    for (size_t i = 0; i < size / 2; i++)
    {
        int temp = arr[i];
        arr[i] = arr[size - i - 1];
        arr[size - i - 1] = temp;
    }
    return true;
}

void print_odd_nums()
{
    // need to use a dynamic array as we do not know the size of the array
    int[] odd_nums;
    int stop = 0;
    while (stop == 0)
    {
        int num = 0;
        writeln("Enter a number: ");
        readf("%d\n", &num);
        if (num == -1)
        {
            stop = 1;
        }
        else if (num % 2 != 0)
        {
            odd_nums ~= num;
        }
    }
    writeln("Odd numbers are: ");
    for (size_t i = 0; i < odd_nums.length; i++)
    {
        writeln(odd_nums[i]);
    }
    return;
}

void fix()
{
    int[5] squares;

    writeln("Please enter 5 numbers");

    int i = 0;
    while (i < 5) // both while loops need to be less than 5
    {
        int number;
        write("Number ", i + 1, ": ");
        readf(" %s", &number);

        squares[i] = (number * number);
        i++;
    }

    writeln("=== The squares of the numbers ===");
    i = 0; // need to reset the value of i
    while (i < squares.length)
    {
        writeln(squares[i]);
        i++;
    }

}

void main()
{

    print_odd_nums();
    int[] dynamic_array = [1, 2, 3, 4, 5];
    print_dynamic_array(dynamic_array);

    int[5] static_array = [5, 4, 3, 2, 1];
    print_static_array(static_array, 5);

    writeln("Appending a value to the array: ");
    int[2] static_array2 = [1, 2];
    int* ptr_arry = static_array2.ptr;
    if (append_value(ptr_arry, 2, 3, 1))
    {
        writeln("Value appended successfully");
    }
    else
    {
        writeln("Value could not be appended");
    }

    print_static_array(static_array2, 2);

    writeln("Sorting an array: ");
    ask_array();

    writeln("Reversing an array: ");
    int[5] static_array3 = [1, 2, 3, 4, 5];
    int* ptr_array = static_array3.ptr;
    if (reverse_array(ptr_array, 5))
    {
        writeln("Array reversed successfully");
    }
    else
    {
        writeln("Array could not be reversed");
    }
    print_static_array(static_array3, 5);
    return;
}
