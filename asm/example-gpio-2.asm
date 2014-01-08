                .INCLUDE "include/m16def.inc"
                
                .CSEG
                .ORG    0
                
                ldi     r16, 0xFF
                out     DDRD, r16
                out     PORTD, r16
                
                ldi     r16, HIGH(RAMEND)
                out     SPH, r16
                ldi     r16, LOW(RAMEND)
                out     SPL, r16
                
start:          ldi     r24, 0xE8
                ldi     r25, 0x03
                call    BaDelay1M10
                
                ldi     r16, 0xFF
                in      r17, PORTD
                eor     r16, r17
                out     PORTD, r16
                
                jmp     start
                
                .INCLUDE "funkcje/delay-10-1m.inc"
