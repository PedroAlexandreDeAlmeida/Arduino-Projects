#define __SFR_OFFSET 0x00  
#include <avr/io.h>

.global my_config 
.global asmloop
.global asmloop2
.global delay100

my_config:

    ldi r18, 0x20         
    out DDRB, r18
    ldi r18, 0x04         
    out PORTC, r18
    ret

asmloop:

loop_start:
    sbis PINC, 3          
    rjmp led_on
    cbi PORTB, 5          
    rjmp loop_start

led_on:
    sbi PORTB, 5         
    rcall delay100
    cbi PORTB, 5          
    rcall delay100
    rjmp loop_start         
 


delay100:
    ldi r17, 200
  
rep1:
    ldi r16,250

rep2: 
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
