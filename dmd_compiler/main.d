import std.stdio;

/** 
 * Authors: https://github.com/kam-stand
 */
 
 /**Version: 
        0.0.1
**/

/**Date: 
    2/27/2024 
**/

/**Standards: 
    Link: https://dlang.org/dstyle.html
    **/



/****************************

This is an example file to show case the compiler flags within dmd
**/


/**
* This is a function that will simply print the sum of the two variables using printf
*Params: 
    void
*Returns: 
    void
*Examples: 
*   foo() // "a + b = 25"
**/
void foo()
{
    int a = 12;
    int b = 13;
    printf("a + b = %d\n", a+b);
}



void main(){
    writeln("Compiling with -D flag");
    foo();
}
