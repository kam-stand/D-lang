import std.stdio;

void main()
{
    //writeln(get_village_class_size(43_252));

    writeln(longest_streak("SSOSSS"));
    writeln(longest_streak("SOSOSOSO"));


}

int get_village_class_size(int village)
{
    if (village <= 0)
    {
        return 0;
    }

    return 1 + get_village_class_size(village / 10);
}

int longest_streak(string frames, int curr_length = 0, int max_length = 0)
{
    int count  = 0;

    if (frames[curr_length] == frames[max_length + 1])
    {
        count++;
        return longest_streak(frames[curr_length++ .. $], curr_length = 0, max_length = 0);
    }

    else if (frames[curr_length] != frames[max_length + 1])
    {
        count > 0 ? count--: count;
        return longest_streak(frames[curr_length++ .. $], curr_length = 0, max_length = 0);    
    }
        return count;


}
