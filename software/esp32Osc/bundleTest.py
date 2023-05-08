from machine import Pin
import network

# import uosc
import machine
from uosc.client import Bundle, Client, create_message
import time
import passes
import uarray


def Sending():
    # set timing variables:
    timePeriod = 20  # time in milliseconds between each data sending
    startTiming = 0
    stopTiming = 0

    # set variables for uosc client
    microsDelay = 20 * 1000  #  time delay in microseconds
    digitalSend = "/digitalInput"
    digitalReceive = "/digitalOutput"

    # create osc client object
    osc = Client(passes.OscComputerAddress, passes.commPort)
    # set Digital pins

    # create bundle
    b = Bundle()
    # infinite loop
    
    temp = uarray.array("B", [10, 32, 10, 20, 10, 10]) # B for unsignet char
    msg = create_message(digitalSend, ("b", temp)) #b for bytearray
        
    b.add(msg)

    while 1:
        startTiming = time.ticks_us()  # get microsecond counter
        # loop to scan input pins

        tic2 = time.ticks_us()
        osc.send(b)
        osc.close()
        toc2 = time.ticks_us()
        print("sending took: " + str(toc2 - tic2) + " milis")
        time.sleep(0.01)
    # listen for message setting pins
    return

def reset():
    machine.reset()
    return

