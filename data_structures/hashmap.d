import std.stdio;
import core.stdc.stdlib;
import core.memory;

struct Hashmap
{
    size_t capacity;
    size_t size;
    void* data; // Corrected: Just a raw memory block
}

Hashmap* create_hashmap(size_t capacity)
{
    if (capacity == 0)
    {
        return null; // Handle zero capacity
    }
    
    Hashmap* h = cast(Hashmap*)malloc(Hashmap.sizeof);
    if (h is null)
    {
        return null; //Handle malloc failure.
    }
    h.capacity = capacity;
    h.size = 0;
    h.data = malloc(capacity);
    if(h.data is null)
    {
        free(h);
        return null;
    }

    return h;
}

void destroy(Hashmap* h)
{
    if (h !is null)
    {
        free(h.data); // Free the data block
        free(h); // Free the Hashmap struct itself
    }
}


void main()
{
    Hashmap* h = create_hashmap(100);
    if(h !is null)
    {
        destroy(h);
    }
}