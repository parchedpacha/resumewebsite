---
title: "Kicad PCB Design"
date: 2022-09-07T17:00:00-05:00
---

![Laundry Detector 3d view](/articles/images/laundry_detector_2.png)

My Apartment does not have in-unit laundry. So, when the laundry is done, I do not hear the laundry machine stop, and would often set timers to avoid my clothes becoming wrinkly. This doesn't solve my issue though, sometimes the laundry machine takes less time than you expect due to the automatic cycle, which I prefer to use. This PCB is intended to fix that. it consists of:

1. An ESP8266 NodeMCU
2. An MPU6050 Accelerometer connected via SPI
3. This circuit board
4. A strong magnet so I can easily attach and detach my gadget
5. Two AA batteries, for cost effectiveness.
6. An LED, for visual indication that the unit is turned on


Below is the schematic I used, which is very simple, really this board is just a hub through which I connect other boards.

![Laundry Detector Schematic](/articles/images/LD_schem.png)
