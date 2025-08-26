---
title: Solidworks
hidden: true
---

## Pelican Battery Backup Box
![Mostly Complete battery Box](/solidworks/images/solidworks/bat_box/incomplete_03.jpg)

This Battery box was created in response to 2024 hurricanes, Milton and Helene. I designed this battery box to be capable of holding a useful amount of energy while also not compromising the original waterproof seal of the container. These lead to the following design constraints:

1. No fasteners through the plastic case.
2. Shall accept power from at least solar and A/C sources
3. Shall be able to power multiple phones or other devices at once
4. Shall have a user readable display indicating the amount of energy in the battery
5. Should use a predominantly 3d printed structure to ease prototyping, and be printable on a hobbyist printer

These constraints lead to this design:

![solidworks render](/solidworks/images/solidworks/bat_box/solidworks_render_01.png)
![front panel](/solidworks/images/solidworks/bat_box/panel_mostly_filled_01.jpg)

One of the biggest gains from this project was development of two things:
 - The method I use to creat durable labels and text on the surface of the print, by cutting the text into the model and then printing the first layer in a different color then the rest of the model.
 - this interlock design, to make it easy to combine multiple prints in a sturdy fashion. You can see the printed version in the image above. By simply printing both parts separate from each other, the built in precision of even basic 3d printers can make ttwo parts that mate easily, especially given a small chamfer to help align the two parts.
 ![separation cut diagram](/solidworks/images/solidworks/bat_box/separation_cut.png)

## Car USB C Charger addition

![Car Charger Isometric View](/solidworks/images/solidworks/car_charger_iso.png)

As of June 2023, I drive a 2000 Mazda Protege LX. Unfortunately Mazda did not future proof this vehicle by adding USB C ports to it so I can charge my phone. I have instead used car cigarette port chargers to keep my phone topped off. These have several problems though:

 - Unreliable connection
    - Many times my charger has come unplugged and not charged my phone while I was driving, very annoying.
 - RF interference
    - Cheaper chargers emit lots of RF noise, and as a licensed Amater Radio Operator I dislike this immensely. It can interfere with FM radio reception.
 - Cable routing
    - I have to route the cable from the charger port in the middle of the vehicle, over the steering column, then wrap it around my phone mount to keep the cable from going anywhere or being in the way. This looks bad can even be dangerous if it gets caught in the steering column's internal mechanisms

Therefore I designed a replacement to one of my car's button blanks on the left side of the steering column. 

It uses two clips to retain it into the vehicle so that I can remove it, if it's broken or something. 

![Car Charger Side View](/solidworks/images/solidworks/car_charger_side.png)

Four M2 fasteners retain the Ali Express USB C charger circuit.

![Car Charger circuit in solidworks](/solidworks/images/solidworks/car_charger_usb_circuit2.png)

Here is the real one for comparison, and a link to purchase it at: [Aliexpress.us](https://www.aliexpress.us/item/3256805109602467.html)


![Car Charger circuit in solidworks](/solidworks/images/solidworks/car_charger_usb_circuit.jpg)

Heres a view of it post install:

{{< rawhtml >}}


<video width=100% controls>
    <source src="/solidworks/images/solidworks/car_charger_demo.m4v" type="video/mp4">
    Your browser does not support the video tag.  
</video>

{{< /rawhtml >}}




## Capstone Tank  Design Project

![endcap internal view](/solidworks/images/solidworks/endcap_internal.png)
![endcap real life image](/solidworks/images/solidworks/endcap_real.jpg)
At Oregon state University there are  several rocketry teams, I was part of the Hybrid Propellant Rocket Team, our goal was to build a hybrid propellant Rocket to reach the Karman Line. 
I was part of the propulsion team, and was the lead designer for our oxidizer tank. 

We had to design a pressure vessel to meet several  requirements:
 - maximize propellant volume (no hemispheric tanks or tank ends)
 - have attachment points for several sensors at fittings, including:
	 - Temperature sensor
	 - Pressure Sensor
	 - Capacitance Sensor
	 - Filling port
	 - Drain port
	 - structural connections for motor tube struts
	 - emergency venting port
	 - radial rocket tube interfaces
 - Mainly student manufacturable
 - quick assembly and disassembly for cleaning and transport
 - hold liquid Nitrous Oxide at its room temp vapor pressure 
 - 	at a factor of safety of at least 2 for yielding

These requirements forced us to innovate. We had to abandon regular hemispheric tank ends due to space and fixture constraints, even though they have nice stress characteristics. We simply couldn't justify the waste associated with buying a large piece of aerospace grade aluminum stock and machining 99% of it away. Just one set of end caps would put us over budget, and would leave no room for error.

We designed an internal ribbing structure to prevent excessive end cap bending, and tested it using finite element analysis before consulting with our faculty advisors or manufacturing.  Additionally, we decided to fix our ports to the sides of these ribs to reduce weight while maintaining rigidity.

We also had many discussions as to the sealing method for our tank. in previous years, we had issues with our O-rings being cut during assembly. this was due to the rings passing underneath the machine screw holes we used for fixing the cap to our previous setup. in order to mitigate this issue, we decided to use a 2 pronged approach. First we have an O-ring that will pass underneath the bolt holes normally. If this is cut, the machine screws we use will have O-rings at the base of their threads, providing an alternate sealing method along with the second O-ring.


## Kit Rocket Assembly
![Rocket AV Bay in real life](/solidworks/images/solidworks/kit_rocket_avbay_real_2.jpg)
![Rocket AV Bay model 01](/solidworks/images/solidworks/kit_rocket_avbay_exploded2.png)
![Rocket AV Bay backside](/solidworks/images/solidworks/kit_rocket_avbay_rear.png)
Short version: I modeled this assembly in order to test fit a battery retainer that I had a friend 3D print. 

This assembly models the electronics bay of my kit rocket, and is used in conjunction with my arduino uno telemetry receiver, and my MATLAB telemetry script, in order to for a fully functional rocket tracking and landing site prediction suite.

## Arduino Uno box (including finished product)
![Arduino Uno Box](/solidworks/images/solidworks/kit_rocket_uno_rx_isometric.png)
![Arduino Uno Box](/solidworks/images/solidworks/kit_rocket_uno_rx_real_side_assembly.jpg)

I made this to contain the electronics for my Kit Rocket's Telemetry. I custom designed it in order to add in an antenna hole, and as an exercise in design.



## Rocket Stabilization System



![Arduino Stabilizer Solidworks Model](/solidworks/images/solidworks/ardu_stab_model.png)
{{< rawhtml >}}


<video width=100% controls>
    <source src="/solidworks/images/solidworks/Rocket Stab Test-1.m4v" type="video/mp4">
    Your browser does not support the video tag.  
</video>

{{< /rawhtml >}}



This assembly shows all the components required for a simple pitch and yaw stablization system, based on an Atmel 328p running an arduino firmware. It also consists of:
 - a 2S LiPo battery for compact, lightweight power.
 - A 5v voltage regulator
 - an MPU6050 gyroscope/accelerometer combo
 - 2 small servos
 - linkage system
 
