# This is script that run when device boot up or wake from sleep.

import main

import passes

# to use this in your local network, comment the line above and
# uncomment the line below.
# in file "passes_template.py" add the information about your network
# import passes_template

import network
from uosc.client import Bundle, Client, create_message


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
    print("network config:", wlan.ifconfig())

    return wlan


do_connect()


"""
osc = Client('192.168.4.2', 9001)
osc.send('/controls/frobnicator', 42, 3.1419, "spamm")
b = Bundle()
b.add(create_message("/foo", bar))
b.add(create_message("/spamm", 12345))

osc.send(b)

"""
