# DW.CLOUD V2 Bootloader
This repository is official bootloader supported from Deaware System. We will update new feature and fix bug. If there are any bug, please create new issue to report us.

## Current feature
- Reduce boot-time to 0.2 seconds.
- Change ESP8266 upgrade baudrate to 115200.
- Arduino 1.6.x ESP8266 supported.

## Changelog
- First commit.

## How to flash bootloader into DW.CLOUD
#### 1) Preparing other arduino board to be a programmer. By uploading example ArduinoISP into your arduino board.
 ![](http://128.199.203.210/dwcloud_support/images/open_example_arduinoisp.png)

#### 2) Wiring your arduino to DW.CLOUD following this table.


| Arduino Board (UNO, Pro Mini, Nano) | DW.CLOUD |
| -- | -- |
| 5V | 5V |
| GND | GND |
| D10 | RST |
| D11 | D5 (MOSI) |
| D12 | D6 (MISO) |
| D13 | D7 (SCK) |


![](http://128.199.203.210/dwcloud_support/images/wiring_uno.png)

DW.CLOUD pins detail.
![](http://128.199.203.210/dwcloud_support/images/dw_cloud2_pinout.png)

#### 3) Download flasher software (avrdudess) from this [link](http://128.199.203.210/dwcloud_support/downloads/avrdudess.zip).

#### 4) Clone this repository to get bootloader.
#### 5) Extract **"avrdudess.zip"**
#### 6) Open **"avrdudess"** and set all configuration following this picture.
![](http://128.199.203.210/dwcloud_support/images/avrdudess_upgrade_dwcloud.png)
- **ATmegaBOOT_324P_V20.hex** can be found in this repository.
- **!!! Do not write anything about fuse-bit and lock-bit. It may cause your DW.CLOUD bricked.**

#### 7) Press Go button in **flash section** to upgrade bootloader.
#### 8) If it correctly done. You will see the message like this.
![](http://128.199.203.210/dwcloud_support/images/avrdudess_finish_output.png)
