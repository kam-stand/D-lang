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

}
