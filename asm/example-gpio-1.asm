                .INCLUDE "include/m16def.inc"
                
                .CSEG
                .ORG    0
                
                ldi     r16, 0xFF
                out     DDRD, r16
                out     PORTD, r16
