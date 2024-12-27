.global _showGreeting
.align 2

.data
greeting: .asciz "Hello Hanafe!"    // Null-terminated string

.text
_showGreeting:
    // Save frame pointer and link register
    stp     x29, x30, [sp, #-16]!
    mov     x29, sp
    
    // Return address of greeting string
    adrp    x0, greeting@PAGE
    add     x0, x0, greeting@PAGEOFF
    
    // Restore frame and return
    ldp     x29, x30, [sp], #16
    ret