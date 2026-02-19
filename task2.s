.section bss
.globl ram
.lcomm ram, 256         #Reserve 256b RAM

.section .text
.globl fill_ram         # Make fucntion visible to C programs

fill_ram:
#Store Addresses Indirectly
lea ram(%rip), %rdi      # Load address of ram into rdi

    movb $0xFF, 0x50(%rdi)
    movb $0xFF, 0x51(%rdi)
    movb $0xFF, 0x52(%rdi)
    movb $0xFF, 0x53(%rdi)
    movb $0xFF, 0x54(%rdi)
    movb $0xFF, 0x55(%rdi)
    movb $0xFF, 0x56(%rdi)
    movb $0xFF, 0x57(%rdi)
    movb $0xFF, 0x58(%rdi)

    ret                 # Return

.section .note.GNU-stack,"",@progbits