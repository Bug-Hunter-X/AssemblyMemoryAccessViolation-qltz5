# Assembly Memory Access Violation Bug

This repository demonstrates a common assembly programming error: memory access violation due to incorrect address calculation.  The bug occurs when the calculated memory address falls outside the program's allocated memory space. This leads to a segmentation fault, crashing the program.

## Bug Description

The assembly code attempts to access memory using an address calculation that involves registers EBX, ECX, and an offset. If the values in these registers are not carefully validated, the resulting address may be invalid, leading to a memory access violation.

## Solution

The solution involves adding checks to ensure the calculated address is within the valid memory range.  This often involves limiting the values stored in the relevant registers or performing explicit bounds checking before accessing memory.