# Development of esp32_devkitc

## System interfaces of the esp32 component

The following figure shows the connections between the different components of the lifesensor:
![System](fig/lifesensor_system.svg) 
The esp32 component is in the middle of the graph and
has four interfaces:

- The **power bus** towards the power component,
- the **sensor bus** towards the ecg, spo2, and bp components,
- the **display bus** towards a possible small internal display, and
- the **processor bus** towards an Raspberry Pi that may drive a bigger internal or external display

The following sections describe each interface in more detail.
### Power bus
The esp32 component is provided with a 5V from the power component.
The esp32 component then provides a digital and a analog 3.3V rail, as well as a analog 5V rail and distributes these rails to components on the sensor and display bus.

In order to be able to use simple power circuits both the output current 
of the provided rails is limited 
- to 200mA for the analog 5V rail,
- to 150mA for the analog 3.3V rail, and
- to 50mA for the digital 3.3V rail.

If this limit is exceeded, some of the components must directly use the 5V supply from the main power component and generate their own rails if needed. (See power component for limits of that rail.)

The DevKit-C uses a ESP32-Wroom which requires 500mA from a 3.3V rail.
The 3.3V power rail is provided by the DevKit-C itself with a AMS1117-3.3 LDO that can deliver up to 1A. This is sufficient to power the ESP32-Wroom and the 200mA for external components.

The maximum total input current of the 5V power rail then calculates to
$$
I_{5V, in, max} = \overbrace{500mA}^{ESP32-Wroom} + \overbrace{200mA}^{3.3V extern} + \overbrace{200mA}^{5V extern} = 900mA
$$

For the 5V input and analog rails a broad range of 4.5V to 5.5V is allowed.
For the 3.3V analog and digital output rails a closer range between 3.2V and 3.3V must be provided.

### Sensor bus
The sensor bus is part of the main interconnect, which is described in more detail in [/components/system/interconnect.md](../../system/interconnect.md).

It is based on the Raspberry Pi HAT connector and provides
- analog 5V power rail (provided by the esp32 component)
- analog 3.3V power rail (provided by the esp32 component)
- digital 3.3V power rail (provided by the esp32 component)
- SPI bus 
  - with three chip select lines for the three sensors (SENS_CS_ECG_n, SENS_CS_SPO2_n, SENS_CS_BPM_n)
  - esp32 component is master
  - might be shared with esp32 display SPI bus via jumper (excluding chip select signals)
- a reset signal for each sensor (SENS_RST_ECG_n, SENS_RST_SPO2_n, SENS_RST_BPM_n)
- one start signal for all sensors
- an interrupt line for each sensor (SENS_ECG_DRDY, SENS_SPO2_DRDY, SENS_BPM_DRDY)
- two GPIO lines that can be used for signals between the esp32 component and costum sensors (SENS_IO0, SENS_IO1)
- an I2C bus (SENS_SDA, SENS_SCL)
  - that might be used by the processor bus (jumper/solder bridge on ESP32 component)

### Internal display bus
The Internal display bus provides the possibility to connect a display with low resolution directly to the stm32.
For this the following signals/rails are provided
- 5V or 3.3V power rail (switchable per jumper/solder bridge on ESP32 component)
- SPI bus with 
  - two chip selects for display and touch sensor (INTDISP_CS_DISP_n, INTDISP_CS_TOUCH_n)
  - ESP32 is master
  - might be shared with sensor SPI bus via jumper (excluding chip select signals)
  - an interrupt signal for the touch sensor (INTDISP_ISR_TOUCH)

### Processor bus
The processor bus is a single I2C bus with the ESP32 module as master and the
RPi as slave. The I2C bus is
- has signals PROC_SDA and PROC_SCL
- might use the interconnect (jumper/solder bridge on ESP32 component)

## Other connections of the esp32 component
Besides the four interfaces to other system components, the esp32 component needs other connectors, which are described in the following sections.

### JTAG Header
A 20 pin ARM JTAG header is connected according to https://raw.githubusercontent.com/gojimmypi/ESP32/master/images/myESP32%20DevKitC%20pinout.png

| DevKitC Pin | JTAG signal  | header pin |
|---|---|---|
| 3V3  | VTref | 1 |
| EN | nTRST | 3 |
| IO12 | TDI | 5 |
| IO14 | TMS | 7 |
| IO13 | TCK | 9 |
| (GND) | RTCK | 11 |
| IO15 | TDO | 13 | 
| GND  | GND | 4 |


---

