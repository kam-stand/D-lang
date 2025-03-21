import std.stdio;


void main()
{
    int [] stones = [5, 10, 15, 20, 25, 30];
    writeln(sumStones(stones));

    int [] stones2 = [12, 8, 22, 16, 10];
    writeln(sumStones(stones2));
}

int sumStones( int[] stones)
{
    if (stones.length == 1)
    {
        return stones[0];
    }

    else if (stones.length == 2)
    {
        return stones[0] + stones[1];
    }

    return sumStones(stones[0 .. 2]) + sumStones(stones[2 .. $]);

}