---
title: "Drone Mapping Project"
date: 2022-03-30T18:30:00-05:00
---
![Plane Top View](/articles/images/plane_isometric_view.png)

This RC plane is designed to fly over an area with a gopro or similar camera and map areas.
Its part of my strategy to not lose rockets I have launched in the desert.
It will have a wingspan of about 4 ft 11 in.
I'm trying to make as much of it 3d printed as possible, so that I can have fun designing it as a side project, and so that I can share it with the world when its done.
I'm not exactly sure how much payload capacity it has, nor how long it can fly. I used a Clark Y Airfoil for the wings as a starting point.

Its requirements are as follows:

1. Must fit in the back seat of my car.
2. medium or long range control distance (>1km)
3. long endurance so it can map a large area.
4. 90% 3D printable, Excluding:
	1. fasteners
	2. spars
	3. electronics (of course)
5. cargo space to fit a camera mount that is either static or dynamic (dynamic meaning it lowers the gimbal out of the body of the aircraft)
6. autonomous navigation and Return To Home mode (handled by [Inav](https://github.com/iNavFlight/inav) firmware)
7. Live Video downlink

Upon landing, the data from the drone will be processed using [OpenDroneMap](https://www.opendronemap.org/).
The output from this software will be a map of the desert that shows us everything that has landed nearby.

All of this is in an attempt to lower the amount of time people are out in the sun canvassing the desert.