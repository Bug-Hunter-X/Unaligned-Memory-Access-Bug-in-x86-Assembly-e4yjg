mov esi, [some_address] ;ensure esi is aligned properly
mov eax, [ebx + esi*4 + 0x10] ; Access memory safely (assuming 0x10 already aligned)