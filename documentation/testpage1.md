[M4x10 screws]:Parts.yaml#M4x10PanSteel
# Software installation


{{BOM}}

## Method

# setting up the ESP32

## The system runs on Micropython, so we need to install that on the ESP32 first.
Users can follow the recommendations from the [Micropython documentation](http://docs.micropython.org/en/latest/)

software packages needed:
- esptool (install with pip)
- ampy (install with pip)
- rshell (instlal with pip)
- repl 


Here are the steps we took, running on Ubuntu 20.04:

note: On Linux, serial ports are described as something like `/dev/ttyUSB0`, in windows, they would be something like `COM4` (the number will change depending on computer, where usb was connected, etc). So make sure to change the commands listed below, depending on your operating system and serial port being used.

1. install esptool and erase current firwmare to start with a "clean board"
1.1 install the esptool, so you can write, erase firmware on the ESP32: `pip install esptool`
1.2 erase flash by running: `esptool.py --port /dev/ttyUSB0 erase_flash`

2. write the micropython firmware to the board:
2.1 run: `esptool.py --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 ~/Downloads/esp32-idf3-20200108-v1.12-44-ge3187b052.bin` where "~/Downloads/" is the path to where you downloaded the bin file

3. install Ampy, so you can upload files to the board, as well as download them into the computer: 
3.1 run: `pip install ampy-adafruit`
3.2 test ampy by listing the files on the board by running: `ampy --port /dev/ttyUSB0 --baud 115200 ls`
(this should return `/boot.py` (as this is automatically created when the firmware is written)

4. get the contents of boot.py from the board using ampy, so we can modify it (simply uploading a new file would also work fine):
4.1 get the file by running: `ampy --port /dev/ttyUSB0 --baud 115200 get boot.py`
4.2 copy these contents to a file named boot.py

5. upload your new boot.py to the board, making sure you are setting the location of the `boot.py` file in the command below.
5.1 run: `ampy --port /dev/ttyUSB0 --baud 115200 put boot.py` 
5.2 do this for the other files in your application.

With all files needed uploaded, we can connect to the serial interface of the micropython board and
run specific scripts, functions, etc.


6. install rshell: `pip install rshell`
6.1 Connect to repl using rshell `rshell --port /dev/ttyUSB0 --baud 115200 repl`
6.2 import and run your main.py script


This page should have some instructions for things in your project instead it just has a link for three [M4x10 screws]{Qty: 3} and another link to use [two more][M4x10 screws]{Qty: 2}.
