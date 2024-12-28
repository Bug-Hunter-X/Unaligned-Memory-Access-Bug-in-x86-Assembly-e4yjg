# Unaligned Memory Access Bug in x86 Assembly

This repository demonstrates a common error in assembly programming: unaligned memory access.  The bug is caused by attempting to access a 4-byte value from an address that's not a multiple of 4 bytes. This often results in a program crash or unpredictable behavior, particularly on architectures that require data alignment.

## Bug Description
The `bug.asm` file contains an assembly instruction that calculates a memory address based on registers ebx and esi.  However, the calculation doesn't guarantee alignment, potentially leading to unaligned memory access. The `bugSolution.asm` file provides a corrected version that ensures proper alignment.

## How to Reproduce
1. Assemble and link `bug.asm` (using NASM or your preferred assembler and linker).
2. Run the resulting executable.
3. Observe the crash or unexpected behavior due to the unaligned memory access.

## Solution
The `bugSolution.asm` file demonstrates a way to avoid unaligned memory access.  It modifies the address calculation to ensure proper alignment, making the code more robust and less prone to errors.