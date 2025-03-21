import std.stdio;

void main()
{
    writeln(get_village_class_size(43_252));


}

int get_village_class_size(int village)
{
    if (village <= 0)
    {
        return 0;
    }

    return 1 + get_village_class_size(village / 10);
}
