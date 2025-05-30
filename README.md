# BeeHive - a flexible platform for connecting different sensors and actuators

## Intro


This project started as a collaboration between [Ihor Sobianin](https://github.com/isobianin/) and [Andre Chagas](https://github.com/amchagas/), after some chats about improving the [FlyPi design](https://github.com/amchagas/flypi). 


## Hardware 

The idea here is to make a very flexible hardware system that is easy to expand/customize for lab applications. The very initial implementation consists of:
- a hub PCB - which contains:
   -  2 voltage regulators that step down voltage from 12V to 5V and supply these 3 voltages to specific pins throughout the board.
   -  a central slot for an [ESP32 WROOM](https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf) and the breakout of all its pins into JST connectors.
   - Two Mikroe MikroBus connectors (https://www.mikroe.com/mikrobus).
   - Two Sparkfun Qwiic connectore (https://www.sparkfun.com/qwiic).
   - A 3.3V onboard voltage regulator.

-  4 switch array with an [TPIC6B595 shift register](https://www.ti.com/lit/ds/symlink/tpic6b595.pdf) and transistors.

-  8 switch array with an [TPIC6B595 shift register](https://www.ti.com/lit/ds/symlink/tpic6b595.pdf) and transistors.

-  12V5A breakout which is based on simple barrel jack connector and JST connectors

-  power supply which are based on the [LM2596 T5](https://www.ti.com/lit/ds/symlink/lm2596.pdf) a step down switching regulator
For more details see [current design](#the-current-design) section below.  


## Software

On the software side of things we are initially running micropython, as this will offer a low entry barrier for researchers (as Python is more and more the chosen language for much of the scientific stack).


- The current implementation runs stock micropython with [OSC library](https://github.com/SpotlightKid/micropython-osc) for communication, as this will allow easy integration with [Bonsai-RX](https://bonsai-rx.org/), a powerful piece of software that has integrations with other interesting open source tools for science, such as [open ephys](https://open-ephys.org/), [DeepLab Cut](http://www.mousemotorlab.org/deeplabcut) and other proprietary but useful tools, like high speed cameras, National Instruments DAQ systems. 


- The main wish software wise for this project is to make it compatible with [Labthings](https://github.com/labthings).

---

## The current design

### The main hub:

#### Schematics

<img alt="beehive.png" src="hardware/PCBs/central_hub_v2_MIKROBUS/schematic.png" />

#### PCB

<img alt="beehive_PCB" src="hardware/PCBs/central_hub_v2_MIKROBUS/pcb.png" />

### The power supply module:

#### Schematics

<img alt="power_supply.png" src=hardware/PCBs/power_supply/power_supply.png />

#### PCB

<img alt="PCB_power_supply.png" src="hardware/PCBs/power_supply/PCB_power_supply.png" />


### The transistor-switch hub for 8 devices:

#### Schematics

<img alt="8_switch_array.png" src="hardware/PCBs/8_switch_array/8_switch_array.png" />

#### PCB

<img alt="PCB_8_switch_array.png" src="hardware/PCBs/8_switch_array/8_switch_array_PCB.png" />

---

