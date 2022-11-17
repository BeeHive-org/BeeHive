import network
import webrepl
#import webrepl_setup



def do_connect():
    import network
    wlan = network.WLAN(network.STA_IF)
    wlan.active(True)
    if not wlan.isconnected():
        print('connecting to network...')
        
        
        wlan.connect('zhotspot', 'wifijunkie1')
        
        
        while not wlan.isconnected():
            pass
            #print('notyet')

    print('network config:', wlan.ifconfig())


do_connect()

webrepl.start()
#webrepl.start()
#print(webrepl)