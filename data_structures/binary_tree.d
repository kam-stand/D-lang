import std.stdio;
import core.memory;



struct TreeNode
{
    int val;
    TreeNode *left;
    TreeNode *right;
}

TreeNode* create_TreeNode(int val) 
{
    TreeNode* n = cast(TreeNode *)GC.malloc(TreeNode.sizeof);
    n.val = val;
    n.left, n.left = null;
    return n;

}


void print_Tree(TreeNode *n)
{
    
    if (n is null)
    {
        return;
    }
    writef("%d ", n.val);
    print_Tree(n.left);

    print_Tree(n.right);

}

int sum(TreeNode *n)
{
    int count = 0;
    if (n is null)
    {
        return count;
    }
    count += n.val;
    count += sum(n.left);
    count += sum(n.right);
    return count;

}

void ivyCutting(TreeNode *n)
{
    writeln(n.val);
    if (n.right)
    {
        ivyCutting(n.right);
    }
    return;
}

void main()
{
    TreeNode *a = create_TreeNode(23);
    TreeNode *b = create_TreeNode(12);
    TreeNode *c = create_TreeNode(25);
    a.left = b;
    a.right = c;

    print_Tree(a);
    writeln();
    auto apple_tree =create_TreeNode(12);
    apple_tree.left = create_TreeNode(7);
    apple_tree.right = create_TreeNode(5);
    print_Tree(apple_tree);

    writefln(":\nSum is: %d  ", sum(apple_tree));



    auto ivy_tree =create_TreeNode(12);
    ivy_tree.left = create_TreeNode(7);
    ivy_tree.right = create_TreeNode(5);
    ivy_tree.right.right = create_TreeNode(8);

    ivyCutting(ivy_tree);

    
}