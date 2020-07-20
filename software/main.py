
import network
import time
import setup
import serial
import tasks

class Main:
    def start():
        tasks.Tasks.startTask1()
        return
    
    
    def reset():
        machine.reset()
        return