---
title: "using new disks for LVM tutorial"
date: 2023-01-5T18:30:00-05:00
---





use ```lsblk``` to identify disks to use.

on a blank disk, use 
```
sudo pvcreate /dev/<diskdevicename>
```

If you get this error:
```
Cannot use /dev/<diskdevicename>: device is partitioned
```

Use this line to completeley wipe the disk:
```
sudo wipefs --all --backup /dev/<diskdevicename>
```

use ```sudo pvs``` to see your volume groups and disks associated with them.

use 
```
sudo vgextend /dev/<volumegroupname>/<logicalvolumename> /dev/<diskdevicename>
``` 
to add your new disk to your existing volume group. I ticked the box during OS installation to use LVM, so I already have a volume group. you may need to create one.


I dont really trust any of my disks so I tend to avoid creating multi disk volumes on my workstation, other than mirrored RAID arrays.

use 
```
sudo lvcreate -l 100%FREE -n scratch_space vgubuntu /dev/<diskdevicename>
```

Once you have a volume group, and have created a logical volume, use this command to extend it into a raid array:
```
sudo lvconvert --type raid1 -m 1 /dev/<volumegroupname>/<logicalvolumename>
```

[RedHat source on LVM](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/logical_volume_manager_administration/lvm_examples)

[elvir kuric&#39;s blog](https://ekuric.wordpress.com/2011/08/26/lv-on-specific-pv/)

[Tyler&#39;s Guide](https://tylersguides.com/guides/mirroring-an-existing-lvm-volume/)