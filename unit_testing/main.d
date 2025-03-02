import std.stdio;
import core.memory;

struct Stack
{
    int capacity;
    int* data;
    int size;
}

Stack* createStack(int capacity)
{
    if (capacity <= 0)
    {
        return null;
    }
    int* data = cast(int*) GC.malloc(int.sizeof * capacity);
    Stack* s = cast(Stack*) GC.malloc(Stack.sizeof);
    s.capacity = capacity;
    s.data = data;
    s.size = -1;
    return s;
}

bool push(Stack* s, int val)
{
    assert(s.size != s.capacity);
    switch (s.size)
    {
    case -1:
        s.size++;
        s.data[s.size] = val;
        return true;
    default:
        s.size++;
        s.data[s.size] = val;
        return true;
    }
    return false;
}

int pop(Stack* s)
{
    assert(s.size != s.capacity);
    int pop;
    switch (s.size)
    {
    case -1:
        writeln("No elements in stack");
        return -1;
    case 0:
        pop = s.data[s.size];
        s.size--;
        return pop;
    default:
        pop = s.data[s.size];
        s.size--;
        int* arr = s.data;
        for (int i = 0; i < s.size; i++)
        {
            s.data[i] = arr[i];
        }
        return pop;
    }
    return -1;
}

void print_stack(Stack* s)
{
    for (int i = 0; i <= s.size; i++)
    {
        writef("| - |\n");
        writef("| %d |\n", s.data[i]);
        writef("| - |\n");
    }
}

unittest
{
    // Test 1: Create a stack and push elements
    Stack *s = createStack(5);
    assert(s != null);
    assert(s.size == -1);  // Stack should be empty initially
    assert(s.capacity == 5); // The capacity should be 5

    // Test 2: Push elements to the stack
    assert(push(s, 10)); // Should return true and push 10
    assert(s.size == 0);  // The stack size should be 0 after the first push
    assert(s.data[0] == 10); // The top element should be 10

    assert(push(s, 20)); // Should return true and push 20
    assert(s.size == 1);  // The stack size should be 1 after pushing another element
    assert(s.data[1] == 20); // The second element should be 20

    // Test 3: Pop elements from the stack
    int pop1 = pop(s);
    assert(pop1 == 20);  // The last element pushed (20) should be popped
    assert(s.size == 0);  // The stack size should be 0 after popping one element

    int pop2 = pop(s);
    assert(pop2 == 10);  // The next element (10) should be popped
    assert(s.size == -1);  // The stack should be empty after popping the last element

    // Test 4: Pop from an empty stack
    int pop3 = pop(s);
    assert(pop3 == -1);  // Should return -1 as the stack is empty    
}

void main()
{
    Stack* s = createStack(100);
    print_stack(s);
}
