import std.stdio;



void push(in char s, ref char[] stack)
{
    stack ~= s;
    return;
}

void pop(ref char[] stack)
{
    stack = stack[0 .. $-1];
    return; 
}

char peek(ref char[] s)
{
    return s[$];
}
void main()
{
    char[] stack;
    int num = 1;
    int[] list;
    string guest = "IIIDIDDD";
    for (int i = 0; i < cast(int)guest.length; i++)
    {
        char c = guest[i];
        if (c == 'I')
        {
            // 
        }
        else if (c == 'D')
        {
            
        }
        
    }

    for (int i =0 ; i < stack.length; i++)
    {
        write(stack[i],  " ");
    }
    writeln();
    for (int i =0 ; i < list.length; i++)
    {
        write(list[i],  " ");
    }
        writeln();


}
