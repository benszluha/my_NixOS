{ config, lib, pkgs, ... }:

{
   # Enable the X11 windowing system.
   services.xserver.enable = true;
   services.xserver.desktopManager.xfce.enable = true;
   services.xserver.displayManager.lightdm.greeters.slick.enable = true;
   services.displayManager.defaultSession = "xfce"; 
}