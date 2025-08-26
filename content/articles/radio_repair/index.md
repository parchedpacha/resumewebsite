---
title: "Ham Radio Repair & Upgrade"
date: 2025-01-30T18:30:00-05:00
---

This is the humble TM-732A, a Kenwood brand Ham Radio, with both UHF and VHF capabilities.
![board overview](/articles/radio_repair/kenwood_TM-732.jpg)

Originally, it came with orange incandescent bulbs. These bulbs were attached to a dimmer circuit that used a transistor.  It used 4 lights in 2 pairs, each pair with a 10 Ohm resistor in series.

### Bulbs
![bulb schematic](/articles/radio_repair/schematic_for_LED.jpg)

### Dimmer
![dimmer_schematic](/articles/radio_repair/dimmer_schematic.png)
 
I chose to replace these bulbs, as they had burnt out, with sick red LEDs, to give the radio a more cyberpunk / professional appearance. 

![bulb comparison](/articles/radio_repair/LED_vs_bulb.jpg)
I used some simple ohms law calculations that I was taught in college and utilized the following equation to size the current limiting resistors that i would replace the 10 Ohms with:

![voltage drop](/articles/radio_repair/voltage_drop_math.png)
![current resistance math](/articles/radio_repair/current_resistor_math.png)

Then I simply got two 1/8th watt resistors who amount added up to very close to 530, soldered them in series, then replaced the 10 ohms and bulbs as so:

![board overview](/articles/radio_repair/board_overview.jpg)

Then I was able to put it all together again and show this nice video:


{{< rawhtml >}}
<video width=100% controls>
    <source src="/articles/radio_repair/bespoke_dimmer_c.m4v" type="video/mp4">
    Your browser does not support the video tag.  
</video>
{{< /rawhtml >}}





## Capacitors
I also attempted to fix an issue with the radio not turning on. It appeared to be a voltage regulator issue. I replaced the delay capacitor on the L78LR05 that was on the display board, and that seemed to fix it. Although I ran it without such a capacitor and with the reset pin of said regulator cliped for a while, I do not recommend it.

![voltage_regulator image](/articles/radio_repair/regulator_schematic.png)
I also replaced a larger electrolytic capacitor on the board with a new one of the same capacity.


For this project I also had to track down the manuals, so for the TM-732A, here is the [Owner\'s manual](/articles/radio_repair/TM-732A.pdf) and the [Service Manual](/articles/radio_repair/TM-732-Service-Manual.pdf). 


If you wish to try your hand at fixing up a radio such as this, I highly recommend printing out relevant pages of the service manual and annotating them so you can begin to understand the circuit diagram, it became much easier for me once I did that.