# This is your main script.
# import utime
# import machine

'''
def start_task():
    print("hello!")


class Task:
    def __init__(self):
        self.lickSensorPin = 1
        self.LEDPin = 2  # builtin led in this board is 2
        self.waterPumpPin = 3
        self.tonePin = 4

        self.lickSensorValue = 0

    def ITI(self, waitTime=2000, restart=1, monitorPins=[self.lickSensorPin]):
        """Inter trial implementation. 
        there is an optional flag to monitor"""
        # count time in milliseconds since board turned on
        time1 = utime.ticks_ms()
        time2 = time1
        elapsedTime = time2 - time1
        while elapsedTime < waitTime:
            # count time in ms
            time2 = utime.ticks_ms()
            elapsedTime = time2 - time1
            # get the values of the licksensor
            self.lickSensorValue = machine.ADC(self.monitorPins[0])

            # space holder for osc transmit data.
            # here we will transmit elapsed time and the status of the lick sensor

            if restart == 1 and self.lickSensorValue >= 512:
                # if there are licks, restart counting
                time1 = time2

    def LEDOn(self, LEDPin):

        # turn on led
        # enter while loop
        # count time
        # monitor lick port
        # if there was a lick, turn pump on, wait for a time, turn pump off
        # if there was no lick, wait
        # when monitoring time is over

        pass
'''
