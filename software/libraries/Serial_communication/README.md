# MicroPython Serial configuration

## PORT CONFIGURATION
There must be a port open with the speed 115200 open for the ESP32 and Python library to connect. The board will typically automatically connect. A way of testing this is using the Board library with `B.serial_ports()` with the device unplugged, and then plugged in. This missing COM will reveal which the baord is on. If there are still problems, manual connection can be made with using the PuTTY app, which is available on Windows and Linux. This must be ran while the board is not attached.

![image of PuTTY](media/enable.png)

The board cannot be connected to any Micro-Python specific IDE through serial, otherwise it will be undetectable by the Python library.

## Using the library
`import Serial_communication`

The library itself has an initialiser for board. The initialiser takes no parameters.

`B=Serial_communication.Board()`

The board object will not be connected to a device. If you do not know what COM your device is on, then you can use the serial ports method. This returns an array of all available ports.

`print(B.serial_ports())`


One you know which COM is the board you want the library can connect as follows:

`B.connect('COM9')`

The COM can be added as a string parameter. If there is a connection error, try run again. Make sure the COM you are using is the COM for your ESP32 board.

To upload control code to the ESP32 use the run file method, that takes your local file as parameter and uploads it to the physical board. It is advised to use the demo code as the library is setup to work with that.

`B.runFile(fileToRun="/path/to/file.py")`

Once you are connected to the board, it is listening for commands from the PC library. For data retrieval you can make use of the record method that allows the user to either record for a given time interval or till a condition is met. It can only do one or the other at one time. Pulling data from the board takes more time than commanding the board to gather data from the sensors, therefore pulling is done at intervals denoted by parameter "gather".

Time interval:
`B.record(time_interval=60,gather=15)`
This will loop for 60 seconds and perform a pull request every 15 iterations. The pull request gathers all the data that the board has collected, since the last pull. Gather is by default 10.

Conditional:
`B.record(till=True)`
This will loop till the board returns "END" from a "getEnded()". This is something setup within the onboard code by the developer for their given experiment. The gathering will result to default 10, as it has not been stated in the parameters.
