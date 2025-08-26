---
title: "Looking Glass Tips"
date: 2022-11-08T20:00:00-05:00
---

Looking glass can be really difficult to setup correctly, so heres some tips

## IVSHEM Device

Make sure to disable secure boot in the VM's BIOS/UEFI. 
You can enter the bios by using Windows 10's secure boot options entry in the start menu, then navigating thru that until you find the UEFI settings

![Change Advanced Startup Options](/articles/images/change_advanced_startup_options.jpg)

## Scream

This one should work out of the box, once you figure out where to download it and how to install it.


[Scream Github](https://github.com/duncanthrax/scream)

[Install instructions](https://looking-glass.io/wiki/Using_Scream_over_LAN)

This website suggests you use `make` to build the program, I suggest `sudo make install` so that you can call it from the command line.


In case you need to fuck the default installation up, heres the libvirt networking page, but the script below should work out of the box, hopefully.
[Libvirt Networking](https://wiki.libvirt.org/page/Networking)



## My Script

To run your VM you need to:
1. Start the VM
2. Start the Looking Glass client
3. start the Scream reciever

The following script accomplishes that, and closes when the looking glass instance closes.

```
#!/bin/bash
echo "Starting VM"
virsh start win10 # Optional line, this will simply start the VM if it isn't running. You can delete this if you wish. Make sure to change the name to your VM name.
echo "Starting Looking Glass"
echo "Reminder:Use Scroll lock to capture mouse!"
looking-glass-client -S -F -K 144 -k >/dev/null 2>&1 & # Starts Looking Glass, and ignores all output (We aren't watching anyways)
echo "Starting Scream"

scream -i virbr0 & # Starts Scream, youll need to make a gust/host private network

wait -n # We wait for any of these processes to exit. (Like closing the Looking Glass window, in our case)
pkill -P $$ # We kill the remaining processes (In our case, scream)
```


