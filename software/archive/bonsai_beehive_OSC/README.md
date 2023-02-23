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

<Function Call> | <Return Function> | <Event>


OSC messages call functions with same name as the message
Return values is a message called Return
Functions are defiened in uPython
Write a automatic message Handler -> Function call -> Return value -> OSC Message

OSC Event Messages
    /Event


beehive: 
    /ports id
        /line 0 (pwm,analog_write,Analog_read,Digital_out,digital_in)
        /line 1 ()

/Analog_write
    /Port Value
    /PWM Value

belay: interator for step_trials, trials, sessions
    /<function name>
        /<argument Name> Value
        /<Argument Name2> Value
    /<Return>
        /<Function name> Value



Firmata:

Warp:

uOSC:

uPython:
adc.read_u16()
Pin(32, Pin.OUT)