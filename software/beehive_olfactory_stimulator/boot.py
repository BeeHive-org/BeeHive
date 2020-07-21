import esp

esp.osdebug(None)
import network
import machine

# set cpu frequency to 240MHz
machine.freq(240000000)

# passes is a file that is not being tracked by github
# as it contains network sensitive data, such as login
# and password.
# a file named "passes_template.py" is provided instead.
# users should rename this file to "passes.py" and
# add the login information for their local networks.


import passes

# import serialtest


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
            pass
            # print("notyet")
            # print(networkID)
            # print(networkPass)
            # wlan.connect(networkID, networkPass)

    print("network config:", wlan.ifconfig())
    return wlan


do_connect()

import webrepl

webrepl.start()
# print(webrepl)

# import main

# main.main()
