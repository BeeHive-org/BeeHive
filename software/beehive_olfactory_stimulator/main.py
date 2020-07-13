
import network
import time
import setup
import serialtest

def main():
    ser = serialtest.SerialTest()
    for i in range(10):
        ser.writeData(data2Write="m"+str(i))
        time.sleep(0.1)

def reset():
    machine.reset()
    return