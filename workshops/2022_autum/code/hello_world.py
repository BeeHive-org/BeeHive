import machine
import time

timer1 = 0
timer2 = 0

led1Pin = 15
led2Pin = 2
button1Pin = 16
trials = 10

button1 = machine.Pin(button1Pin,machine.Pin.IN)

led1 = machine.Pin(led1Pin,machine.Pin.OUT)
led2 = machine.Pin(led2Pin,machine.Pin.OUT)

timer1 = time.ticks_ms()

for attempt in range(trials):
    print(button1.value())
    time.sleep_ms(1000)

timer2 = time.ticks_ms()

print(timer2-timer1)