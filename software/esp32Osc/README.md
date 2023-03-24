# Bonsai + BeeHive

The scripts in this folder are a first test for integration [Bonsai-RX](bonsai-rx.org) with BeeHive using [OSC](http://opensoundcontrol.org) protocol.



The idea is pretty simple for the moment:

Digital:
- make half of the Digital pins as inputs (DI)
- make half of the Digital pins as outputs (DO)
- set the ESP32 to scan the state of all DI pins and send that information out as one integer in an OSC message
- set the ESP32 to listen to OSC messages with one integer and decode that to set DO pins

Analog:
- Read all analog pin states and send that information out as an OSC message
- Set the ESP32 to listen to OSC messages (one integer to determine analog output port and another integer to determine value to be written) and write analog output value

  
| <Function Call> | <Return Function> | <Event> |
  

- OSC messages call functions with same name as the message
- Return values is a message called Return
- Functions are defined in uPython
- Write a automatic message Handler -> Function call -> Return value -> OSC Message
  
OSC Event Messages
    /Event


beehive: 
    /ports id
        /line 0 (pwm,analog_write,Analog_read,Digital_out,digital_in)
        /line 1 ()

/Analog_write
    /Port Value
    /PWM Value
    /Timestamp

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

   
---   
    
       
### Naming convention:
After a short discussion, naming should be given to the actual electronic function being deployed. That is, a function that turns a digital output on/off, should be called something that makes that explicit. The rationale here is that many different actions would map on to that (for instance, by turning a digital output port on, we can deliver water, turn on an led, tur on a sound, etc. so we have many to one mapping). To make it easier for users, what we can do is provide a table where all of this things are explicitly mapped:  
Timestamps?

|action|electronic equivalent|function name|example|observation|
|--|--|--|--|--|
|deliver water|turn digital output on|digital_write|digital_write(pin, value)|assuming a solenoid valve is used as control|
|turn on led|turn digital output on|digital_write|digital_write(pin, value)|assuming the LED is directly controlled by one port and not a driver|
|deliver food|send PWM signal|pwm_write|pwm_write(pin,cycle,time)|assuming mechanism to deliver food uses a motor|
