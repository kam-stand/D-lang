import std.stdio;
import std.string;

struct Letter {
    char value;
    bool visit = false;
}

void main() {
    File file = stdin;
    Letter[10][10] grid;
    int row = 0;

    // Read grid input
    while (!file.eof && row < 10) {
        string line = strip(file.readln());
        foreach (int col, char c; line) {
            grid[row][col] = Letter(c);
        }
        row++;
    }
    file.close();

    // Searching the grid
    for (int r = 0; r < 10; r++) {
        for (int c = 0; c < 10; c++) {
            if (checkWord(r, c, grid)) {
                writefln("Found 'XMAS' or 'SAMX' at (%d, %d)", r, c);
            }
        }
    }
}

// Unified function for horizontal and vertical checks
bool checkWord(int row, int col, Letter[10][10] grid) {
    string word1 = "XMAS"; // Forward
    string word2 = "SAMX"; // Reverse

    // Check horizontal (→)
    if (col + 3 < 10) {
        string val;
        foreach (int i; 0 .. 4) {
            val ~= grid[row][col + i].value;
        }
        if (val == word1 || val == word2) return true;
    }

    // Check horizontal (←)
    if (col - 3 >= 0) {
        string val;
        foreach (int i; 0 .. 4) {
            val ~= grid[row][col - i].value;
        }
        if (val == word1 || val == word2) return true;
    }

    // Check vertical (↓)
    if (row + 3 < 10) {
        string val;
        foreach (int i; 0 .. 4) {
            val ~= grid[row + i][col].value;
        }
        if (val == word1 || val == word2) return true;
    }

    // Check vertical (↑)
    if (row - 3 >= 0) {
        string val;
        foreach (int i; 0 .. 4) {
            val ~= grid[row - i][col].value;
        }
        if (val == word1 || val == word2) return true;
    }

    return false;
}
