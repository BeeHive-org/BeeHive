from machine import Pin, DAC



dac = DAC(Pin(25))

#DAC has 8 bit resolution (256 values)
dac.write(128)     