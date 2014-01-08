                .INCLUDE "include/m16def.inc"
                
                .CSEG
                .ORG    0x00
                rjmp    Reset
                .ORG    0x12
                rjmp    OVflowTimer0
                
Reset:          sbi     DDRB, PB3
                
                ldi     r16, HIGH(RAMEND)
                out     SPH, r16
                ldi     r16, LOW(RAMEND)
                out     SPL, r16
                
                ldi     r16, 1<<WGM00 | 1<<COM01 | 1<<COM00 | 1<<WGM01 | 1<<CS00
                out     TCCR0, r16
                
                
Loop:           ldi     r16, 0
                com     r16
                out     OCR0, r16
                
                ldi     r24, 0xD0
                ldi     r25, 0x07
                call    BaDelay1M11
                
                ldi     r16, 64
                com     r16
                out     OCR0, r16
                
                ldi     r24, 0xD0
                ldi     r25, 0x07
                call    BaDelay1M11
                
                ldi     r16, 128
                com     r16
                out     OCR0, r16
                
                ldi     r24, 0xD0
                ldi     r25, 0x07
                call    BaDelay1M11
                
                ldi     r16, 192
                com     r16
                out     OCR0, r16
                
                ldi     r24, 0xD0
                ldi     r25, 0x07
                call    BaDelay1M11
                
                jmp    Loop
                
                
                
OVflowTimer0:   push    r16
                in      r16, SREG
                push    r16
                
                nop
                
                pop     r16
                out     SREG, r16
                pop     r16
                
                reti
                
                
                .INCLUDE "funkcje/delay-11-1m.inc"
