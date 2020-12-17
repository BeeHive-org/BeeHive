# This is a fragment but it gives a complete information about changes implemented. They may not be needed on ESP32 though

# PID class
class PID:
    def __init__ (self):
        # self.sensor = st.DS18B20()
        # create PWM pin and set the duty cycle to 0
        # self.freq = 20000
        self.duty = 0
        # self.pinNum = 2
        # self.pwm = self.setup_pwm_pin()
        # Run time in minutes
        run_time = 10.0*2
        self.waitTime = 1
        
        # Temperature (C)
        self.setPoint = 0#setPoint # variable for a set point temperature
        self.timeNow = time.time()
        #Tsp = self.setPoint

        # Upper and Lower limits on output
        self.outputHi = 100.0
        self.outputLow = 0.0
        # (loops) * sp_temp # set point
        
    def start_PID(self):

        self.f = open('/home/pi/Desktop/output.txt', 'w')
        ######################################
        # PID configuration
        ######################################
        # From first-order plus dead-time (FOPDT) regression 
        self.kp = 0.5#0.3622#10.67#
        self.taup = 3
        #thetap = 16.00

        # PID Tuning Parameters
        self.Kc = 1.0/self.kp  # * 2.0 # controller gain
        self.tauI = self.taup  # / 2.0 # reset time
        self.tauD = 0.1 #0.0 # 

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
        self.timeNow - time.time()
        self.lastTime = time.time()
    def update(self,setPoint):
        self.setPoint = setPoint
        
        #wait before a minimal time between reads has passed
        # here it is 750 ms because the temp sensor needs time to update
        while self.timeNow-self.lastTime < self.waitTime:
            self.timeNow = time.time()
        
        self.dt = self.timeNow-self.lastTime
        self.lastTime = self.timeNow
          
        # Read temperature in Celsius
        currentTemp = float(ui.peltiergettempcallback()) # uitilizing ui instance from the main loop
        # currentTemp.peltiergettempcallback()
        # currentTemp = self.sensor.read_ds_sensor()
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
        self.output = self.P + self.I + self.D
        if self.output > self.outputHi:  # check upper limit
            self.output = self.outputHi
            self.ie = self.ie - self.e * self.dt # anti-reset windup
        if self.output < self.outputLow:  # check lower limit
            self.output = self.outputLow
            self.ie = self.ie - self.e * self.dt # anti-reset windup
        #Vin = self.output

        # Write output in percent of duty cycle (0-100%)
        self.dutyCycle = int((255 * self.output / 100)) ;
        #self.dutyCycle = int(min(self.outputHi,max(self.outputLow,self.output)))
        #self.pwm.duty(self.dutyCycle)

        
        print("dutyCycle: " + str(self.dutyCycle))
        print("output: " + str(self.output))
        print("temp: " + str(currentTemp))
        print("P: " + str(self.P))
        print("I: " + str(self.I))
        print("D: " + str(self.D))
        print("setpoint " + str(self.setPoint))
        self.f = open('/home/pi/Desktop/output.txt', 'a')
        self.f.write('dutyCycle: ' +repr(self.dutyCycle)+'\n' +
                     "output: " + repr(self.output) + '\n' +
                     "temp: " + repr(currentTemp) + '\n' +
                     "P: " + repr(self.P) + '\n' +
                     "I: " + repr(self.I) + '\n' +
                     "D: " + repr(self.D) + '\n' +
                     "setpoint " + repr(self.setPoint) + '\n')
        #self.pwm.duty(int(output))
        ui.peltiercom(self.dutyCycle)
        return self.dutyCycle

    '''def setup_pwm_pin(self):
        pin = machine.Pin(self.pinNum)
        pwm = machine.PWM(pin)
        pwm.freq(self.freq)
        pwm.duty(self.duty)
        return pwm'''

    def run(self):
        self.start_PID()
        for i in range(500):
            print("round: " + str(i))
            self.update(12.0)    
