# This is your main script.

import esp
import machine
import time
import network
#import passes
import network
from uosc.client import Bundle, Client, create_message
'''
def do_connect():
    networkID = passes.wifiID
    networkPass = passes.wifiPass
    #comment the two lines right above
    #uncomment the two lines right below
    #networkID = passes_template.wifiID
    #networkPass = passes_template.wifiPass
    wlan = network.WLAN(network.STA_IF)
    wlan.active(True)
    if not wlan.isconnected():
        print("connecting to network...")
        
        while not wlan.isconnected():
            print("notyet")
            print(networkID)
            print(networkPass)
            wlan.connect(networkID, networkPass)

    print("network config:", wlan.ifconfig())
'''

def main():

    def do_connect():
        networkID = passes.wifiID
        networkPass = passes.wifiPass
        #comment the two lines right above
        #uncomment the two lines right below
        #networkID = passes_template.wifiID
        #networkPass = passes_template.wifiPass
        wlan = network.WLAN(network.STA_IF)
        wlan.active(True)
        if not wlan.isconnected():
            print("connecting to network...")
            wlan.connect(networkID, networkPass)

            while not wlan.isconnected():
                pass
                #print("notyet")
                #print(networkID)
                #print(networkPass)
                #wlan.connect(networkID, networkPass)

        print("network config:", wlan.ifconfig())
        return wlan
    
    do_connect()

    osc = Client('192.168.0.255', 9001)
    #osc.send('/controls/frobnicator', 42, 3.1419, "spamm")
    b = Bundle()
    b.add(create_message("/foo", "test"))
    b.add(create_message("/spamm", 12345))
    while 1:
        osc.send(b)

    #wlan = do_connect()
       
if __name__ == '__main__':
    print("main entered")
    #esp.osdebug(0)
    main()

'''
import passes
#to use this in your local network, comment the line above and 
#uncomment the line below.
#in file "passes_template.py" add the information about your network
#import passes_template



    
    
'''
