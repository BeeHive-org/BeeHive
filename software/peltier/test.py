import PID2 as pid
import sensor_test as st
from machine import Pin, PWM


p2 = machine.Pin(2)
pwm2 = machine.PWM(p2)
pwm2.freq(20000)
pwm2.duty(0)

sensor = st.DS18B20(0)

controller = pid.PID(sensor.read_ds_sensor(0),set_point=35)

for i in range(1000):
    output = controller.update()
    pwm2.duty(output)

pwm2.duty(0)
#pwm2.deinit()
