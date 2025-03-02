import std.stdio;

void print_menu(string[] menu)
{
    foreach (i; 0 .. menu.length)
    {
        writefln("%d: %s", i + 1, menu[i]);
    }
}

int fib(int val)
{
    if (val == 0 || val == 1)
    {
        return 1;
    }

    return fib(val - 1) + fib(val - 2);
}

string[][] create_canvas(int rows, int cols)
{
    string[][] canvas = new string[][rows];
    foreach (i; 0 .. rows)
    {
        canvas[i] = new string[cols];
    }

    return canvas;
}

bool write_pixel(ref string[][] canvas, int row, int col)
{
    if (row < 0 || col < 0)
    {
        return false;
    }

    canvas[row][col] = "*";
    return true;
}

void print_canvas(string[][] canvas)
{
    foreach (row; canvas)
    {
        foreach (pixel; row)
        {
            write(pixel, " "); // Print pixel followed by a space
        }
        writeln(); // Move to the next line after each row
    }
}

int main()
{

    string[] menu = ["Black", "Red", "Green", "Blue", "White"];
    print_menu(menu);
    // writeln(fib(3)); // fib(2) + fib(1) = 2 + 1 = 3
    // int f_5 = fib(5); // fib(4) + fib(3) => fib(3) + fib(2) + fib(3) = 6 + 2 = 8
    // writeln(f_5);

    string[][] canvas = create_canvas(3, 3);
    print_canvas(canvas);

    (write_pixel(canvas, 0, 0));
    (write_pixel(canvas, 1, 0));
    (write_pixel(canvas, 2, 0));

    print_canvas(canvas);
    return 0;
}
