avrdude -c STK500 -p atmega324pa -P COM3 -b 115200 -U flash:w:ATmegaBOOT_324P_V20.hex
avrdude -c STK500 -p atmega324pa -P COM3 -b 115200 -U lfuse:w:0xff:m
avrdude -c STK500 -p atmega324pa -P COM3 -b 115200 -U hfuse:w:0xd8:m
avrdude -c STK500 -p atmega324pa -P COM3 -b 115200 -U efuse:w:0xfd:m
avrdude -c STK500 -p atmega324pa -P COM3 -b 115200 -U lock:w:0x0f:m