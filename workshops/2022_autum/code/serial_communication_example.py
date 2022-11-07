#serial communication
"""
in this script we will be using a custom/local library.
to make it work, we need to save the library into the microcontroller.
- The library is called "Serial_communication" and lives in a folder with the same name.
- This folder should be inside the "code" folder from where we are running all current scripts
"""


import Serial_communication as SB
b=SB.Board()
print(b.serial_ports())

b.connect('COM11')
b.runFile()
b.record(time_interval=20,channels=[1,2,3,3,4])