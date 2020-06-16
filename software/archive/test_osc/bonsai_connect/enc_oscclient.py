from machine import Pin
from time import sleep_ms
from uosc.client import Client


UPDATE_DELAY = const(50)
OSC_SERVER = '192.168.0.67'
OSC_PORT = const(12101)
OSC_TOPIC = '/midi'
MIDI_CC_ENC = const(7)
MIDI_CC_SW = const(64)
PIN_CLK = const(4)
PIN_DT = const(0)
PIN_SW = const(2)


def main():
    #enc = Encoder(pin_clk=PIN_CLK, pin_dt=PIN_DT, clicks=4, accel=5, max_val=127)
    osc = Client(OSC_SERVER, OSC_PORT)
    sw = Pin(PIN_SW, Pin.IN, None)
    #mock data "sensor"
    sensor = 512
    oldval = 0
    oldsw = 1
    try:
        while True:
            if sensor != 10:
                #print("first send")
                osc.send(OSC_TOPIC, ('m', (0, 0xB0, MIDI_CC_ENC,sensor)))
                oldval = sensor

            #enc.cur_accel = max(0, enc.cur_accel - enc.accel)

            if sw() != oldsw:
                osc.send(OSC_TOPIC, ('m', (0, 0xB0, MIDI_CC_SW, 0 if sw() else 127)))
                oldsw = sw()

            sleep_ms(UPDATE_DELAY)
    except Exception as exc:
        #enc.close()
        print(exc)


if __name__ == '__main__':
    main()