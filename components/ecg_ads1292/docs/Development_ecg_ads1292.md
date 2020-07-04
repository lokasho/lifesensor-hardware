# lifesensor ecg_ads1292
This document describes the [ECG](https://en.wikipedia.org/wiki/Electrocardiography) component based on Texas Instruments integrated ECG front end [ADS1292](http://www.ti.com/lit/ds/symlink/ads1292.pdf).

WARNING: THIS CIRCUIT DOES NOT PROVIDE ANY PROTECTION AGAINST ELECTRICAL SHOCKS! ALWAYS USE APPROPRIATE MEDICAL APPROVED POWER SUPPLIES! USE AT YOUR OWN RISK!

## Objectives
This component is developed to quickly provide a first ECG sensor that can deliver reference data for comparison with other self-developed and possibly cheaper ECG frontends. It will also provide the possibility to test other (software) components like the pulse detection and the lifesensors [sensor bus]() with real data.
<!-- TODO: link to sensor bus description -->

To minimize the development effort integrated circuits that include all needed analog circuitry are chosen. The ADS1292 is chosen because in a search it was the cheapest one that can provide a three channel ECG found.

Due to the prototype characteristics the development of the ecg_ads1292 compontent is not focusing on low prizes, availability or repairability.

## Subcomponents

This component consists of one PCB [ecg_ads1292_main](../pcbs/ecg_ads1292_main) and a [driver](../firmware).

For a description of the development of the PCB see [../pcbs/ecg_ads1292_main/docs/README.md](../pcbs/ecg_ads1292_main/docs/README.md)

For a description of the driver see [../firmware/README.md](../firmware/README.md)

## Usage
<!-- TODO: links and explanations  -->

### Hardware

The main sources for the circuit design are
- the ADS1292 data sheet: http://www.ti.com/lit/ds/symlink/ads1292.pdf
- the ADS1x9xECG-FE Demonstration Kit User's Guide: https://www.ti.com/lit/ug/slau384a/slau384a.pdf


#### Schematics
The schematics can be found in 
![schem](figures/base_schematics.png)


#### Board view
This is a view of the last released version of the board:

![ecg_ads1292_main board view](../pcbs/ecg_ads1292_main/manufacture/images/ecg_ads1292_main-brd.svg)

### Driver


The following list describes the Signals this component uses on the sensor bus (apart from GND pins):

#### Power:

| Label           | Pin| Pi Header          |
|:----------------|:---|:-------------------|
| SENS_5V_ANA     | 2  | 5V power           |
| SENS_3V3_DIG    | 17 | 3V3 power          |

#### Signals:
| Label           | Pin| Pi Header          |
|:----------------|:---|:-------------------|
| SENS_ECG_DRDY   | 11 | GPIO17             |
| SENS_START      | 13 | GPIO27             |
| SENS_RST_ECG_n  | 16 | GPIO23             |
| SENS_MOSI       | 19 | GPIO10 (MOSI)      |
| SENS_MISO       | 21 | GPIO9 (MISO)       |
| SENS_SCLK       | 23 | GPIO11 (SCLK)      |
| SENS_CS_ECG_n   | 24 | GPIO8 (CE0)        |

#### Description
- **SENS_ECG_DRDY** Data ready. Is pulled down by the ADS1292 when a new sample has been taken. -> **ESP:** Interrupt on the falling edge, that triggers fetching the sample via SPI bus.
- **SENS_START** After configuring the continuos conversion mode the ADS129 starts sampling, when this signal is pulled HIGH. -> **ESP:** output push pull
- **SENS_RST_ECG_n** After system start the ADS1292 needs two reset pulses by driving this signal LOW. **ESP:** output push pull
- **SENS_MOSI** SPI bus
- **SENS_MISO** SPI bus
- **SENS_SCLK** SPI bus clock, maximum frequency is twice the ADS1292 base clock, so 1.024MHz when running on the internal 512kHz clock. **ESP:** (clock polarity: low, phase: second edge)
- **SENS_CS_ECG_n** SPI chip select for the ECG (no inter byte pulses, after transmitting data, this signal must not be driven HIGH agian to fast, see data sheet for SPI timing constraints)