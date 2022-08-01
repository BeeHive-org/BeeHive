#TOO
#have sound class
#communicate with board via network
#https://docs.micropython.org/en/latest/esp32/quickref.html#networking



from mpremote import pyboard
import serial, time
import sys
import glob


class Board:
    def __init__(self):
        self.COM=None
        self.VALID_CHANNELS=[i for i in range(10)]
    def connect(self,com):
        """
        Connect to a com given
        @param com of serial port
        @param fileToRun is the file that executes on board to allow hardware interfacing

        """
        self.COM=pyboard.Pyboard(com) #connect to board
        self.COM.enter_raw_repl() #open for commands
        print("Successfully connected")
    def runFile(self,fileToRun='main.py'):
        """
        runFile allows the user to send a local file to the device and run it
        @param fileToRun is the file that will be locally installed
        """
        if self.COM==None:
            raise OSError("Connect to device before running file")
        self.COM.execfile(fileToRun) #run the file controlling the sensors
    def serial_ports(self):
        """
        Read the all ports that are open for serial communication
        @returns array of COMS avaliable
        """
        if sys.platform.startswith('win'):
            ports = ['COM%s' % (i + 1) for i in range(256)]
        elif sys.platform.startswith('linux') or sys.platform.startswith('cygwin'):
            # this excludes your current terminal "/dev/tty"
            ports = glob.glob('/dev/tty[A-Za-z]*')
        elif sys.platform.startswith('darwin'):
            ports = glob.glob('/dev/tty.*')
        else:
            raise EnvironmentError('Unsupported platform') #if the OS is not one of the main

        result = []
        for port in ports:
            try:
                s = serial.Serial(port)
                s.close()
                result.append(port)
            except (OSError, serial.SerialException):
                pass
        return result
    def readData(self,channels=[]):
        """
        Read data from the device on command
        """
        #validate channels
        for chan in channels:
            assert chan in self.VALID_CHANNELS, "Invalid channel "+str(chan)
        x1=time.time()
        data=self.COM.exec('getData('+str(channels)+')').decode("utf-8").replace("\r\n","")
        x2=time.time()
        print("Transmission speed",x2-x1)
        dic=eval(data)
        return data,x2-x1
    def getSpeed(self,channels=[]):
        """
        Test out the speed reading from this and the device
        """
        x1=time.time()
        data=self.COM.exec('getSpeed('+str(channels)+')').decode("utf-8").replace("\r\n","")
        x2=time.time()
        data=int(data)
        return x2-x1-data
    def record(self,time_interval=None,till=None,channels=[],gather=10):
        """
        Record data for a given time interval
        @PARAM time_interval will loop till a time interval (seconds) is reached
        @PARAM till will record till the sentence end is returned
        @PARAM
        @PARAM gather will pull the data from the board every n iterations
        """
        log=[] 
        if time_interval!=None and till!=None: print("You have entered a time interval and loop till. Default picking time")
        if time_interval!=None:
            #loop for given time gathering information from the board
            t1=time.time()
            #self.COM.exec('SENSOR_MONITOR').decode("utf-8").replace("\r\n","")
            while time.time()-t1<=time_interval:
                self.COM.exec_raw_no_follow('addToData()') 
                d=self.COM.exec('getLen()').decode("utf-8").replace("\r\n","")
                if d!="" and int(d)>gather:
                    print("pull")
                    data=self.COM.exec('getData('+str(channels)+')').decode("utf-8").replace("\r\n","") #decode data
                    dic=eval(data) #convert to a dictionary of items
                    log.append(dic)
        elif till==True:
            #loop till
            #record until "end" 
            seq="no"
            while seq!="END":
                self.COM.exec_raw_no_follow('addToData()') 
                d=self.COM.exec('getLen()').decode("utf-8").replace("\r\n","")
                if d!="" and int(d)>gather:
                    print("pull")
                    data=self.COM.exec('getData('+str(channels)+')').decode("utf-8").replace("\r\n","") #decode data
                    dic=eval(data) #convert to a dictionary of items
                    log.append(dic)
                seq=self.COM.exec('getEnded()').decode("utf-8").replace("\r\n","")
        print(log)


"""
Open sound board allows wireless programming
"""
import socket

class openSoundBoard:
    def __init__(self,ip='0.0.0.0',com=80):
        self.ip=ip
        self.com=com
        self.s=socket.socket()
        self.s.bind((ip,com))
        self.s.listen(0)
        print("Connecting...")
        self.client,self.addr=self.s.accept()
        print("Connected.")
    def send(self,message):
        """
        @PARAM message is a string of the message you want sent
        """
        self.client.send(bytes(message, "utf-8"))
    def get(self):
        content=""
        content = self.client.recv(32)
        return str(content, 'utf8')
    def getData(self,data):
        self.send(data)
        return self.get()
    def close(self):
        self.client.close()
    def record(self,time_interval=None,till=None,gather=10):
        """
        Record data for a given time interval
        @PARAM time_interval will loop till a time interval (seconds) is reached
        @PARAM till will record till the sentence end is returned
        @PARAM
        @PARAM gather will pull the data from the board every n iterations
        """
        log=[] 
        if time_interval!=None and till!=None: print("You have entered a time interval and loop till. Default picking time")
        if time_interval!=None:
            #loop for given time gathering information from the board
            t1=time.time()
            #self.COM.exec('SENSOR_MONITOR').decode("utf-8").replace("\r\n","")
            while time.time()-t1<=time_interval:
                d=self.getData("getLen()")
                if d!="" and int(d)>gather:
                    print("pull")
                    data=self.getData('getData()')#decode data
                    log.append(data)
        elif till==True:
            #loop till
            #record until "end" 
            seq="no"
            while seq!="END":
                d=self.getData("getLen()")
                if d!="" and int(d)>gather:
                    print("pull")
                    data=self.getData('getData()')#decode data
                    log.append(data)
                seq=self.getData('getEnded()')
        print(log)

"""  
o=openSoundBoard()
print(o.getData("Hello, world!"))

o.record(till=True)

            
b=Board()
#print(b.serial_ports())
b.connect('COM9')
b.runFile()
#print(b.readData(channels=[1,2,3,3,4]))
b.record(time_interval=20,channels=[1,2,3,3,4])





#speed reading test
averages=[]
for i in range(1,10):
    av=[]
    for j in range(3):
        #av.append(b.getSpeed(channels=[x for x in range(i)]))
        a,_=b.readData(channels=[x for x in range(i)])
        av.append(_)
    av=sum(av)/len(av)
    averages.append(av)
import matplotlib.pyplot as plt
plt.plot([i for i in range(1,10)],averages)
plt.xlabel("Data package num of items")
plt.ylabel("Time (seconds)")
plt.title("Data package size vs time it takes for transmission")
plt.show()
#"""
