module immutability.main;
import std.stdio;

struct Villain
{
    int health;
    int damage = 0;
}

void main()
{
    Villain villain = Villain(100);

    immutable int sword_attack = 20;
    immutable int fist_attack = 5;
    immutable int leg_attack = 10;

    while (1)
    {
        int exit = 0;
        if (villain.health <= 0)
        {
            writeln("Villain is dead!");
            break;
        }
        writeln("Welcom to the Villain's Lair!");
        writefln("Villain's health: %d", villain.health);
        writeln("1. Sword Attack");
        writeln("2. Fist Attack");
        writeln("3. Leg Attack");
        writeln("4, Combo Attack: Enter total damage");
        writeln("5. Exit");
        writeln("Enter your choice: ");
        int choice;
        readf(" %s", &choice);

        switch (choice)
        {
        case 1:
            villain.health -= sword_attack;
            break;
        case 2:
            villain.health -= fist_attack;
            break;
        case 3:
            villain.health -= leg_attack;
            break;
        case 4:
            int total_damage;
            readf(" %s", &total_damage);
            if (total_damage < 0)
            {
                writeln("Invalid damage");
                break;
            }
            villain.health -= total_damage;
            break;
        case 5:
            return;
        default:
            writeln("Invalid choice");
        }

    }
}
