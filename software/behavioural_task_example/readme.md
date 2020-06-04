# A Behavioural task developed in BeeHive

This folder contains the code and explanations necessary to setup your first behavioural task using BeeHive!
We hope this is enough to get users going into creating their own tasks and protocols. 

### Task description:



### brief explanation on the example:
This example shows how to setup a behavioural task for conditioning mice to drink water from a spout while an LED is turned on. It counts licks, and the amount of time it took for the animal to lick the water spout once the LED has been turned on and if the animal does not reach the spout after a determined amount of time, the LED is turned off for a defined amount of time, and then turns on again. 

Here in discrete steps:
- Trial starts
- LED Turns on
  - If animals lick in pre determined time window:
    - Water pump on
    - Wait for a while so water consumes water
    - Water pump off
  - LED off - (in both cases, lick or no lick, the LED turns off)
- A predetermined amount of time is counted where nothing happens takes place (Inter trial interval)
- Start from beginning



### system specs:
- Hardware:
  - Beehive main board with ESP32 WROOM-32
  - ELP USB Camera

- Software
  - On the ESP32 we are running microPython, and the OSC library, which makes it easy for us to transfer data in a system agnostic way, but more importantly, already has an implementation in Bonsai-Rx (see point below).
  -  Bonsai-Rx is the software that runs on the computer to monitor and change the behavioural tasks. It is also used to synchronise camera data, optogenetics data, photometry data with the data coming from the ESP32.
    - At the moment, Bonsai-Rx only runs on windows computers, but there are plans for the package to be ported to GNU/Linux and other platforms. We do understand that only running on Windows is a bit limiting (also in the philosophical perspective), but we believe this is a good tradeoff, considering the wide use of this package by others (Open Ephys, DeepLab Cut etc) and the easiness it brings to add features.   

### Setting up:

- this examples leverages open source packages, and you'll need to install them before getting started:
- Bonsai-RX
- [MicroPython](https://docs.micropython.org/en/latest/esp32/tutorial/intro.html#esp32-intro)
- OSC micropython library


### Other notes:
- For this example we are using MicroPython firmware stable version 1.12, taken from [here](https://micropython.org/download/esp32/)