# Example 1 - using String?
# eval("Pin(13,Pin.OUT).value(0)")

# Example 2
# /function_name argv argc
# call function_name(argv,argc)

# Example 3
# Send the return value back to bonsai as a OSC message.

# Example 4
# Reactive Callback
# ex: Sample all analog countinuasly while receiving messages.

# Example 5
# use OSC timestamps in previous examples.

import network

try:
    import socket
except ImportError:
    import usocket as socket

try:
    import logging
except ImportError:
    import uosc.fakelogging as logging

    
from uosc.server import handle_osc
from machine import Pin
from uosc.client import Bundle, Client, create_message
import passes
    
log = logging.getLogger("uosc.minimal_server")
#DEFAULT_ADDRESS = '10.20.23.46'
#DEFAULT_ADDRESS = '192.168.1.141'
DEFAULT_ADDRESS = network.WLAN().ifconfig()[0]
DEFAULT_PORT = 9001
MAX_DGRAM_SIZE = 1472
osc = Client(passes.OscComputerAddress, passes.commPort)


def coustumFunction(pinNumber,pinMode,value):
    mypin = Pin(pinNumber,pinMode)
    mypin.value(value)
    return

def definePin(pinNumber,pinMode):
    mypin = Pin(pinNumber,pinMode)
    return mypin

def digitalWrite(mypin, value):
    mypin.value(value)
    return

def digitalRead(mypin):
    return mypin.value()

def digitalRead2(pinNumber):
    mypin = Pin(pinNumber)
    return mypin.value()

def analogRead(mypin):
    #check if there is a way to check if an assigned pin is capable of analog read
    pass

def analogWrite(mypin):
    #check if there is a way to check if an assigned pin is capable of analog write
    pass

# def pwm write

def dispatch (timetag, message):
    #Pin(13,Pin.OUT).value(0)
    print(timetag)
    print(message)
    if (message[0] == '/eval'):
        eval(message[2][0])
    #  send back return value of eval
    elif (message[0] == '/definePin'):
        test = definePin(message[2][0],eval(message[2][1]))
        print(test)
        osc.send('/definePin/return', repr(test))
    elif (message[0] == '/digitalRead'):
        test = digitalRead(eval(message[2][0]))
        print(test)
        osc.send('/digitalRead/return', test)
    elif (message[0] == '/digitalRead2'):
        test = digitalRead2(message[2][0])
        print(test)
        osc.send('/digitalRead2/return', test)
    elif (message[0] == '/coustumFunction'):
        coustumFunction(message[2][0],eval(message[2][1]), message[2][2])
    # send back return value of mycoustum funtion.
    else:
        print(message[0][1:])
        #eval(message[0][1:]+str(message[2]))
    return

def run_server(saddr = DEFAULT_ADDRESS, port = DEFAULT_PORT, handler=handle_osc):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    ai = socket.getaddrinfo(saddr, port)[0]
    sock.bind(ai[-1])
    log.info("Listening for OSC messages on %s:%i.", saddr, port)
    
    #osc = Client(passes.OscComputerAddress, passes.commPort)
    osc.send('/Server', "Start")
    # osc.send('/Interface/coustumFunction',,,) # send interface to bonsai
    # osc.send('/Server/Address',saddr,port) #see if this is usefull or redundant

    try:
        while True:
            data, caddr = sock.recvfrom(MAX_DGRAM_SIZE)
            if __debug__: log.debug("RECV %i bytes from %s:",
                                    len(data),data)
#            if __debug__: log.debug("RECV %i bytes from %s:%s",
#                                    len(data), *get_hostport(caddr))
            handler(data,caddr,dispatch)
    finally:
        sock.close()
        log.info("Bye!")