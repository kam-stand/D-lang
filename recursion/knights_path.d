import std.stdio;


void main()
{
    int [] path = [1,5,2];
    writeln(isIncreasing(path));
}

bool isIncreasing(int[] path)
{
    if (path.length == 2)
    {
        return path[0] < path[1];
    }
    
    return path[0] < path[1] ? isIncreasing(path[1 .. $]) : false;
}
