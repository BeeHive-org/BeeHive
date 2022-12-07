## BeeHive system: 8 port switch array


### Hardware overview

In order to allow to use arbitrary type and number of simple tools such as low power electronics (LEDs, fans, etc) in experiments, a set of 8 switch arrays was developed. The 8 pin version utilizes a 74HC595 shift register, allowing to connect more components with less amount of pins. The power fed to the element being switched can vary from **5 to 12 volts**.

### Programming switches


An 8 switch array behaves exactly like a 74HC595 shift register but transistor switches allow bigger currents to flow through given loads

### Safety
Do not connect or disconnect connectors while power is ON. All adjustments must be done ONLY when power is OFF.

### 3D models


Current design of 8 switch version:
![8 switch version](https://github.com/BeeHive-org/BeeHive/blob/master/hardware/PCBs/8_switch_array/8_switch_array_3D.png?raw=true)

