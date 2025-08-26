---
title: Car USB C Charger addition
---


![Car Charger Isometric View](/solidworks/images/car_charger_iso.png)

As of June 2023, I drive a 2000 Mazda Protege LX. Unfortunately Mazda did not future proof this vehicle by adding USB C ports to it so I can charge my phone. I have instead used car cigarette port chargers to keep my phone topped off. These have several problems though:

 - Unreliable connection
    - Many times my charger has come unplugged and not charged my phone while I was driving, which is very annoying.
 - RF interference
    - Cheaper chargers emit lots of RF noise, and as a licensed Amateur Radio Operator I dislike this immensely. It can interfere with FM radio reception.
 - Cable routing
    - I have to route the cable from the charger port in the middle of the vehicle, over the steering column, then wrap it around my phone mount to keep the cable from going anywhere or being in the way. This looks bad can even be dangerous if it gets caught in the steering column's internal mechanisms

Therefore I designed a replacement to one of my car's button blanks on the left side of the steering column. 

It uses two clips to retain it into the vehicle so that I can remove it, if it's broken or something. 

![Car Charger Side View](/solidworks/images/car_charger_side.png)

Four M2 fasteners retain the Ali Express USB C charger circuit. I modeled this version of the chip using calipers to measure relevant dimensions and create a stand in to model my enclosure around. This helped me ensure first time fit quality. 

One downside of this design is that the two locking arms were made out of PLA plastic and thus deformed during hot summer days. This temperature sensitivity was not comprehended during the design process and lead to the charger falling out . I fixed this by switching the fastening strategy to just using cyanoacrylate glue. This fix worked and the charger remained in the vehicle even after I sold it.

![Car Charger circuit in solidworks](/solidworks/images/car_charger_usb_circuit2.png)

Here is the real one for comparison, and a link to purchase it at: [Aliexpress.us](https://www.aliexpress.us/item/3256805109602467.html)


![Car Charger circuit in solidworks](/solidworks/images/car_charger_usb_circuit.jpg)

Heres a view of it post install:

{{< rawhtml >}}


<video width=100% controls>
    <source src="/solidworks/images/car_charger_demo.m4v" type="video/mp4">
    Your browser does not support the video tag.  
</video>

{{< /rawhtml >}}