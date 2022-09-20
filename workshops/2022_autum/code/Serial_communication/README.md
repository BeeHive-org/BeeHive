# MicroPython Serial configuration

## PORT CONFIGURATION
There must be a port open with the speed 115200 open for the ESP32 and Python library to connect. The board will typically automatically connect. A way of testing this is using the Board library with `B.serial_ports()` with the device unplugged, and then plugged in. This missing COM will reveal which the baord is on. If there are still problems, manual connection can be made with using the PuTTY app, which is available on Windows and Linux. This must be ran while the board is not attached.

<img src="https://raw.githubusercontent.com/BeeHive-org/BeeHive/master/media/enable.png" width="50%">

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

# MicroPython Opensound configuration

The open sound class makes use of wireless communication to gather data from the MicroPython device. In order to make it work you must set up the circuit-side first. 

## Setting up the device
Within the device code found in examples, there are several variables that need changing for it to pair with your device. Firstly, your PC device and the ESP32 must be on the same network. Edit the following variables within the micropython code.
`
YOUR_IP="device.ip.for.pc"
YOUR_NETWORK_SSID="network_name"
YOUR_PASSWORD="network_password"
COM=integer_of_the_selected_com
`

## Setting up the PC side

The board can be set up calling on the following line. The parameters can have the ip and coms manually set. Keep the ip as default to have the PC act in a normal way, but change the COM if you have multiple devices. This must be the same as the COM on the circuit side. 
`o=openSoundBoard()`

A signal can be sent using the `o.getData("message you want sent")` function, however this will return nothing if the string does not correspond to the inbuilt commands within the code. 

The record function works in the exact same way as the serial library. 
`o.record(till=True)`

Time interval:
`B.record(time_interval=60,gather=15)`
This will loop for 60 seconds and perform a pull request every 15 iterations. The pull request gathers all the data that the board has collected, since the last pull. Gather is by default 10.

Conditional:
`B.record(till=True)`
This will loop till the board returns "END" from a "getEnded()". This is something setup within the onboard code by the developer for their given experiment. The gathering will result to default 10, as it has not been stated in the parameters.

