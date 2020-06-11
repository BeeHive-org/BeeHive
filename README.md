# BeeHive - a flexible platform for connecting different sensors and actuators

## Intro


This project started as a collaboration between [Ihor Sobianin](https://github.com/isobianin/) and [Andre Chagas](https://github.com/amchagas/), after some chats about improving the [FlyPi design](https://github.com/amchagas/flypi). 


## Hardware 

The idea here is to make a very flexible hardware system that is easy to expand/customize for lab applications. The very initial implementation consists of:
- a hub PCB - which contains:
   -  2 voltage regulators that step down voltage from 12V to 5V and supply these 3 voltages to specific pins throughout the board.
   -  a central slot for an [ESP32 WROOM](https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf) and the breakout of all its pins into JST connectors.


-  4 switch array with an [TPIC6B595 shift register](https://www.ti.com/lit/ds/symlink/tpic6b595.pdf) and transistors.


-  8 switch array with an [TPIC6B595 shift register](https://www.ti.com/lit/ds/symlink/tpic6b595.pdf) and transistors.


-  power supply which are based on the [LM2596 T5](https://www.ti.com/lit/ds/symlink/lm2596.pdf) a step down switching regulator
For more details see [current design](#the-current-design) section below.  


## software

On the software side of things we are initially running micropython, as this will offer a low entry barrier for researchers (as Python is more and more the chosen language for much of the scientific stack).


- The current implementation runs stock micropython with [OSC library](https://github.com/SpotlightKid/micropython-osc) for communication, as this will allow easy integration with [Bonsai-RX](https://bonsai-rx.org/), a powerful piece of software that has integrations with other interesting open source tools for science, such as [open ephys](https://open-ephys.org/), [DeepLab Cut](http://www.mousemotorlab.org/deeplabcut) and other proprietary but useful tools, like high speed cameras, National Instruments DAQ systems. 


- The main wish software wise for thsi project is to make it compatible with [Labthings](https://github.com/labthings).

---

## The current design

The main hub:

Schematics

![flypi_v2_schematics.png](https://github.com/isobianin/BeeHive/blob/master/hardware/hub_PCB/flypi_v2_schematics.png)

PCB

![PCB_flypi_v2.png](https://github.com/isobianin/BeeHive/blob/master/hardware/hub_PCB/PCB_flypi_v2.png)

The power supply module:

Schematics

![power_supply.png](https://github.com/isobianin/BeeHive/blob/master/hardware/power_supply/power_supply.png)

PCB

![PCB_power_supply.png](https://github.com/isobianin/BeeHive/blob/master/hardware/power_supply/PCB_power_supply.png)

The transistor-switch hub for 4 devices:

Schematics ![4_switch_array.png](https://github.com/isobianin/BeeHive/blob/master/hardware/4_switch_array/4_switch_array.png)

PCB

![PCB_4_switch_array.png](https://github.com/isobianin/BeeHive/blob/master/hardware/4_switch_array/PCB_4_switch_array.png)

The transistor-switch hub for 8 devices:

Schematics ![8_switch_array.png](https://github.com/isobianin/BeeHive/blob/master/hardware/8_switch_array/8_switch_array.png)

PCB

![PCB_8_switch_array.png](https://github.com/isobianin/BeeHive/blob/master/hardware/8_switch_array/PCB_8_switch_array.png)

---
