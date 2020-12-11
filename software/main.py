#import network
#import time
#import setup
#import serial
#import tasks
import machine
import passes
import network

class Main:
    def reset(self):
        machine.reset()
        return

    # connect to wifi and setup osc
    def do_connect():
        networkID = passes.wifiID
        networkPass = passes.wifiPass
        # comment the two lines right above
        # uncomment the two lines right below
        # networkID = passes_template.wifiID
        # networkPass = passes_template.wifiPass
        wlan = network.WLAN(network.STA_IF)
        wlan.active(True)
        if not wlan.isconnected():
            print("connecting to network...")
            wlan.connect(networkID, networkPass)

            while not wlan.isconnected():
                print("notyet")
                print(networkID)
                # print("notyet")
                # print(networkID)
                # print(networkPass)
                # wlan.connect(networkID, networkPass)

        print("network config:", wlan.ifconfig())
        return wlan


#do_connect()
#import webrepl
#webrepl.start()

# print(webrepl)
#test = main.Main()