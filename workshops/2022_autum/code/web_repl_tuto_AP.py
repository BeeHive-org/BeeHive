import network
import webrepl
#import webrepl_setup

def do_connect():
    #import network

    ap = network.WLAN(network.AP_IF)
    ap.active(True)
    ap.config(essid="esp32",
              authmode=network.AUTH_WPA_WPA2_PSK,
              password="esp32111")
    

    #while ap.active() == False:
    #  pass

    print("Connection successful")
    print(ap.ifconfig())

do_connect()
webrepl.start()
