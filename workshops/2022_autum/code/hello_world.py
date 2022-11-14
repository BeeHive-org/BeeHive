# hello world!
# little script to blink an LED for the BeeHive course

from machine import Pin
import time


led2 = Pin(15,Pin.OUT)

for i in range(10):
    print("LED on")
    led2.on()
    time.sleep_ms(1000)
    print("LED off")
    led2.off()
    time.sleep_ms(1000)
    