import network
import time
import setup
import serial
import tasks


class Main:
    def __init__(self):
        print("main started")

    def start(self):
        startTask = tasks.Tasks.startTasks()
        return

    def reset(self):
        machine.reset()
        return
