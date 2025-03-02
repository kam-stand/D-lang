module data_structures.linked_list;
import std.stdio;
import core.memory;

/** 
* This is a simple singly linked list application
* It is not intended for use and it does contain memory leaks when I checked with valgrind
* I mainly wrote this applicaiton to test my knowlesdge thusfar of the the garbage collector, structs, enums and data structures
* The logic to add, and traverse a node is correct however I did not spend time on certain edge cases. Please use this as an example to create yourOWN ROBUST MEMORY SAFE LINKED LIST
* I PLAN ON COMING BACK TO THIS FILE AFTER I HAVE GONE MORE OF THE TEXTBOOK AND CREATED PROJECTS USING D LANG. FURHTERMORE, PROGRAMMING IS ABOUT MAKING MISTAKES AND SOMETIMES LOOKING UGLY... WE ALL START SOMEWHERE
*/

enum TYPE
{
    HEAD,
    TAIL,
    NODE
}

struct Node
{
    int value;
    TYPE type;
    Node* next;

}

Node* create_node(int value, TYPE t)
{
    Node* n = cast(Node*) GC.malloc(Node.sizeof);
    n.value = value;
    n.type = t;
    n.next = null;
    return n;
}

// still leaking memory when using valgring.... spot the mistakes and fix it
void free_linked_list(Node* head)
{
    Node* temp;
    while (head != null)
    {
        temp = head;
        head = head.next;
        GC.free(temp);
    }
    /*

   struct node* tmp;

   while (head != NULL)
    {
       tmp = head;
       head = head->next;
       free(tmp);
    }
    */
}
void print_linked_list(Node *head)
{
    assert(head.type == TYPE.HEAD);
    Node *temp = head;
    while(temp)
    {
        // ternary operators
        auto map_type  = (TYPE t) => (t == TYPE.HEAD) ? "HEAD" : (t == TYPE.NODE ? "NODE": "TAIL"); 
        writef("{%d:%s}-> ", temp.value, map_type(temp.type));
        temp = temp.next;
        
    }
    writeln();

    return;

}

void add_node(Node* node, Node* add)
{
    switch (node.type)
    {

    case TYPE.HEAD:
        add.next = node;
        add.type = TYPE.HEAD;
        node.type = TYPE.NODE;
        break;

    case TYPE.NODE:
        Node* temp = node.next;
        node.next = add;
        add.next = temp;
        break;

    case TYPE.TAIL:
        node.next = add;
        node.type = TYPE.NODE;
        add.type = TYPE.TAIL;
        add.next = null;
        break;

    default:
        break;
    }

    return;
}

int main()
{
    GC.disable(); // playing around
    
    Node* n = create_node(13, TYPE.HEAD);
    Node* a = create_node(12, TYPE.TAIL);
    Node *n2 = create_node(15, TYPE.NODE);
    Node *n3 = create_node(25, TYPE.NODE);
    Node *n4 = create_node(45, TYPE.NODE);

    add_node(n, a); // adding to head
    add_node(a, n2);// adding to head
    add_node(a,n3); // adding to node

    // changing last node to a TAIL type
    n.type = TYPE.TAIL;

    print_linked_list(n2); // print 
    // adding to TAIL
    add_node(n, n4);
    
    print_linked_list(n2); // print

    free_linked_list(n2);

    GC.enable();
    return 0;
}


