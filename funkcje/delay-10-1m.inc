Delay10D1M:     ldi     r16, 249
                
Delay10D1MA0:   nop
                dec     r16
                brne    Delay10D1MA0
                
                sbiw    r24, 1
                brne    Delay10D1M
                
                ret
