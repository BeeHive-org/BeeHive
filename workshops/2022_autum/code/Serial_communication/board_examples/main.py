#demo

import random
import utime


DATA={} #this will gather all the data from the channels
SENSOR_MONITOR={0:0,1:0,2:0} #this will track change
MINUS=utime.time()

def getLen():
    print(len(DATA))

def addToData(M=0):
    global DATA
    #this is where the sensors would be read and any changes would be added here
    DATA[str(utime.time()-M)]=[random.randint(0,3)]
    if len(DATA)>=100: #error prevention
        i=list(DATA.keys())
        DATA.pop(i)

def getData(channels=[]):
    global DATA
    print(DATA)
    DATA={}

def isEnded():
    a=["no" for i in range(50)]
    a.append("END")
    print(random.choice(a)) #randomly select whether the board is ended
def getSpeed(channels=[]):
    t1=utime.time()
    d={}
    for i in range(len(channels)):
        #utime.sleep(0.5)
        d[channels[i]]=random.randint(0,100)
    t2=utime.time()
    print(t2-t1)
