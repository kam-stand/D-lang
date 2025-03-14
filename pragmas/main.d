import core.stdc.stdio : printf;

pragma(inline, true);
void add(ref int a, ref int b)
{
    int temp = a; 
    a += b;
    b += temp;
}

extern(C) void main()
{
    int a = 12; 
    int b = 13;
    add(a, b);
    
    printf("a: %d , b: %d\n", a, b); // ✅ Works in -betterC mode
}
