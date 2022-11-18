import machine
import time


uart = machine.UART(0)
uart.init(115200, timeout=3000)

def main():
    for i in range(20):
        uart.write(str(i)+"\r\n")
        time.sleep_ms(200)

