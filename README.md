# lifesensor-hardware
temporary repository for the next hardware generation of the CADUS Life Sensor:
https://github.com/cadus/Life-Sensor


## requirements
- from https://github.com/cadus/Life-Sensor:
    + Standard parts
    + Repairable & Maintainable
    + Open source

- mattermost, ecg channel: 
    + Single-Layer Platinen
    + stationaere loesung
    + mit mindestens dem feature set des jetzigen life-sensors
        + also spo2,
        + herzschlag,
        + blutdruck, 
        + 3-kanal ekg
    + einsatzort erstmal Krankenbett, nicht rettungseinsatz


- meeting 2020-03-26:
    + defibrillator save

- open:
    + ISO60601-gerecht?
    + double layer möglich?
    + Lizenz? 
    + Cadus symbol auf Leiterplatten und in schematics?
    + welche diagnosen sollen möglich werden? -> zB. Implikationen auf Auflösung bei "late potentials"


- Switch to KiCAD
- https://github.com/kitspace/kitspace : Für kitspace verfügbar machen?


## similar projetcs / resources
- https://github.com/GliaX
- https://github.com/kitspace/awesome-electronics
- https://github.com/kitspace/kicad_footprints
- https://github.com/intajay/open-electronics

- ecg
    + https://github.com/xdever/MobilECG-II -> auf ADS1298 basis
    + https://www.olimex.com/Products/Duino/Shields/SHIELD-EKG-EMG/open-source-hardware
    + https://www.digikey.com/en/articles/design-a-high-resolution-ecg-with-a-fully-differential-amplifier-and-high-resolution-adc (late potentials)