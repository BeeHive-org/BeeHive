from machine import Pin
import network

# import uosc
import machine
from uosc.client import Bundle, Client, create_message
import time
import passes
import uarray


def main():
    # set timing variables:
    timePeriod = 20  # time in milliseconds between each data sending
    startTiming = 0
    stopTiming = 0

    # set variables for uosc client
    microsDelay = 20 * 1000  #  time delay in microseconds
    bonsaiAddress = "192.168.137.255"
    commPort = 9001
    digitalSend = "/digitalInput"
    digitalReceive = "/digitalOutput"

    # create osc client object
    osc = Client(bonsaiAddress, commPort)
    # set Digital pins

    # Digital output
    p0 = Pin(32, Pin.OUT)  # currently beehive D0 is IO32
    p1 = Pin(33, Pin.OUT)  # currently beehive D1 is IO33
    p2 = Pin(25, Pin.OUT)  # currently beehive D2 is IO25
    p3 = Pin(26, Pin.OUT)  # currently beehive D3 is IO26

    # index of pins set as output
    pinOutList = [p0, p1, p2, p3]
    pinOutIndex = [0, 1, 2, 3]
    # pinOutNum = [0,1,2,3]

    # digital input
    # p4 = Pin(27, Pin.IN) # currently beehive D4 is IO27
    p5 = Pin(14, Pin.IN)  # currently beehive D5 is IO14
    # p6 = Pin(12, Pin.IN) # currently beehive D6 is IO12
    # p7 = Pin(13, Pin.IN) # currently beehive D7 is IO13

    # index of pins set as input
    pinInList = [p5]  # [p4,p5,p6,p7]
    pinInIndex = [5]  # [4,5,6,7]

    # Analog input

    # although attenuation allows 3.6V to be the max range, 3.3V should be the MAX send to the board!!!
#    adc0 = machine.ADC(34) # currently beehive D7 is IO13
#    adc0.atten(machine.ADC.ATTN_11DB)    # set 11dB input attenuation (voltage range roughly 0.0v - 3.6v)
#    adc1 = machine.ADC(34) # currently beehive D7 is IO13
#    adc1.atten(machine.ADC.ATTN_11DB)    # set 11dB input attenuation (voltage range roughly 0.0v - 3.6v)
#    adc2 = machine.ADC(34) # currently beehive D7 is IO13
#    adc2.atten(machine.ADC.ATTN_11DB)    # set 11dB input attenuation (voltage range roughly 0.0v - 3.6v)
#    adc3 = machine.ADC(34) # currently beehive D7 is IO13
#    adc3.atten(machine.ADC.ATTN_11DB)    # set 11dB input attenuation (voltage range roughly 0.0v - 3.6v)


    # index of pins set as analog
    # pinsAnalogInList = [adc0,adc1,adc2,adc3]

    # analog output (actually PWM):
    # dac0 = 1
    # dac1 = 2
    # dac2 = 3
    # dac4 = 4

    # create bundle
    b = Bundle()
    # infinite loop

    while 1:

        # receive message from OSC
        dummie = 0
        # if there is a specific message break the scanning loop
        if dummie != 0:
            break

        # temp variable to store digital input values
        temp = 0

        startTiming = time.ticks_us()  # get microsecond counter
        # loop to scan input pins

        # tic1 = time.ticks_us()
        for i in range(len(pinInList)):
            # print(i)
            # print(pinInList[i].value())
            if pinInList[i].value() == 1:
                temp = temp + (2 ** pinInIndex[i])
            # print(temp)
        # toc1 = time.ticks_us()
        # print("getting all dig in ports took: "+str(toc1-tic1)+ " microseconds" )
        # print(toc1-tic1)
        # temp = bytes(temp)
        temp = uarray.array("B", [10, 32, 10, 20, 10, 10])
        msg = create_message(digitalSend, ("b", temp))
        b.add(msg)
        tic2 = time.ticks_us()
        osc.send(b)
        osc.close()
        del temp
        toc2 = time.ticks_us()
        print("sending took: " + str(toc2 - tic2) + " microseconds")
        x = 0
        while (
            stopTiming - startTiming < timePeriod * 1000
        ):  # convert milliseconds in microseconds
            # read digital port
            stopTiming = time.ticks_us()
        # time.sleep(0.001)

    # analog input pins
    # for i in range(len(pinsAnalogInList)):
    #    print(i)
    #    print(pinsAnalogInList[i].adc.read_u16())
    # do not forget to actually send the adc read info.

    # send message out with pins state

    # listen for message setting pins
    return


# automatically start main

# if __name__ == '__main__':
#    print("main entered")
#    #esp.osdebug(0)
#    main()


def reset():
    machine.reset()
    return
