
import core.stdc.stdio;

import core.stdc.string;

import core.stdc.stdlib;

import core.stdc.ctype;

enum TYPE
{
    NUMBER,
    LEFT_CURL,
    RIGHT_CURL,
    LEFT_BRACKET,
    RIGHT_BRACKET,
    COMMA,
    COLON,
    STRING,
    TRUE,
    FALSE,
    EOF
}

struct TOKEN
{
    TYPE t;
    char *lexeme;
}

extern (C) int main(int argc, char **argv)
{
    FILE *f = fopen(argv[1], "r");
    TOKEN [4096]tokes;
    int size = 0;
    while (!feof(f))
    {
        int c = fgetc(f);
        printf("%c", c);
    }
    return 0;
}
