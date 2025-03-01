# D-lang

This is a repository filled with code, notes and information I have either gathered or learned while reading the textbook📗 from this [link](http://ddili.org/ders/d.eenn/index.html). Essentially, this repository serves as a personal documentation of my journey learning :school_satchel: the D programming language

> I mainly code in C, Java, Python, and Bash. I came across D-lang randomly and I like that its statically typed, compiled and has the ability to manually manage memory.

# Table of Contents

- [D-lang](#d-lang)
  - [Structure](#structure)
  - [Resource Guide](#resource-guide)
  - [Getting Started](#getting-started)
  - [Implemented chapters](#implemented-chapters)
  - [Contribution Guidelines](#contribution-guidelines)

## Structure

Through my learning process I will try to be as neat and organized when going through the exercises and writing down notes, but the general format I have for this repository is each directory is essentially a chapter and the files are the exercises.

---

```
repository
├── chapter_title
│   ├── exercise1.d
│   └── notes.md
├── chapter2_title
│   ├── exercise1.d
└── chapter_tile
   ├── exercise1_5.d
   ├── info.txt
   └── notes.md
```

> :flushed: The info.txt and notes.md are just additional notes I took while doing some of the exercises.

---

> :exclamation: Not every folder will coincide to a direct mapping of the chapters in the textbook as I may have skipped over them or simply combined multiple, related, chapters together.
> The exercises are not explicitly mentioned within the `.d` files in each directory but rather simply implemented to the best of my ability.

## Resource Guide

Outside of the textbook, you will most likely need outside resources to help you along the way when stuck :confused: or have certain questions :question: pertaining to D-lang.

The most optimal way to learn is of course through the textbook. However, I have provided helpful links that can be used as a means to help you in your journey🛣️.

> ❗ These links are from a wide variety of sources like Youtube to Discord thay may or may not expire

- [Discord Server](https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://discord.com/invite/bMZk9Q4&ved=2ahUKEwiynsKdtuWLAxVkF1kFHXwAH9IQFnoECBgQAQ&usg=AOvVaw1zoiFc4O1YBlynaTO-Ka81)
- [Forum ](https://forum.dlang.org/)

This is a youtube playlist from `Mike Shah` who essentially goes over the D programming language perfect for beginners like you and me! I found his videos more helpful after reading the textbooks and doing the exercises.

- [Youtube](https://www.youtube.com/watch?v=HS7X9ERdjM4&list=PLvv0ScY6vfd9Fso-3cB4CGnSlW0E4btJV)

> 🚩 There are plenty of other resources online that can be used to help you learn D-lang. The links mentioned above are essentially discussions, conversation and advice from more experienced developers within the D-lang community. A more **robust** and **definitive** resource is the D-lang official [website](https://dlang.org/spec/spec.html).

## Getting Started

If you want supplement your learning experience using this repository you're gonna need a couple things before you Started

1. D-lang Compiler - To run the actual D source files like `main.d` you will need a compiler which can be found using this [link](https://dlang.org/download.html)
   > :sunglasses: If you are on linux you can use the script or check the third party downloads for directions in regards to your specific distribution
2. Text editor or IDE
   - I used VScode and Gedit as my code editor but it does not matter what you choose just note that syntax highlighting, auto completion and other lang features are up to your disposal
   - In case you're wondering what extension I used for VScode its the following `webfreak.dlang-bundle`.
     > :information_desk_person: If this does not work then search for code-d and select the "D Programming Language (code-d)" extension from the list.
3. Version Control
   - You **WILL** make mistakes and its important to keep track of your progress so install [git](https://git-scm.com/downloads)

## Implemented chapters

- [ ] Foreword by Andrei Alexandrescu
- [ ] Preface
- [x] The Hello World Program `main`
- [x] writeln and write
- [x] Compilation
- [x] Fundamental Types `char int double (and more)`
- [x] Assignment and Order of Evaluation `=`
- [x] Variables
- [x] Standard Input and Output Streams `stdin stdout`
- [x] Reading from the Standard Input
- [x] Logical Expressions `bool true false ! == != < <= > >= || &&`
- [x] if Statement `if else`
- [x] while Loop `while continue break`
- [x] Integers and Arithmetic Operations `++ -- + - _ / % ^^ += -= _= /= %= ^^=`
- [x] Floating Point Types `.nan .infinity isNaN`
- [ ] Arrays `[] .length ~ ~=`
- [ ] Characters `char wchar dchar`
- [ ] Slices and Other Array Features `.. $ .dup capacity`
- [ ] Strings `char[] wchar[] dchar[] string wstring dstring`
- [ ] Redirecting Standard Input and Output Streams
- [ ] Files `File`
- [ ] auto and typeof `auto typeof`
- [ ] Name Scope
- [ ] for Loop `for`
- [ ] Ternary Operator ?: `?:`
- [ ] Literals
- [ ] Formatted Output `writef writefln`
- [ ] Formatted Input
- [ ] do-while Loop `do while`
- [ ] Associative Arrays `.keys .values .byKey .byValue .byKeyValue .get .remove in`
- [ ] foreach Loop `foreach .byKey .byValue .byKeyValue`
- [ ] switch and case `switch, case, default, final switch`
- [ ] enum `enum .min .max`
- [ ] Functions `return void`
- [ ] Immutability `enum const immutable .dup .idup`
- [ ] Value Types and Reference Types `&
- [ ] Function Parameters `in out ref inout lazy scope shared`
- [ ] Lvalues and Rvalues `auto ref`
- [ ] Lazy Operators
- [ ] Program Environment `main stderr`
- [ ] Exceptions `throw try catch finally`
- [ ] scope `scope(exit) scope(success) scope(failure)`
- [ ] assert and enforce `assert enforce`
- [ ] Unit Testing `unittest`
- [ ] Contract Programming `in out`
- [ ] Lifetimes and Fundamental Operations
- [ ] The null Value and the is Operator `null is !is`
- [ ] Type Conversions `to assumeUnique cast`
- [ ] Structs `struct . {} static, static this, static ~this`
- [ ] Variable Number of Parameters `T[]... __MODULE__ __FILE__ __LINE__ __FUNCTION__ (and more)`
- [ ] Function Overloading
- [ ] Member Functions `toString`
- [ ] const ref Parameters and const Member Functions `const ref, in ref, inout`
- [ ] Constructor and Other Special Functions `this ~this this(this) opAssign @disable`
- [ ] Operator Overloading `opUnary opBinary opEquals opCmp opIndex (and more)`
- [ ] Classes `class new`
- [ ] Inheritance `: super override abstract`
- [ ] Object `toString opEquals opCmp toHash typeid TypeInfo`
- [ ] Interfaces `interface static final`
- [ ] destroy and scoped `destroy scoped`
- [ ] Modules and Libraries `import, module, static this, static ~this`
- [ ] Encapsulation and Protection Attributes `private protected public package`
- [ ] Universal Function Call Syntax (UFCS)
- [ ] Properties
- [ ] Contract Programming for Structs and Classes `invariant`
- [ ] Templates
- [ ] Pragmas
- [ ] alias and with `alias with`
- [ ] alias this `alias this`
- [ ] Pointers `* &`
- [ ] Bit Operations `~ & | ^ >> >>> <<`
- [ ] Conditional Compilation `debug, version, static if, static assert, \_\_traits`
- [ ] is Expression `is()`
- [ ] Function Pointers, Delegates, and Lambdas `function delegate => toString`
- [ ] foreach with Structs and Classes `opApply empty popFront front (and more)`
- [ ] Nested Functions, Structs, and Classes `static`
- [ ] Unions `union`
- [ ] Labels and goto `goto`
- [ ] Tuples `tuple Tuple AliasSeq .tupleof foreach`
- [ ] More Templates `template opDollar opIndex opSlice`
- [ ] More Functions `inout pure nothrow @nogc @safe @trusted @system CTFE \_\_ctfe`
- [ ] Mixins `mixin`
- [ ] Ranges `InputRange ForwardRange BidirectionalRange RandomAccessRange OutputRange`
- [ ] More Ranges `isInputRange ElementType hasLength inputRangeObject (and more)`
- [ ] static foreach
- [ ] Parallelism `parallel task asyncBuf map amap reduce`
- [ ] Message Passing Concurrency `spawn thisTid ownerTid send receive (and more)`
- [ ] Data Sharing Concurrency `synchronized, shared, shared static this, shared static ~this`
- [ ] Fibers `call yield`
- [ ] Memory Management `calloc realloc emplace destroy .alignof`
- [ ] User Defined Attributes (UDA) `@`
- [ ] Operator Precedence
  > ☝️ The check list above was actually produced using file I/O operations with the D-programming language. See `./stdin_stdou/info.txt` for more information on how it was done. Its a great way to see how concise and powerful the language is

## Contribution Guidelines

If you'd like to contribute to this learning repository:

1. Fork the repository
2. Create a new branch for your changes
3. Submit a pull request with a clear description of your additions

I welcome:

- Additional exercises
- Error corrections
- Alternative solutions
- Helpful notes and insights

> ❗ Contributing to the repository in general should mainly focus on being direct, easy, and informative to newcomers learning the leanguage. Therefore, be **specific** when adding new material. For example, dont just add a link to a resoruce. Explain what it is, how it can be used, when to use it and etc.
