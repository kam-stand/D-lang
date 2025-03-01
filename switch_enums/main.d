import std.stdio;

enum OPERATOR
{
    ADD,
    SUB,
    DIV,
    MULT,
    NONE
}


struct EXPR
{
    int val1;
    OPERATOR operator;
    int val2;
}
int main()
{
    writeln("Hello welcome to D lang calculator");

    
    while(1)
    {
        writeln("To quit enter 'ctrl -c '");
        writeln("Enter first value: ");
        int val1 = 0;
        readf("%d\n", &val1);


        writeln("Enter Operation: ");
        string str = "";
        readf("%s\n", &str);
        

        writeln("Enter second value: ");
        int val2 = 0;
        readf("%d\n", &val2);

        EXPR result = {val1, OPERATOR.NONE, val2};
        if(str == "+")
        {
            result.operator = OPERATOR.ADD;
        }
        else if(str == "-")
        {
            result.operator = OPERATOR.SUB;
        }
        else if(str == "*")
        {
            result.operator = OPERATOR.MULT;
        }
        else if(str == "/")
        {
            result.operator = OPERATOR.DIV;
        }

        switch (result.operator)
        {
            case OPERATOR.ADD:
                writeln("Result: ", result.val1 + result.val2);
                break;
            case OPERATOR.SUB:
                writeln("Result: ", result.val1 - result.val2);
                break;
            case OPERATOR.MULT:
                writeln("Result: ", result.val1 * result.val2);
                break;
            case OPERATOR.DIV:
                if (result.val2 == 0)
                {
                    writeln("Cant divide by zero");
                }
                writeln("Result: ", result.val1 / result.val2);
                break;
            default:
                break;
        }

    }

}