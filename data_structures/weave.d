import std.stdio;

struct Node
{
    char value;
    Node* next;
}

void print_linked_list(Node* head)
{
    auto curr = head;
    while (curr !is null)
    {
        writef("%c", curr.value);
        if (curr.next !is null)
            writef(" -> ");
        curr = curr.next;
    }
    writeln();
}

void main()
{
    Node a = Node('A', null);
    Node c = Node('C', null);
    Node e = Node('E', null);
    a.next = &c;
    c.next = &e;

    Node b = Node('B', null);
    Node d = Node('D', null);
    Node f = Node('F', null);
    b.next = &d;
    d.next = &f;

    print_linked_list(&a);
    print_linked_list(&b);

    print_linked_list(weave_spells(&a, &b));
}

Node* weave_spells(Node* spell_a, Node* spell_b)
{
    if (spell_a is null)
        return spell_b;
    if (spell_b is null)
        return spell_a;

    Node* temp = spell_a.next;
    spell_a.next = spell_b;

    spell_b.next = weave_spells(temp, spell_b.next);

    return spell_a;
}
