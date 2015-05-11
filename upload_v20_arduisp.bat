avrdude -c arduino -p atmega324pa -P COM1 -b 19200 -U flash:w:ATmegaBOOT_324P_V20.hex
avrdude -c arduino -p atmega324pa -P COM1 -b 19200 -U lfuse:w:0xff:m
avrdude -c arduino -p atmega324pa -P COM1 -b 19200 -U hfuse:w:0xd8:m
avrdude -c arduino -p atmega324pa -P COM1 -b 19200 -U efuse:w:0xfd:m
avrdude -c arduino -p atmega324pa -P COM1 -b 19200 -U lock:w:0x0f:m