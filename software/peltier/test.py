#import PID2 as pid
#import sensor_test as st
#from machine import Pin, PWM
import machine
import time

p2 = machine.Pin(2)
pwm2 = machine.PWM(p2)
pwm2.freq(20000)
pwm2.duty(0)

p15 = machine.Pin(15)
pwm15 = machine.PWM(p15)
pwm15.freq(20000)
pwm15.duty(0)


def test(pwm2,temp):
    import PID2 as pid
    import sensor_test as st
    sensor = st.DS18B20()

    controller = pid.PID(sensor.read_ds_sensor,set_point=temp,P=13.0,I=0.01,D=8.0)
    time1 = time.ticks_ms()
    time2 = time.ticks_ms()
    while 1:
        while time2-time1<800:
            time2 = time.ticks_ms()
        output = controller.update()
        if output != None:
            print(output)
            output=output*10 #(output is between 0 to 100 and pwm is 0 to 1024)
            pwm2.duty(int(output))

    pwm2.duty(0)

#pwm2.deinit()
