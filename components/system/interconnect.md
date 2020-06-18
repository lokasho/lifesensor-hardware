# Interconnect

The interconnect is the main bus between the PCBs of the different components of the lifesensor.
It is based on the 40-pin Raspberry Pi header.

The idea is to use the Raspberry Pi as a test platform for all components.

Pins with numbers higher than 26 are reserved and should therefore be left unconnected.

**ATTENTION: The Raspberry Pi can only deliver 30mA at the 3.3V rail and 300mA at the 5V rail.**


| Pin| RaspberryPi      | LifeSensor       | Pin| RaspberryPi        | LifeSensor      |
|  -:| :--------------- | :--------------- | -: | :----------------- | :---------      |
| 1  | 3V3 power        | SENS_3V3_ANA     | 2  | 5V power           | SENS_5V_ANA     |
| 3  | GPIO2 (SDA)      | SDA              | 4  | 5V power           | SENS_5V_ANA     |
| 5  | GPIO3 (SCL)      | SCL              | 6  | GND                | GND             |
| 7  | GPIO4 (GPCLK0)   | SENS_BPM_DRDY    | 8  | GPIO14 (TXD)       | SENS_IO0        |
| 9  | GND              | GND              | 10 | GPIO15 (RXD)       | SENS_IO1        |
| 11 | GPIO17           | SENS_ECG_DRDY    | 12 | GPIO18 (PCM_CLK)   | SENS_SPO2_DRDY  |
| 13 | GPIO27           | SENS_START       | 14 | GND                | GND             |
| 15 | GPIO22           | SENS_RST_BPM_n   | 16 | GPIO23             | SENS_RST_ECG_n  |
| 17 | 3V3 power        | SENS_3V3_DIG     | 18 | GPIO24             | SENS_RST_SPO2_n |
| 19 | GPIO10 (MOSI)    | SENS_MOSI        | 20 | GND                | GND             |
| 21 | GPIO9 (MISO)     | SENS_MISO        | 22 | GPIO25             | SENS_CS_BPM_n   |
| 23 | GPIO11 (SCLK)    | SENS_SCLK        | 24 | GPIO8 (CE0)        | SENS_CS_ECG_n   |
| 25 | GND              | GND              | 26 | GPIO7 (CE1)        | SENS_CS_SPO2_n  |
| 27 | GPIO0 (ID_SD)    | RESERVED         | 28 | GPIO1 (ID_SC)      | RESERVED        |
| 29 | GPIO5            | RESERVED         | 30 | GND                | GND             |
| 31 | GPIO6            | RESERVED         | 32 | GPIO12 (PWM0)      | RESERVED        |
| 33 | GPIO13 (PWM1)    | RESERVED         | 34 | GND                | GND             |
| 35 | GPIO19 (PCM_FS)  | RESERVED         | 36 | GPIO16             | RESERVED        |
| 37 | GPIO26           | RESERVED         | 38 | GPIO20 (PCM_DIN)   | RESERVED        |
| 39 | GND              | GND              | 40 | GPIO21 (PCM_DOUT)  | RESERVED        |