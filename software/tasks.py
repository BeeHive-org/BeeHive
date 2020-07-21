import setup
import machine
import time
import serial


class Tasks:
    def __init__(self):
        print("started tasks")
        self.pins = setup.Pins()
        # hardware interface configuration
        self.stim1Pin = self.pins.dout25
        self.stim2Pin = self.pins.dout26
        self.trigger =  self.pins.dout32
        self.ser = serial.Serial()
        # physical button to start running task
        self.runButton = self.pins.din12

        ##task parameters
        ## number of trials
        self.numTrials = 10
        ## interval between trials (in milliseconds)
        self.iti = 1000
        ## interval between stimulus (in milliseconds)
        self.isi = 500
        ## stimulus1 duration (in milliseconds)
        self.stim1Dur = 50
        ## stimulus2 duration (in milliseconds)
        self.stim2Dur = 100

    def interval(self, duration=100, funcs=None):

        # little excerpt to be expanded later
        # the idea is to pass an object with functions that can be executed
        # in the timing part of this routine
        # try:
        #    len(funcs)
        #    funcsLen = 0
        # except:
        #    funcsLen = len(funcs)

        duration = duration * 1000 # move duration to microseconds
        startTiming = time.ticks_us()  # get microsecond counter
        stopTiming = time.ticks_us()  # get microsecond counter
        while stopTiming - startTiming < duration:
            
            stopTiming = time.ticks_us()


    def task1(self):
        for i in range(self.numTrials):
            # start with an ITI
            self.interval(duration=self.iti)
            # send a triger signal and stimulus 1 signal and run the interval runs
            self.trigger.value(1)
            self.stim1Pin.value(1)
            self.interval(duration=self.stim1Dur)
            self.stim1Pin.value(0)
            self.trigger.value(0)
            # wait for the interstimulus interval
            self.interval(duration=self.isi)
            # do the same for stimulus 2
            self.trigger.value(1)
            self.stim2Pin.value(1)
            self.interval(duration=self.stim1Dur)
            self.stim2Pin.value(0)
            self.trigger.value(0)
            # wait for the interstimulus interval
            self.interval(duration=self.isi)

    def startTasks(self):

        ran = 0
        while ran < 50:
            # test to see what is the status of the signal button
            self.startSignal = self.runButton.value()
            
            ran = ran+1
            ##print("ran: "+ str(ran))

            serialSignal = self.ser.readDataPoll(timeout=100)
            ##print("raw: ")
            ##print(serialSignal)

            serialSignal = serialSignal.decode()
            
            ##print(serialSignal[0])

            print(serialSignal[0]=="A")
            print(serialSignal[0]=="a")

            # if the button was pressed, or if a signal came from the serial port, start the task
            if self.startSignal == 1:
                self.task1()
                print("task 1 completed")
            if serialSignal[0] == "A":
                self.task1()
                print("task A completed")
            if serialSignal[0] == "X":
                ran = 50
                print("exiting")
            
        return
