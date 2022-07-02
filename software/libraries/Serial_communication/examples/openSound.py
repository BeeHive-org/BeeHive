import socket

s = socket.socket()
s.bind(('0.0.0.0', 80))
s.listen(0)

while True:
    client, addr = s.accept()

    client.send(bytes('{\"accel\",\"gyro\",\"time\":1}', "utf-8"))
    print("Closing connection")
    client.close()


