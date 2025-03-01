import std.stdio;

//     value_type[key_type] associative_array_name;

void main()
{

    // definining associative array for one student multiple grades 

    int[] grades = [78, 90, 87, 77];

    int[] grade2 = [100, 76, 90, 76];

    int[] grade3 = [78, 90, 65, 89];

    int[][string] student_grades = [
        "emre": grades, "kam": grade3, "josh": grade2
    ];

    writeln(student_grades["emre"]);

    writeln(student_grades["emre"].length);

    student_grades.remove("kam");

    foreach (key, value; student_grades)
    {
        writeln("Keys: ", key);
        writeln("Values: ", value);
    }

    int[][] matrix;
    int rows = 2;
    int cols = 2;

    matrix.length = rows;
    matrix[0].length = cols;

    writeln(matrix);

    student_grades.clear();
    writeln("Removed all key val pairs: ", student_grades);

}
