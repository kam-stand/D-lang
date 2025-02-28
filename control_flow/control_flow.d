import std.stdio;
static import std.conv;

void foo()
{
    bool existsLemonade = false;

    if (existsLemonade)
    {
        writeln("Drinking lemonade");
        writeln("Washing the cup");

    }
    else
    {
        writeln("Eating pie");
        writeln("Washing the plate");

    }

}

void game()
{
    writeln("Roll a 6 sided dice and tell me what number you got: ");
    int num = 0;
    readf("%d\n", &num);
    if (num > 6 || num < 1)
    {
        writeln("Invalid number");
        return;
    }
    if (num >= 1 && num <= 3)
    {
        writeln("You won");
    }

    else
    {
        writeln("You lost");
    }
    return;
}

void game_v2()
{
    writeln("Pick number from 1 - 1000: ");
    int num = 0;
    readf("%d\n", &num);

    bool is_valid = num > 1000 || num < 1;
    bool is_won = num >= 1 && num <= 500;
    bool is_lost = num > 500 && num <= 1000;

    return is_valid ? writeln("Invalid number") : is_won ? writeln("You won") : writeln("You lost");

}

void main()
{

    game_v2();
    game();
    foo();
    int x = 0;

    write("Enter a number: ");
    readf("%d", &x);
    writeln("You entered: ", x);
    if (x >= 10 && x <= 20)
    {
        writeln("X is between: ");

        writeln("10 and 20");
    }

    else if (x < 10)
    {
        writefln("X is less than 10");

    }
    else
    {
        writefln("X is greater than 20");
    }

    // beach problem

    writeln("How many people want to go to the beach? ");
    int num_people = 0;
    readf("%s\n", &num_people);

    writeln("What is the distance to the beach? ");
    int distance = 0;
    readf("%d\n", &distance);

    writeln("How many bicycles do we have? ");
    int num_bicycles = 0;
    readf("%d\n", &num_bicycles);

    if (distance < 10 && num_bicycles >= num_people)
    {
        writeln("We can go to the beach");
        return;
    }
    writeln("How many cars do we have available? ");
    int num_cars = 0;
    readf("%d\n", &num_cars);

    writeln("Does any of use have a license? ");
    bool has_license = false;
    readf("%s\n", &has_license);

    if (num_people <= 6 && has_license && (num_cars > 0))
    {
        writeln("We can go to the beach");
        return;
    }
    else
    {
        writeln("We can't go to the beach");
    }
    return;
}
