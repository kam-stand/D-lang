import std.stdio;


enum ALLOC = 0x1;                // 0x0001 (bit 0)
enum QCK = 0x2;  

struct Block
{
    size_t sf_header;
    union links
    {
        Block *next;
        Block *prev;
    }
    char[0] payload;

}


 void main(string[] args)
{
    Block prologue;
    prologue.sf_header = 0;
    prologue.sf_header |= (ALLOC);
    writefln("Header: %.64b", prologue.sf_header);

    writefln("Size of Header: %d", prologue.sizeof);
}