import core.memory;
import core.stdc.stdio;
import core.stdc.stdlib;
struct STACK
{
    int* data;
    int capacity;
    int size;
}

STACK* create_stack(in int capacity = 1024) @nogc
{
    STACK* s = cast(STACK*) malloc(STACK.sizeof);
    s.data = cast(int*) malloc(int.sizeof * capacity);
    s.capacity = capacity;
    s.size = 0; // setting the stack equal to zero at start
    return s;
}

bool push(STACK* s, in int val) @nogc
{
    if (s.size == s.capacity)
    {
        return false;
    }

    assert((s.size <= s.capacity));
    s.data[s.size++] = val;

    return true;

}

int peek(STACK* s) @nogc
{
    if (s.size == 0)
    {
        return -1;
    }

    return s.data[s.size - 1];
}

int pop(STACK* s) @nogc
{
    if (s.size == 0)
    {
        int p = s.data[s.size];
        printf("Last value set to -1");
        s.data[s.size] = -1;
        return p;
    }
    return s.data[--s.size];
}

void printStack(STACK* s) @nogc
{
    printf("[ ");
    for (int i = 0; i < s.size; i++)
    {
        printf(" %d ", s.data[i]);
    }

    printf("]\n");
}

void destroy(STACK* s)
{
    if (s is null)
    {
        return;
    }

    free(s.data);
    free(s);
}


void main()
{
    STACK* s = create_stack(100);
    bool ret = push(s, 12);
    ret = push(s, 52);
    ret = push(s, 11);
    ret = push(s, 2);
    ret = push(s, 20);
    printStack(s);
    int p = peek(s);
    printf("Peek: %d\n", p);
    printStack(s);
    p = pop(s);
    printf("Pop: %d\n", p);
    p = pop(s);
    printf("Pop: %d\n", p);
    printStack(s);

    destroy(s);

    guests();
    
}


