.section bss
.globl ram
.lcomm ram, 256         #Reserve 256b RAM

.section .text
.globl fill_ram         # Make fucntion visible to C programs

fill_ram:
    # Store Addresses Directly

    movb $0xFF, ram+0x50
    movb $0xFF, ram+0x51
    movb $0xFF, ram+0x52
    movb $0xFF, ram+0x53
    movb $0xFF, ram+0x54
    movb $0xFF, ram+0x55
    movb $0xFF, ram+0x56
    movb $0xFF, ram+0x56
    movb $0xFF, ram+0x57
    movb $0xFF, ram+0x58
    

    
    ret                 # Return

.section .note.GNU-stack,"",@progbits