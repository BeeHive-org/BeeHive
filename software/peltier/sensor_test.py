######################################
# Original design by https://github.com/APMonitor/arduino
# modified for https://github.com/isobianin/BeeHive for ESP32
######################################

#from arduino import Arduino

import machine
import time
import onewire
import ds18x20
import array
# Connect to Arduino
#a = Arduino()

# Setup DS18B20 temperature sensor

#### !!!NOTE!!! Maybe this can be done via class and this way
# user will be able to easily channel all sensors avaialble?
#dsPinNum = 0  # D2-3 IO0
class DS18B20:

    #find temperature sensors and return the sensor object
    def __init__(self,dsPinNum = 0):
        self.dsPin = machine.Pin(dsPinNum)
        self.dsSensor = ds18x20.DS18X20(onewire.OneWire(self.dsPin))
        self.roms = self.dsSensor.scan()
        print('Found DS devices: ', self.roms)
        


    # Read temperature process
    def read_ds_sensor(self,sensorNum = 0):
        #roms = dsSensor.scan()
        self.dsSensor.convert_temp()
        self.temp = self.dsSensor.read_temp(self.roms[sensorNum])
        if isinstance(self.temp, float):
            self.temp = round(self.temp, 2)
            #print('Valid temperature')
            #print(self.temp)
            output = self.temp
        else:
            output = 0    # This function returns 0 in case when ds_sensor.read_temp(rom) returns value that
        return output
    # cannot fall under the next "if" statement. To put it simply, when there are no sensors connected, it returns 0
