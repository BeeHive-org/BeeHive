from machine import UART
import uselect
'''
test for serial communication
here we just create a serial object that will take in data to be parsed and sent over the serial port
'''
print("imported")
class SerialTest:
    ''' simple class to constantly read and write serial data
        for test purposes only'''
    def __init__(self,baudRate=115200):
        self.baudRate = baudRate
        print("here")
        # the next line creates the uart object and sets uart 1 to be used with pins
        # 1 and 3, which are normally dedicated to uart 0 and locked to REPL.
        # with this code we bypass that and allow communication via the USB cable 
        
        self.uart =UART(1, tx=1, rx=3,
                        baudrate = self.baudRate, 
                        bits=8,
                        parity=None,
                        stop=1)
        
        self.uart.init()

    def writeData(self, data2Write="m"):
        '''write data to port without considering if there is anyone listening on the other side'''
        self.uart.write(data2Write)
        return
    
    def readData(self,amount2Read=0):
        '''use poll method to see how many characters are available for reading, 
        read them, and return it
        OBS: need to learn what is the UART buffer size and implement controls on the PC side'''
        poll = uselect.poll()
        poll.register(uart, uselect.POLLIN)
        
        #timeout=-1 polls the port indefintely. poll.poll returns  a list of tuples that need to be worked on 
        data = poll.poll(timeout=-1)
        
        print(data)
        #add if statement to make use of poll
        #readData = self.uart.read(amount2Read)
        #print(readData)
        #return readData