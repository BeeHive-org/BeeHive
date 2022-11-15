#analog_read


from machine import Pin
from machine import ADC
## alternatively you could import both libraries at once:
#from machine import Pin, ADC
import time

pot = ADC(Pin(25))
pot.atten(ADC.ATTN_11DB)  #Full range: 3.3v

for i in range(2000):
  pot_value = pot.read()
  print(str(pot_value*0.0008)+" volts")
  time.sleep_ms(10)