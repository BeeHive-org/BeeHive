######################################
# Original design by https://github.com/APMonitor/arduino
# modified for https://github.com/isobianin/BeeHive for ESP32
######################################

#from arduino import Arduino
import numpy as np
import machine, time
import onewire, ds18x20

# Connect to Arduino
#a = Arduino()

# Setup DS18B20 temperature sensor

#### !!!NOTE!!! Maybe this can be done via class and this way
# user will be able to easily channel all sensors avaialble?
ds_num_pin = 0  # D2-3 IO0
ds_pin = machine.Pin(ds_num_pin)
ds_sensor = ds18x20.DS18X20(onewire.OneWire(ds_pin))

# Read temperature process
def read_ds_sensor():
  roms = ds_sensor.scan()
  print('Found DS devices: ', roms)
  ds_sensor.convert_temp()
  for rom in roms:
    temp = ds_sensor.read_temp(rom)
    if isinstance(temp, float):
      msg = round(temp, 2)
      print('Valid temperature')
      return msg
  return '0'    # This function returns 0 in case when ds_sensor.read_temp(rom) returns value that
  # cannot fall under the next "if" statement. To put it simply, when there are no sensors connected, it returns 0

# Set up plotting
#a.initPlots()

# Run time in minutes
run_time = 10.0

# Number of cycles
loops = int(60.0*run_time)

# Temperature (C)
sp_temp = 35 # variable for a set point temperature

Tsp = np.ones(loops) * sp_temp # set point
####!!!NOTE!!! Is it really supposed to call the read function? It looks like it should just be initialised with ones or zeros
T = np.ones(loops) * read_ds_sensor() # measured T
#T = np.ones(loops) # measured T This is the line that should be placed instead of the one above, however it may not work, so it is left as it is

# Enable PWM
pelt_num_pin = 2 # pin number D1-4 IO2
freq = 75000
pelt = PWM(Pin(pelt_num_pin), freq)

# Duty cycle (0 - 100%)
dC = np.ones(loops) * 0.0

# Main Loop
Vin = 0.0
start_time = time.time()
prev_time = start_time

######################################
# PID configuration
######################################
# From first-order plus dead-time (FOPDT) regression 
Kp = 0.3622
taup = 137.85
thetap = 16.00
# PID Tuning Parameters
Kc = 1.0/Kp  * 2.0
tauI = taup  / 2.0
tauD = 0.0
# Upper and Lower limits on OP (output) 
op_hi = 100.0
op_lo = 0.0
# storage for recording values
ns = loops
op = np.zeros(ns+1)  # controller output
pv = np.zeros(ns+1)  # process variable
e = np.zeros(ns+1)   # error
ie = np.zeros(ns+1)  # integral of the error
dpv = np.zeros(ns+1) # derivative of the pv
P = np.zeros(ns+1)   # proportional
I = np.zeros(ns+1)   # integral
D = np.zeros(ns+1)   # derivative
# set points for controller
sp = np.ones(ns+1)*sp_temp  # set point (C)
#sp[5:200] = 320.0 was used for testing of changing set points
#sp[200:] = 310.0

try:
    print('Running Main Loop. Ctrl-C to end.')
    print('      Time  milliVolt   Temp (K)     SP (K)       P          I           D')
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
            T[i] = read_ds_sensor()
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
            dC[i] = min(op_hi,max(op_lo,Vin))
            pelt.duty(dC[i])

            # Add data to array
            newData = np.array([[tm,dC[i],T[i],sp[i]]]) # Changed Tsp to sp so it reflects the real set point
            print('{:10.2f} {:10.2f} {:10.2f} {:10.2f} {:10.2f} {:10.2f} {:10.2f}'.format(tm,dC[i],T[i],sp[i],P[i],I[i],D[i]))
            np.savetxt("out.txt", newData, fmt="%s")
            #a.addData(newData)
            
            # Update plots
            #a.updatePlots()

    # fill in last points from prior points
    op[ns] = op[ns-1]
    ie[ns] = ie[ns-1]
    P[ns] = P[ns-1]
    I[ns] = I[ns-1]
    D[ns] = D[ns-1]

    # Write data to file
    #a.saveData()
 '''  
# Allow user to end loop with Ctrl-C           
except KeyboardInterrupt:
    # Write data to file
    a.saveData()
    # Disconnect from Arduino
    pelt.duty(0)
    print('Shutting down')
    a.close()
    
# Make sure serial connection still closes when there's an error
except:           
    # Disconnect from Arduino
    pelt.duty(0)
    print('Shutting down')
    a.close()
    raise
else:
    # Disconnect from Arduino
    pelt.duty(0)
    print('Shutting down')
    a.close()
    raise
'''