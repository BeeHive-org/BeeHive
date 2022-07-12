#Place your info in the variables below
YOUR_IP="192.168.68.112"
YOUR_NETWORK_SSID=""
YOUR_PASSWORD=""
COM=80

#READ DATA FUNCTIONS PLACED BY USER
def readData():
    return random.randint(0,5)
def ended():
    #place your condition of what you want met
    return random.choice([True,False])
#connect to wifi
#
#
import network

def do_connect():
    #connect to the wifi network
    wlan = network.WLAN(network.STA_IF)
    wlan.active(True)
    if not wlan.isconnected():
        print('connecting to network...')
        wlan.connect(YOUR_NETWORK_SSID, YOUR_PASSWORD) # connect to an AP
        while not wlan.isconnected():
            pass
    print('network config:', wlan.ifconfig())
    
do_connect()


#communication listen part of the code
#
#
import socket
import select
import random
#connect to the correct socket
while 1: #keep reconnecting
    try:
        print("Attempting connect...")
        addr_info = socket.getaddrinfo(YOUR_IP, COM)
        addr = addr_info[0][-1]
        s = socket.socket()
        s.connect(addr)
        print("CONNECTED",addr)
        a=[]
        s.setblocking(0)

        while True:
            a.append(readData()) #get random values to emulate sensors
            ready = select.select([s], [], [], 0.2) #look for signal
            if ready[0]: #if signal found
                data = s.recv(500) #gather data
                if str(data, 'utf8')!="": #if data exists
                    val=(str(data, 'utf8'))#, end=''
                    #the send function can only send up to 32 bytes at a time
                    if val=="getData()":
                        s.send(bytes(str(a[0:10]), 'utf8')) #send reply
                        a=a[10:] #rmeove sent items
                    elif val=="getLen()": #ask for length
                        s.send(bytes(str(len(a)), 'utf8'))
                    elif val=="getEnded()":
                        if ended(): s.send(bytes("END", 'utf8')) #it has ended
                        else: s.send(bytes("False", 'utf8')) #it has not ended
                    else: s.send(bytes(" ", 'utf8')) #send empty reply
            if len(a)>100:
                a=a[100:] #replace older data for memory management
    except OSError: #keep trying to reconnect
        print("disconnection")
        
