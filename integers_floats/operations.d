import std.stdio;

void main()
{
    int[10] arr; // static array
    int index = 0; // starting position
    writeln("Using post incement to manually add numbers into a static array of ints");

    while (index != arr.length)
    {
        writeln("Please enter a number for arr at index ", index);
        int number = 0;
        readf("%d\n", &number); // accpeting as a float will truncate to an int
        arr[index++] = number; // using post increment

    }

    // printing the numbers in the array
    for (int i = 0; i < arr.length; i++)
    {
        writeln("arr[", i, "] = ", arr[i]);
    }

    calculator();
    print_floats();
    return;
}

void calculator()
{
    writeln("Welcome to the calculator in D-lang");
    writeln("You will enter two numbers and an operator, and the program will return the result");

    bool quit = false;
    while (!quit)
    {
        double num1 = 0;
        double num2 = 0;
        string op = "";
        writeln("Please enter the first number");
        readf("%f\n", &num1);
        writeln("Please enter the operator");
        readf("%s\n", &op);
        if (op == "q")
        {
            quit = true;
            continue;
        }

        writeln("Please enter the second number");
        readf("%f\n", &num2);
        double result = 0;

        switch (op)
        {
        case "+":
            result = num1 + num2;
            writeln(result);
            break;
        case "-":
            result = num1 - num2;
            writeln(result);
            break;
        case "*":
            result = num1 * num2;
            writeln(result);
            break;
        case "/":
            num2 == 0 ? writeln("Cannot divide by zero") : writeln(num1 / num2);
            break;
        case "q":
            quit = true;
            break;
        default:
            writeln("Invalid operator");
            break;
        }
        if (quit)
        {
            writeln("Quitting the calculator");
        }
    }
    return;

}

void print_floats()
{
    /** 
     * Write a program that reads 5 floating point values from the input. Make the program first print twice of each value and then one fifth of each value.
     */
    writeln("Please enter 5 floating point values");
    double[5] floats;
    for (int i = 0; i < floats.length; i++)
    {
        readf("%f\n", &floats[i]);
    }

    for (int i = 0; i < floats.length; i++)
    {
        writeln("Twice of ", floats[i], " is ", floats[i] * 2);
        writeln("One fifth of ", floats[i], " is ", floats[i] / 5);
    }
    return;

}
