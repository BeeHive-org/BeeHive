import Serial_communication as SB

b=SB.Board()
print(b.serial_ports())

b.connect('COM9')
b.runFile()
b.record(time_interval=20,channels=[1,2,3,3,4])

