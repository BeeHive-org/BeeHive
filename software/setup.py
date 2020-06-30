import machine


class Pins:
    '''define pin configurations'''
    def __init__(self):
        
        #digital output
        self.dout25 = machine.Pin(25, machine.Pin.OUT)
        self.dout26 = machine.Pin(26, machine.Pin.OUT)
        self.dout32 = machine.Pin(32, machine.Pin.OUT)
        self.dout33 = machine.Pin(33, machine.Pin.OUT)

        #digital input
        self.din12 = machine.Pin(12, machine.Pin.IN)
        self.din13 = machine.Pin(13, machine.Pin.IN)
        self.din14 = machine.Pin(14, machine.Pin.IN)
        self.din27 = machine.Pin(27, machine.Pin.IN)
        
        #analog inputs # MAX 3.3V should be used!
        self.adc32 = machine.ADC(32)
        self.adc32.atten(machine.ADC.ATTN_11DB)   # set 11dB input attenuation (voltage range roughly 0.0v - 3.6v)
        self.adc33 = machine.ADC(33) 
        self.adc33.atten(machine.ADC.ATTN_11DB)    # set 11dB input attenuation (voltage range roughly 0.0v - 3.6v)
        self.adc34 = machine.ADC(34) 
        self.adc34.atten(machine.ADC.ATTN_11DB)    # set 11dB input attenuation (voltage range roughly 0.0v - 3.6v)
        self.adc35 = machine.ADC(35) 
        self.adc35.atten(machine.ADC.ATTN_11DB)    # set 11dB input attenuation (voltage range roughly 0.0v - 3.6v)

        # analog outputs (actually PWM)
        #dac0 = 1
        #dac1 = 2
        #dac2 = 3
        #dac4 = 4

