.section .reset, "ax"

reset:          b begin

undefined:      b undefined

swi:            b swi

pabt:           b pabt

dabt:           b dabt

reserved:       b reserved

irq:            b irq

fiq:            b fiq

begin:          ldr r13, =__int_ram_top__

                ldr r0, =boot

                mov lr, pc

                bx r0

/* ~ Relocate .data section. (Copy variables from ROM to RAM.) ~ */

                ldr r1, =__text_end__

                ldr r2, =__data_start__

                ldr r3, =__data_end__

looprel:        cmp r2, r3

                ldrlo r0, [r1], #4

                strlo r0, [r2], #4

                blo looprel

/* ~ Clear .bss section. (Zero null initialized variables.) ~ */

                mov r0, #0

                ldr r1, =__bss_start__

                ldr r2, =__bss_end__

loopzi:         cmp r1, r2

                strlo r0, [r1], #4

                blo loopzi

.extern main

                ldr lr, =stop

                ldr r0, =main

                bx r0

stop:           b stop
