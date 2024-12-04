mov ecx, some_safe_value ; Ensure ecx is a safe value
mov eax, [ebx + ecx*4 + 0x10]

;Alternative solution with bounds checking
mov eax, [ebx + ecx*4 + 0x10]
; Check address boundaries
cmp eax, valid_memory_start
jnge error_handling ;Jump if below valid memory start
cmp eax, valid_memory_end
jnge error_handling ;Jump if above valid memory end
;Access Memory here
;...
error_handling:
;Handle the error here