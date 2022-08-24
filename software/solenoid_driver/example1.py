from machine import Pin
import time

sole1 = Pin(2,Pin.OUT,drive=Pin.DRIVE_3)
sole2 = Pin(15,Pin.OUT,drive=Pin.DRIVE_3)
sole3 = Pin(16,Pin.OUT,drive=Pin.DRIVE_3)
sole4 = Pin(17,Pin.OUT,drive=Pin.DRIVE_3)

for i in range(10):
    print("loop: "+str(i+1))
    sole1.on()
    time.sleep_ms(500)
    sole1.off()
    time.sleep_ms(100)
    
    sole2.on()
    time.sleep_ms(500)
    sole2.off()
    time.sleep_ms(100)
    
    sole3.on()
    time.sleep_ms(500)
    sole3.off()
    time.sleep_ms(100)
    
    sole4.value(1)
    time.sleep_ms(500)
    sole4.value(0)
    time.sleep_ms(100)

