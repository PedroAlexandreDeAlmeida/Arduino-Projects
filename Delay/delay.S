#define __SFR_OFFSET 0x00
#include <avr/io.h>

.global my_config
.global asmloop
.global asmloop2
.global delay100

my_config:
ldi r18, 0x20 //carrega o valor 20h no registrador 18
out DDRB, r18 //seta o pino 5 do PORTB
ret

asmloop:
sbi PORTB, 5 //seta 1 no pino 5
ret

asmloop2:
cbi PORTB, 5 //seta 0 no pino 5
ret

delay100:
ldi r17, 200

rep1:
ldi r16, 250

rep2:
nop //28 no operations
nop
nop
nop
nop
nop
nop 
nop
nop
nop
nop
nop
nop 
nop
nop
nop
nop
nop
nop 
nop
nop
nop
nop
nop
nop 
nop
nop
nop
dec r16
breq rep3
rjmp rep2

rep3:

dec r17
breq fim
rjmp rep1

fim:
ret
