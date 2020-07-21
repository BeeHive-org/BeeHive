import network
import time
import setup
import serial
import tasks


class Main:
    def start(self):
        tasks.Tasks.startTasks()
        return

    def reset(self):
        machine.reset()
        return
