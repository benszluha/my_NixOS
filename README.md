# my_NixOS

## disk by label
mkfs.ext4 /dev/sdX -L NIXROOT
swaplabel -L NIXSWAP /dev/sdX
