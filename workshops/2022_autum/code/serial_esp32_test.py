#  device (ESP32 board) main program
import machine
import time

#led = machine.Pin(2, machine.Pin.OUT) # set to 2 for builtin LED in Wemos D1 mini pro

def main():
    uart = machine.UART(0)                         # init with given baudrate
    uart.init(115200, timeout=3000) # init with given parameters

    ticker1 = time.ticks_ms()
    ticker2 = time.ticks_ms()
    while ticker2-ticker1<10000:
        if time.ticks_diff(timeCheck, ticker) > 1000:
            ticker = timeCheck
            uart.write('mydata'\r\n')        

# Run main loop
#main()
