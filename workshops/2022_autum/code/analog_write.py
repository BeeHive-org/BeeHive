from machine import Pin
from machine import PWM
import time

pwm0 = PWM(Pin(15))         # create PWM object from a pin
freq = pwm0.freq()         # get current frequency (default 5kHz)
trials = 5


for i in range(trials):
    for bright in range(0,1023,10):
        pwm0.duty(bright)
        time.sleep_ms(25)
    
    for  bright in range(1023,0,-10):
        pwm0.duty(bright)
        time.sleep_ms(25)
        
