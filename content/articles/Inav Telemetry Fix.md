---
title: "Inav Telemetry Fix"
date: 2022-02-27T21:57:13-05:00
---

![Matek F411 Wing](/articles/images/matekf411.png)

I've Been running Matek boards on my quadcopter for quite some time due to their nice build quality and associated PDB. 
However I was never able to get their telemetry working via softserial. I recently got the Matek F411 Wing board for a drone project and attempted to get this fixed.
After hours and hours of banging my head against the wall and trying to get my boards to output that sweet sweet data, I found the one thing I needed to do all along: 
Screw around with half duplex. For some reason I needed to have it set to `ON` in order to get it to work. Thats all I had to do this whole time haha. 
Well I hope this helps some random quadcopter/drone user in the future, good luck!

Inav Users:
```
set telemetry_inverted ON 
```

Betaflight Users:
```
tlm_halfduplex = ON
```