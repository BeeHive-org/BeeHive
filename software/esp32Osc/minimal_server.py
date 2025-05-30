
try:
    import socket
except ImportError:
    import usocket as socket

try:
    import logging
except ImportError:
    import uosc.fakelogging as logging

    
from uosc.server import handle_osc

    
log = logging.getLogger("uosc.minimal_server")
DEFAULT_ADDRESS = '10.20.23.46'
DEFAULT_PORT = 9001
MAX_DGRAM_SIZE = 1472

def run_server(saddr, port, handler=handle_osc):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    ai = socket.getaddrinfo(saddr, port)[0]
    sock.bind(ai[-1])
    log.info("Listening for OSC messages on %s:%i.", saddr, port)

    try:
        while True:
            data, caddr = sock.recvfrom(MAX_DGRAM_SIZE)
            if __debug__: log.debug("RECV %i bytes from %s:",
                                    len(data),data)
#            if __debug__: log.debug("RECV %i bytes from %s:%s",
#                                    len(data), *get_hostport(caddr))
            handler(data, caddr)
    finally:
        sock.close()
        log.info("Bye!")