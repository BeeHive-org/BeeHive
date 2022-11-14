import machine
import time


led1 = machine.Pin(15,machine.Pin.OUT)
button1 = machine.Pin(16,machine.Pin.IN)
trials = 10



for i in range(trials):
    led1.value(1)
    
    timer1 = time.ticks_ms()
    timer2 = time.ticks_ms()
    
    while button1.value()==0:
        timer2 = time.ticks_ms()
    led1.value(0)
    print("button pressed!")
    reacTime = timer2-timer1
    print("reaction time: "+str(reacTime))
    time.sleep_ms(500)
    

