all:
	make --no-print-directory example-gpio-1
	make --no-print-directory example-gpio-2
	make --no-print-directory example-timer0-1
	make --no-print-directory example-timer0-2

example-gpio-1: asm/example-gpio-1.asm
	@ ./avr-compile.bash asm/example-gpio-1.asm

example-gpio-2: asm/example-gpio-2.asm funkcje/delay-10-1m.inc
	@ ./avr-compile.bash asm/example-gpio-2.asm

example-timer0-1: asm/example-timer0-1.asm funkcje/delay-11-1m.inc
	@ ./avr-compile.bash asm/example-timer0-1.asm

example-timer0-2: asm/example-timer0-2.asm funkcje/delay-11-1m.inc
	@ ./avr-compile.bash asm/example-timer0-2.asm

clean:
	rm -rf hex
