
import setup
import machine
import time
from serial import Serial

class Tasks:
    """example class to start creating different tasks and ways to start them based on user interface"""

    def __init__(self):
        self.pins = setup.Pins()
        
        #hardware interface configuration
        self.stim1Pin = self.pins.dout25
        self.stim2Pin = self.pins.dout26
        self.trigger = self.pins.dout32
        self.ser = Serial()
        #physical button to start running task
        self.runButton = self.pins.din12
        
        #task parameters
        # number of trials 
        self.numTrials = 10
        # interval between trials (in milliseconds)
        self.iti = 1000
        # interval between stimulus (in milliseconds)
        self.isi = 500
        # stimulus1 duration (in milliseconds)
        self.stim1Dur = 50
        # stimulus2 duration (in milliseconds)
        self.stim2Dur = 100
        
        return


    def task1(self):
        for i in range(self.numTrials):
            #start with an ITI
            self.interval(duration=self.iti)

            #send a triger signal and stimulus 1 signal and run the interval runs
            self.trigger.value(1)
            self.stim1Pin.value(1)
            self.interval(duration=self.stim1Dur)
            self.stim1Pin.value(0)
            self.trigger.value(0)

            #wait for the interstimulus interval
            self.interval(duration=self.isi)

            #do the same for stimulus 2
            self.trigger.value(1)
            self.stim2Pin.value(1)
            self.interval(duration=self.stim1Dur)
            self.stim2Pin.value(0)
            self.trigger.value(0)

            #wait for the interstimulus interval
            self.interval(duration=self.isi)
        
        return

    def interval(self,duration=self.iti,funcs=None):
        
        #little excerpt to be expanded later
        #the idea is to pass an object with functions that can be executed
        #in the timing part of this routine
        #try:
        #    len(funcs)
        #    funcsLen = 0
        #except:
        #    funcsLen = len(funcs)
        
        startTiming = time.ticks_us()*1000 # get microsecond counter    
        stopTiming = time.ticks_us()*1000 # get microsecond counter
        while stopTiming-startTiming<duration:
            stopTiming = time.ticks_us()*1000
        
        return



    def startTask1(self):
        ran = 0
        while ran == 0:
            #test to see what is the status of the signal button
            self.startSignal = self.runButton.value()
            self.serSignal = self.ser.readData()#@sdkjdsfk
            print(self.serSignal)
            #if the button was pressed, or if a signal came from the serial port, start the task
            if self.startSignal == 1#or self.serSignal == "a":
                self.task1()
                ran = 1
                print("task 1 completed")
        
        return
        
