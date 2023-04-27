## 1. check UUID
    ls -al /dev/disk/by-uuid/

## 2. edit /etc/fstab (insert UUID, filesystem, mount)
    # /etc/fstab: static file system information.
    #
    # Use 'blkid' to print the universally unique identifier for a
    # device; this may be used with UUID= as a more robust way to name devices
    # that works even if disks are added and removed. See fstab(5).
    #
    # <file system> <mount point>   <type>  <options>       <dump>  <pass>
    # / was on /dev/sdb1 during installation
    UUID=63a46dce-b895-4c1f-9034-b1104694a956 /               ext4    errors=remount-ro 0       1
    # swap was on /dev/sdb5 during installation
    UUID=b9b9ee49-c69c-475b-894b-1279d44034ae none            swap    sw              0       0
    # data drive
    UUID=e9503728-f419-4a14-9fc0-21e2947af50c  /media/z/e9503728-f419-4a14-9fc0-21e2947af50c    ext4    defaults        0       0

## 3. test for error
    findmnt --verify

## 4. if no error, everything is good
