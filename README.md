# ros-zfs
Someone wants to put zfs into ros initrd, this repo is used to build zfs for RancherOS.

## How to make
Just need to specify the OS_KERNEL and ZFS versions:
```
OS_KERNEL=4.14.85-rancher ZFS=0.7.12 make
```
For the OS_KERNEL version, please refer to [rancher/os-kernel](https://github.com/rancher/os-kernel/releases).

For the ZFS version, please refer to [zfsonlinux/zfs](https://github.com/zfsonlinux/zfs/releases).

## How to use
For ZFS, we need to solve two problems, add kernel support and ZFS command support.

You can refer to this branch [niusmallnan/os os-zfs-initrd](https://github.com/niusmallnan/os/tree/os-zfs-initrd).
