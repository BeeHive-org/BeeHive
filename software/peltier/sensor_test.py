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
