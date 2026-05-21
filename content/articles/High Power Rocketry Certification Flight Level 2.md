---
title: "High Power L2 Cert Achieved!"
date: 2026-05-18T17:00:00-05:00
---

![Level 2 Cert flight plot](/articles/images/16MAY26_Launch/just_before_launch_setup.JPG)

Oregon Rocketry holds meetings roughly every month for rocketeers to hone their craft. In May, the club hosts their premiere spring event: **Spring Thunder.** I attended and flew my kit rocket, *Minuteman II* using an Aerotech J350 motor, within a reusable motor system. My altimeter, a Stratologger SL100 powered by a custom fabricated 2S Lithium Ion battery, reported an apogee altitude of 3832 feet AGL. Recovery was nominal, with both parachutes deploying as programmed. 

![Level 2 Cert flight plot](/articles/images/16MAY26_Launch/L2_cert_alt_plot.png)

The rocket required an altered integration plan. For the previous flights, with a single parachute deployment, loading the main chute in the fin can (lower fuselage) was preferred, as I could deploy the parachute either with an electrically triggered black powder charge, or using the motor's integrated chute deployment charge. For this launch, I re-ordered the parachutes, putting the drogue parachute in the fin can and the main parachute in the much smaller space above the avionics bay. This allowed the motor deployment to be used as a backup for the drogue. This setup worked perfectly. At apogee, the altimeter triggered the drogue release, putting the rocket into a 125 ft/s descent. I programmed the altimeter to deploy the main parachute at 600 feet above the launch altitude, and at precisely the right time, the main parachute deployed, reducing the descent to a safe and leisurely 9.2 ft/s. 

During this time, I was tracking the rocket with my custom built Telemetry stack, and I was able to track the rocket during the full flight, including the boost phase, although the location data isnt necessarily trustworthy at that time, due to unavoidable GPS inaccuracy as a result of ITAR restrictions. Commercially available GPS units are speed limited. I used a hobby grade GPS unit outputting NMEA data at 1hz, an Arduino Nano to collect that datastream and boil it down to only the necessary data (plus battery voltage), and an HC12 transmitter operating on the 70cm wavelength amateur radio band. On thereceiving end I have a 6 element Yagi antenna, connected to a custom HC12 hat for the Arduino Nano, which is then connected to my android phone using OTG mode to power the Arduino off my phone directly. Once the data is on my phone, a custom android app I developed reads this data to the screeen, as well as extrapolates a landing location.

Once the flight was over and the rocket landed safely, I was able to continue communicating with the rocket, and the rocket accurately reported its position even while the GPS was face down. the 70cm band is excellent at transmitting through small brush and plants. This allowed me to walk directly up to my rocket while getting consistent second by second pings.


![Level 2 Cert flight plot](/articles/images/16MAY26_Launch/pre_launch_with_rocket.JPG)

## Lessons Learned:

1. Parachute packing is worth getting an extra pair of eyes to look at. Z folding is a great choice but cannot help if deployment charge / parachute orientation is incorrect. Set your rocket up sort of like a cannon: Shoot the parachute out of the airframe with the charge.

2. Use ematches for your parachute charges, and build/test these well in advance, at least a couple weeks for testing. it is not fun trying to rebuild charges in the windy desert. Use good quality **LOW CURRENT** igniters. They use less energy, and have a far reduced chance of causing brownout conditions in any electronics that share a power source.

## Important issues avoided:

1. Make sure you test your telemetry setup extensively. Use 433mhz/70cm band if you can. Use a Yagi antenna if you can, or a helical antenna with many turns. I tested my setup at 800 meters on the ground and found good success at 3800 ft altitude AGL. **DO NOT** rely on dipole antenna for recovery. They have poor range, and cannot be used for direction finding once your rocket has landed. If your rocket is outputting B.S. location coordinates, a YAGI/Helical can help you find which direction you should be walking, at least. Look into Featherweight brand trackers. Have redundancy! Don't be that guy wandering in the desert with a single antenna just hoping he will stumble upon his rocket. a Directional antenna is a **MUST HAVE**. Make sure its tuned well if you made it yourself. In fact, do that anyway. A NanoVNA will serve you well here.

2. Investigate shear pin options and test them with your black powder setup. For my 7lb, 4" diameter, 65" rocket, I used a single nylon 2-56 machine screw threaded into a 3/32 inch hole thru my paylod section and into my thicker electronics bay tube coupler. I also used Pyrodex as a Black Powder substitude. it burns, you just need 25% more for the same energy. Test your charges weeks in advance and youll have great success. I highly suggest investigating this option: if your airframe is a weak material like cardboard, drill an oversized hole, fill it with epoxy, then drill and tap a 2-56 hole. I had pretty good success with just a 3/32 hole. 1/8 is too big, dont oversize this hole or youll run into hole bearing failures in cardboard.

3. Try to poke yoke your rocket if possible. Make it easy to put together correctly. Most electonics bay tube couplers have a single band to separate the lower and upper sections of your rocket. Try adding some tongue and grooves to your rocket so that your tube sections slot together in the right orientations. Make integration easier by engineering your rocket differently beforehand.

4. Investigate power draw with your setup. Connect all your electronics together and get them operating in "Pad Mode" or however you set it up. My full setup, including telemetry running and transmitting, was using 84mA. ~50 for the GPS, ~30 for the HC12 TX, and 4 ish for the arduino and Stratologger. For my 2S Lithium Ion battery setup, that equated to about 24 hrs of pad time. If you arent ready for hours of pad time, especially on larger rockets, I highly suggest a ground station with a battery tender. TP5100 chips can be connected to your battery through 2 bullet plug connectors through your airframe, and they should disconnect on launch, as they are only held in by friction. Another option is the following: USB C Battery bank -> USB C Cable -> Magnetic charginging & Data cable, with the plug glued into your airframe -> USB C sink/dummy connector set to output 12v -> TP5100 -> Lithium batteries.

This launch fulfilled the requirements for the Tripoli Level 2 practical test, and in conjunction with the online test, fulfilled the total requirements for Level 2 certification. Up next is level 3, wish me luck!