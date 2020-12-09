######################################
# Original design by https://github.com/APMonitor/arduino
# modified for https://github.com/isobianin/BeeHive for ESP32
######################################

import machine
import time
import onewire
import ds18x20
import uarray
import sensor_test as st
# Connect to Arduino
#a = Arduino()

# Setup DS18B20 temperature sensor

#### !!!NOTE!!! Maybe this can be done via class and this way
# user will be able to easily channel all sensors avaialble?
#dsPinNum = 0  # D2-3 IO0

class PID:
    def __init__ (self):
        self.sensor = st.DS18B20()
        # create PWM pin and set the duty cycle to 0
        self.freq = 20000
        self.duty = 0
        self.pinNum = 2
        self.pwm = self.setup_pwm_pin()
        # Run time in minutes
        run_time = 10.0

        
        # Temperature (C)
        self.setPoint = 0#setPoint # variable for a set point temperature
        self.timeNow = time.ticks_ms()
        #Tsp = self.setPoint

        # Upper and Lower limits on output
        self.outputHi = 100.0
        self.outputLow = 0.0
        # (loops) * sp_temp # set point

    def start_PID(self):


        ######################################
        # PID configuration
        ######################################
        # From first-order plus dead-time (FOPDT) regression 
        self.kp = 9.9693#0.3622#10.67#
        self.taup = 137.85
        #thetap = 16.00

        # PID Tuning Parameters
        self.Kc = 1.0/self.kp  * 2.0
        self.tauI = self.taup  / 2.0
        self.tauD = 6.0579#0.0

        # storage for recording values

        self.output = 0  # controller output
        self.pv = 0  # process variable
        self.e = 0   # error
        self.ie = 0  # integral of the error
        self.dpv = 0 # derivative of the pv
        self.P = 0   # proportional
        self.I = 0   # integral
        self.D = 0   # derivative
        #self.time = time.time()
        # set points for controller
        #self.setPoint = setPoint
        #sp[5:200] = 320.0 was used for testing of changing set points
        #sp[200:] = 310.0
        self.timeNow - time.ticks_ms()
        self.lastTime = time.ticks_ms()
        self.waitTime = 750 # time to wait between reads in milliseconds
    
    def update(self,setPoint):
        self.setPoint = setPoint
        
        #wait before a minimal time between reads has passed
        # here it is 750 ms because the temp sensor needs time to update
        while self.timeNow-self.lastTime < self.waitTime:
            self.timeNow = time.ticks_ms()
        
        self.dt = self.timeNow-self.lastTime
        self.lastTime = self.timeNow
          
        # Read temperature in Kelvin 
        currentTemp = self.sensor.read_ds_sensor()
        # Temperature in Fahrenheit
        #Tf = (T[i]-273.0)*9.0/5.0+32.0            
        ##############################################
        # PID control
        ##############################################
            
        self.e = self.setPoint - currentTemp#pv[i]
        self.dpv = (currentTemp-self.pv)/self.dt
        self.ie = self.ie + self.e * self.dt # check brackets on this one
        self.pv = currentTemp
        self.P = self.Kc * self.e
        self.I = self.Kc/self.tauI * self.ie
        self.D = - self.Kc * self.tauD * self.dpv
        output = self.P + self.I + self.D
        if self.output > self.outputHi:  # check upper limit
            self.output = self.outputHi
            self.ie = self.ie - self.e * self.dt # anti-reset windup
        if self.output < self.outputLow:  # check lower limit
            self.output = self.outputLow
            self.ie = self.ie - self.e * self.dt # anti-reset windup
        #Vin = self.output

        # Write output in percent of duty cycle (0-100%)
        dutyCycle = int(min(self.outputHi,max(self.outputLow,self.output)))
        #self.pwm.duty(dutyCycle)


        print("dutycycle: " + str(dutyCycle))
        print("output: " + str(output))
        print("temp: " + str(currentTemp))
        print("P: " + str(self.P))
        print("I: " + str(self.I))
        print("D: " + str(self.D))
        return output

    def setup_pwm_pin(self):
        pin = machine.Pin(self.pinNum)
        pwm = machine.PWM(pin)
        pwm.freq(self.freq)
        pwm.duty(self.duty)
        return pwm