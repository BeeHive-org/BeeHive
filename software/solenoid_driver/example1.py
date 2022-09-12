from machine import Pin
import time

sole1 = Pin(2,Pin.OUT,drive=Pin.DRIVE_3)
sole2 = Pin(15,Pin.OUT,drive=Pin.DRIVE_3)
sole3 = Pin(16,Pin.OUT,drive=Pin.DRIVE_3)
sole4 = Pin(17,Pin.OUT,drive=Pin.DRIVE_3)
timeOn=1000
timOff=500
for i in range(5):
    print("loop: "+str(i+1))
    sole1.on()
    time.sleep_ms(timeOn)
    sole1.off()
    time.sleep_ms(timOff)
    
    sole2.on()
    time.sleep_ms(timeOn)
    sole2.off()
    time.sleep_ms(timeOff)
    
    sole3.on()
    time.sleep_ms(timeOn)
    sole3.off()
    time.sleep_ms(timOff)
    
    sole4.on()
    time.sleep_ms(timeOn)
    sole4.off()
    time.sleep_ms(timOff)

