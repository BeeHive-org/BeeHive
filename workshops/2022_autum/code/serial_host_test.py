# Master device (host) main program

import serial
import time
data = list()
esp32 = serial.Serial('/dev/ttyUSB0', 115200, timeout=3)
try:
    while True:
        if esp32.in_waiting > 0:
            msgFromEsp32 = esp32.readline()            
            #print('{:.3f}: [uart read] {}'.format(time.time(), msgFromEsp32.decode('utf-8').strip('\r\n')))
            print( msgFromEsp32.decode('utf-8').strip('\r\n'))
            data.append(msgFromEsp32.decode('utf-8').strip('\r\n'))
        # Uncomment following line to reduce host CPU usage
        time.sleep(.1) 

except KeyboardInterrupt:
    print(' Ctrl+C was pressed')

finally:
    if esp32.is_open:
        esp32.close()
        print(' Serial connection was closed') 
        
        with open("./dataFile.txt","w") as fid:
            for item in data:
                fid.write(str(item)+"\r\n")


