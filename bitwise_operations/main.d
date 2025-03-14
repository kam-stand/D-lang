import std.stdio;

enum ALLOC = 0x1;                // 0x0001 (bit 0)
enum QCK = 0x2;                  // 0x0010 (bit 1)
enum MASK_28_BITS = 0x0FFFFFFF;  // Mask for 28 bits (bits 4-31)
enum MASK_32_BITS = 0xFFFFFFFF;  // Mask for lower 32 bits (bits 0-31)
enum MASK_32_BITS_UPPER = 0xFFFFFFFF00000000; // Mask for upper 32 bits (bits 32-63)

void main(string[] args)
{
    size_t header = 0;

    writeln("Bitwise operations");
    writefln("Initial Header: %.64b", header);

    set_alloc(header);
    writefln("After setting alloc: %.64b", header);

    set_qck(header);
    writefln("After setting qck: %.64b", header);

    set_block_size(header, 12345);  // Set block size to 12345
    writefln("After setting block size: %.64b", header);
    
    set_payload(header, 12345);  // Set payload size to 12345
    writefln("After setting payload size: %.64b", header);
}

void set_alloc(ref size_t header)
{
    // Set the alloc bit (bit 0)
    writefln("Setting alloc bit: %.64b", header);
    header |= ALLOC;
    writefln("After setting alloc: %.64b", header);
}

void set_qck(ref size_t header)
{
    // Set the qck bit (bit 1)
    writefln("Setting qck bit: %.64b", header);
    header |= QCK;
    writefln("After setting qck: %.64b", header);
}

void set_block_size(ref size_t header, size_t block_size)
{
    // Debug: show block size before shifting
    writefln("Original block_size: %.32b", block_size);
    
    // Clear the block size field (bits 4-31) by masking it out
    header &= ~(MASK_28_BITS << 4);  // This clears bits 4-31
    

    // Now, shift the block size and set it into the header starting at bit 4
    header |= (block_size << 4);     // This places the block size into bits 4-31
}

void set_payload(ref size_t header, size_t payload_size)
{
    writefln("Original payload_size: %.32b", payload_size);
    // Clear bits 32-63 by AND'ing with the mask (0xFFFFFFFF00000000)
    
    header &= ~MASK_32_BITS_UPPER;

    // Set the payload size in the upper 32 bits (shift it to bits 32-63)
    header |= (payload_size << 32);

    return;
}

