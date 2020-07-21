# Bonsai + BeeHive

The scripts in this folder are a first test for integration [Bonsai-RX](bonsai-rx.org) with BeeHive using [OSC](http://opensoundcontrol.org) protocol.

The idea is pretty simple for the moment:

Digital:
- make half of the Digital pins as inputs
- make half of the Digital pins as outputs
- set the ESP32 to scan the state of all DI pins and send that information out as one integer in an OSC message
- set the ESP32 to listen to OSC messages with one integer and decode that to set DO pins

Analog:
- Read all analog pin states and send that information out as an OSC message