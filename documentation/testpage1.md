[M4x10 screws]:Parts.yaml#M4x10PanSteel
# Software installation


{{BOM}}

## Method

# setting up the ESP32

## The system runs on Micropython, so we need to install that on the ESP32 first.
Users can follow the recommendations from the [Micropython documentation](http://docs.micropython.org/en/latest/)

software packages needed:
- esptool (install with pip)
- rshell 


Here are the steps we took, running on Ubuntu 20.04:
1. erase current firwmare
1.1 install the esptool, so you can write, erase firmware on the ESP32: `pip install esptool`
1.1.1 run: `esptool.py --port /dev/ttyUSB0 erase_flash`
1.1.2 run: `esptool.py --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 ~/Downloads/esp32-idf3-20200108-v1.12-44-ge3187b052.bin` where "~/Downloads/" is the path to where you downloaded the bin file

2. connect to repl using rshell `rshell --port /dev/ttyUSB0 --baud 115200 repl`
3. start setting up the wifi terminal `import webrepl_setup`

2. add micropython firmware
3. setup webrepl (wifi interface to uploard files)
4. add your custom code

This page should have some instructions for things in your project instead it just has a link for three [M4x10 screws]{Qty: 3} and another link to use [two more][M4x10 screws]{Qty: 2}.
