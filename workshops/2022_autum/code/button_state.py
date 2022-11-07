#read the state of a button
#small script to read the state of a button on the beehive course



from machine import Pin
import time

button5 = Pin(5,Pin.IN)
timeWait = 1000

for i in range(2000):
    buttonState = button5.value()
    print(buttonState)
    time.sleep_ms(10)

