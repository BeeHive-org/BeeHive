# A Behavioural task developed in BeeHive

This folder contains the code and explanations necessary to setup your first behavioural task using BeeHive!
We hope this is enough to get users going into creating their own tasks and protocols. 

### Task description:



### brief explanation on the example:
This example shows how to setup a behavioural task for conditioning mice to drink water from a spout while an LED is turned on. It counts licks, and the amount of time it took for the animal to lick the water spout once the LED has been turned on and if the animal does not reach the spout after a determined amount of time, the LED is turned off for a defined amount of time, and then turns on again. 

Here in discrete steps:
- LED Turns on
 - If animals lick in pre determined time window:
  - Water pump on
  - LED off
  - Wait for a while so water consumes water
  - Water pump off
 - else:
  - LED off
  - Wait for determined amount of time
 - Start from beginning




## system specs:
- Hardware:
 - Behive main board with ESP32 WROOM-32
 - ELP USB Camera

- Software
 -  

### Setting up:

- this examples leverages open source packages, and you'll need to install them before getting started: