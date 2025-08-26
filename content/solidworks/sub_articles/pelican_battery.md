---
title: Pelican Battery Backup Box
---

![Mostly Complete battery Box](/solidworks/images/incomplete_03.jpg)
  
This Battery box was created in response to 2024 hurricanes, Milton and Helene. I designed this battery box to be capable of holding a useful amount of energy while also not compromising the original waterproof seal of the container. These lead to the following design constraints:

1. No fasteners through the plastic case.
2. Shall accept power from at least solar and A/C sources
3. Shall be able to power multiple phones or other devices at once
4. Shall have a user readable display indicating the amount of energy in the battery
5. Should use a predominantly 3d printed structure to ease prototyping, and be printable on a hobbyist printer

These constraints lead to this design:

![SolidWorks render](/solidworks/images/SolidWorks_render_01.png)
![front panel](/solidworks/images/panel_mostly_filled_01.jpg)

## Positives of this design
1. This design includes multiple shim blocks that are sized appropriately to hold the batteries in place when the case is closed. This keeps the batteries from vibrating too much in the case, reducing chances of wires coming loose, and eases carrying by ensuring the case’s center of mass does not shift.
2. The ports are accessible, easy to use, and connections are firm and consistent. This is because the material immediately supporting the connectors was sized appropriately to prevent deflection during use.
3. The plastic shim pieces used in this design can be modified for other cases with ease, thus making this design  more useful to people who want to build one of these battery backups with a spare case.
4. Dual charging inputs makes off grid charging simple and easy using a standard DC power connector. 
5. Automatic cooling fan turns on when either charging cable is connector or when a temperature sensitive switch is triggered, reducing chances of overheating.
6. when closed, this case is fully waterproof. This seems trivial on the surface but it required eliminating fasteners almost entirely, and relying on epoxy to secure to the inside of the case. This required increasing surface areas of parts to ensure good adhesion with the case's polypropylene material.


## Negatives
1. The open top allows dirt to accumulate if not closed
2. when in use, the case has to remained cracked open to allow cables to pass into and out of it. This creates a path for water to enter into the case if rain is severe, or if cables that leave the case are angled upwards.
3. The wiring of the case was all done manually with buss bars and silicone wire, while a PCB would have greatly reduced cost and build complexity.
4. The front panel had only 1 black filament layer, leading to the orange bleeding through.
5. The battery state of charge management does not account for voltage sag under load, nor does it show estimated time until empty, nor does it estimate battery health. These would be good options for a second iteration.
6. The batteries are not strapped inside the case, if the case were to tip over, its possible that they could fall out. This can be fixed with a simple strap or hard case over the top of them.


![partially complete wiring image](/solidworks/images/partial_wiring.jpg)

One of the biggest gains from this project was development of two things:
 - The method I use to creat durable labels and text on the surface of the print, by cutting the text into the model and then printing the first layer in a different color then the rest of the model.
 - this interlock design, to make it easy to combine multiple prints in a sturdy fashion. You can see the printed version in the image above. By simply printing both parts separate from each other, the built in precision of even basic 3d printers can make ttwo parts that mate easily, especially given a small chamfer to help align the two parts.
 ![separation cut diagram](/solidworks/images/separation_cut.png)


Heres a collection of demo videos showing simple usage, illustrating the case's firm construction despite being only 3d printed.
 {{< rawhtml >}}
<video width=100% controls>
    <source src="/solidworks/images/bat_box/opening_the_case.m4v" type="video/mp4">
    Your browser does not support the video tag.  
</video>
<video width=100% controls>
    <source src="/solidworks/images/bat_box/charging_plug_unplug_demo.m4v" type="video/mp4">
    Your browser does not support the video tag.  
</video>
<video width=100% controls>
    <source src="/solidworks/images/bat_box/radio_plug_unplug_better_x2.m4v" type="video/mp4">
    Your browser does not support the video tag.  
</video>

{{< /rawhtml >}}

![use case for wifi](/solidworks/images/use_case_01.jpg)