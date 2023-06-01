from machine import Pin
import network

# import uosc
import machine
from uosc.client import Bundle, Client, create_message
import time
import passes
import uarray

def Sending():
    print("Ola")
    osc = Client(passes.OscComputerAddress, passes.commPort)
    osc.send('/typemashup', 42, 3.1419, "spamm")
    b = Bundle()
    b.add(create_message("/spamm", 12345))
    bar = "Ola"
    b.add(create_message("/foo", bar))
    
    temp = uarray.array("B", [10, 32, 10, 20, 10, 10]) # B for unsigned Char
    b.add(create_message("/digitalSend", ("b", temp))) #b is for byte and byteArray
    
    osc.send(b)
    return
