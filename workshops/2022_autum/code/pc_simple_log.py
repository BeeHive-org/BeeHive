from mpremote import pyboard


fileToRun = "reaction_time.py"

pyb = pyboard.Pyboard('/dev/ttyUSB0', 115200)
pyb.enter_raw_repl()
pyb.execfile(fileToRun)
