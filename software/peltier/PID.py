######################################
# Original design by https://github.com/APMonitor/arduino
# modified for https://github.com/isobianin/BeeHive for ESP32
######################################

import machine
import time
import onewire
import ds18x20
import uarray

# Connect to Arduino
#a = Arduino()

# Setup DS18B20 temperature sensor

#### !!!NOTE!!! Maybe this can be done via class and this way
# user will be able to easily channel all sensors avaialble?
#dsPinNum = 0  # D2-3 IO0


#find temperature sensors and return the sensor object
def start_sensors(dsPinNum = 0):
    dsPin = machine.Pin(dsPinNum)
    dsSensor = ds18x20.DS18X20(onewire.OneWire(dsPin))
    roms = dsSensor.scan()
    print('Found DS devices: ', roms)
    return dsSensor


# Read temperature process
def read_ds_sensor(dsSensor):
    #roms = dsSensor.scan()
    dsSensor.convert_temp()
    for rom in dsSensor.scan():
        temp = dsSensor.read_temp(rom)
        if isinstance(temp, float):
            temp = round(temp, 2)
            print('Valid temperature')
            return temp
    return '0'    # This function returns 0 in case when ds_sensor.read_temp(rom) returns value that
  # cannot fall under the next "if" statement. To put it simply, when there are no sensors connected, it returns 0

def start_PID(pin=2,temp=35):
    # Run time in minutes
    run_time = 10.0

    # Number of cycles
    loops = int(60.0*run_time)
    print("loops: " +str(loops))
    # Temperature (C)
    sp_temp = temp # variable for a set point temperature

    Tsp = [sp_temp]*loops#uarray.array("f"[sp_temp]*loops)
    # (loops) * sp_temp # set point
    ####!!!NOTE!!! Is it really supposed to call the read function? It looks like it should just be initialised with ones or zeros
    #uarray.array(typecode[, iterable])
    T = [1]*loops #np.ones(loops) * read_ds_sensor() # measured T
    #T = np.ones(loops) # measured T This is the line that should be placed instead of the one above, however it may not work, so it is left as it is

    # Enable PWM
    pelt_num_pin = pin # pin number D1-4 IO2
    freq = 75000
    pelt = machine.PWM(machine.Pin(pelt_num_pin))
    pelt.freq(freq)

    # Duty cycle (0 - 100%)
    dC = [0.]*loops#np.ones(loops) * 0.0

    # Main Loop
    Vin = 0.0
    start_time = time.time()
    prev_time = start_time

    ######################################
    # PID configuration
    ######################################
    # From first-order plus dead-time (FOPDT) regression 
    Kp = 9.9693#0.3622#10.67#
    taup = 137.85
    #thetap = 16.00
    # PID Tuning Parameters
    Kc = 1.0/Kp  * 2.0
    tauI = taup  / 2.0
    tauD = 6.0579#0.0
    # Upper and Lower limits on OP (output) 
    op_hi = 100.0
    op_lo = 0.0
    # storage for recording values
    ns = loops
    op = [0.]*(ns+1)#np.zeros(ns+1)  # controller output
    pv = [0.]*(ns+1)#np.zeros(ns+1)  # process variable
    e = [0.]*(ns+1)#np.zeros(ns+1)   # error
    ie = [0.]*(ns+1)#np.zeros(ns+1)  # integral of the error
    dpv = [0.]*(ns+1)#np.zeros(ns+1) # derivative of the pv
    P = [0.]*(ns+1)#np.zeros(ns+1)   # proportional
    I = [0.]*(ns+1)#np.zeros(ns+1)   # integral
    D = [0.]*(ns+1)#np.zeros(ns+1)   # derivative
    # set points for controller
    sp = [sp_temp]*(ns+1)#np.ones(ns+1)*sp_temp  # set point (C)
    #sp[5:200] = 320.0 was used for testing of changing set points
    #sp[200:] = 310.0
    
    print('Running Main Loop. Ctrl-C to end.')
    print('      Time  milliVolt   Temp (K)     SP (K)       P          I           D')
    sensor = start_sensors(dsPinNum = 0)
    for i in range(loops-1):
        # Sleep time
        sleep_max = 1.0
        sleep = sleep_max - (time.time() - prev_time)
        if sleep>=0.01:
            time.sleep(sleep)
        else:
            time.sleep(0.01)

        # Record time and change in time
        tm = time.time() - start_time
        dt = time.time() - prev_time
        prev_time = time.time()
                        
        # Read temperature in Kelvin 
        T[i] = read_ds_sensor(sensor)
        # Temperature in Fahrenheit
        #Tf = (T[i]-273.0)*9.0/5.0+32.0            
        ##############################################
        # PID control
        ##############################################
        pv[i] = T[i]
        e[i] = sp[i] - pv[i]
        if i >= 1:  # calculate starting on second cycle
            dpv[i] = (pv[i]-pv[i-1])/dt
            ie[i] = ie[i-1] + e[i] * dt
        P[i] = Kc * e[i]
        I[i] = Kc/tauI * ie[i]
        D[i] = - Kc * tauD * dpv[i]
        op[i] = op[0] + P[i] + I[i] + D[i]
        if op[i] > op_hi:  # check upper limit
            op[i] = op_hi
            ie[i] = ie[i] - e[i] * dt # anti-reset windup
        if op[i] < op_lo:  # check lower limit
            op[i] = op_lo
            ie[i] = ie[i] - e[i] * dt # anti-reset windup
        Vin = op[i]

        # Write output in percent of duty cycle (0-100%)
        dC[i] = int(min(op_hi,max(op_lo,Vin)))
        pelt.duty(dC[i])

        # Add data to array
        #newData = np.array([[tm,dC[i],T[i],sp[i]]]) # Changed Tsp to sp so it reflects the real set point
        print('      Time  milliVolt   Temp (K)     SP (K)       P          I           D')
        print('{:10.2f} {:10.2f} {:10.2f} {:10.2f} {:10.2f} {:10.2f} {:10.2f}'.format(i,dC[i],T[i],sp[i],P[i],I[i],D[i]))
        #np.savetxt("out.txt", newData, fmt="%s")
        #a.addData(newData)
        # Update plots
        #a.updatePlots()

    # fill in last points from prior points
    op[ns] = op[ns-1]
    ie[ns] = ie[ns-1]
    P[ns] = P[ns-1]
    I[ns] = I[ns-1]
    D[ns] = D[ns-1]
    return