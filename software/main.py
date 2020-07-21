import network
import time
import setup
import serial
import tasks
import machine

class Main:
    def __init__(self):
        print("main started")
        self.tasks = tasks.Tasks()

    def start(self):
        self.tasks.startTasks()
        return

    def reset(self):
        machine.reset()
        return

test = main.Main()