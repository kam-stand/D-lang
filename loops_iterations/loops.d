module loops_iterations.loops;
import std.stdio;
import std.math;

bool isPrime(int num)
{
    if (num == 0)
    {
        writeln(" 0 is neither prime nor composite");
        return false;
    }
    /** 
     * 
     * Params:
     *   num = number to check if it is prime
     * Returns: 
        *   bool = true if prime, false otherwise
     */
    if (num == 1 || num == 2)
    {
        return true;
    }

    return num % 2 != 0;
}

void main()
{

    // make associative array of "twenty" to 20, "thirty" to 30, "forty" to 40, "fifty" to 50
    writeln("Associative array  are just dictionaries in python");
    int[string] ages = ["twenty": 20, "thirty": 30, "forty": 40, "fifty": 50];
    foreach (key, value; ages)
    {
        writeln(key, " is ", value);

    }
    writeln(ages["thirty"]);

    int[2] numbers = [1, 2];
    foreach_reverse (i, number; numbers)
    {
        writeln("Index: ", i, " Number: ", number);
    }

    bool prime;
    do
    {
        writeln("Please enter a number to check if it is prime: ");
        int num = 0;
        readf("%d\n", &num);
        prime = isPrime(num);
        writeln(prime ? "The number is prime" : "The number is not prime");
    }
    while (prime != false);

    int number = 0;
    while (true)
    {
        writeln("Enter a number ");
        readf("%d\n", &number);
        if (number != 3)
        {
            break;
        }
    }
}
