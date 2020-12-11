__author__ = 'beau'
#the esp32 does not have pyb library, so we use time and other libraries needed
#import pyb
import time

class PID:
    """
    Discrete PID control
    """

    def __init__(self,input_fun,set_point, P=3., I=0.01, D=0.0):

        self.Kp=P
        self.Ki=I
        self.Kd=D

        self.I_value = 0
        self.P_value = 0
        self.D_value = 0

        self.I_max=100.0
        self.I_min=0

        self.set_point=set_point

        self.prev_value = 0

        self.output = 0

        #self.output_fun = output_fun
        self.input_fun = input_fun

        self.last_update_time = time.ticks_ms()


    def update(self):

        if time.ticks_ms()-self.last_update_time > 800:
            """
            Calculate PID output value for given reference input and feedback
            """
            current_value = self.input_fun()
            print(current_value)
            self.error = self.set_point - current_value
            print ('temp '+str(current_value))
            print ('SP'+str(self.set_point))

            self.P_value = self.Kp * self.error
            self.D_value = self.Kd * ( current_value-self.prev_value)


            lapsed_time = time.ticks_ms()-self.last_update_time
            lapsed_time/=1000. #convert to seconds
            self.last_update_time = time.ticks_ms()

            self.I_value += self.error * self.Ki

            if self.I_value > self.I_max:
                self.I_value = self.I_max
            elif self.I_value < self.I_min:
                self.I_value = self.I_min

            self.output = self.P_value + self.I_value - self.D_value
            
            print("raw_output: " + str(self.output))
            if self.output<0:
                self.output = 0.0
            if self.output>100:
                self.output = 100.0

            #print("Setpoint: "+str(self.set_point))
            print("P: "+str(self.P_value))
            print("I: "+str(self.I_value))
            print("D: "+str(self.D_value))
            print("Output: "+str(self.output))
            

            #self.output_fun(self.output/100.0)

            self.last_update_time=time.ticks_ms()
            return self.output
