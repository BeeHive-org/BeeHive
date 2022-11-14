import machine
import time




led1 = machine.Pin(15,machine.Pin.OUT)
button1 = machine.Pin(16,machine.Pin.IN)
trials = 10



for i in range(trials):
    led1.value(1)
    
    while button1.value()==0:
        1
    led1.value(0)
    time.sleep_ms(25)
    print("button pressed!")
    time.sleep_ms(250)

    

