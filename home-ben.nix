{ config, pkgs, ... }:

{
    #Install home-manager and have it manage itself
    programs.home-manager = {
        enable = true;
    }; #programs.home-manager

    home.username = "szluhab";
    home.homeDirectory = "/home/szluhab";

    programs.zsh = {
        enable = true;
        oh-my-zsh = {
            enable = true;
            plugins = ["git" "thefuck"];
            theme = "robbyrussell";
        }; #oh-my-zsh

        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake ~/.dotfiles";
            config = "code ~/.dotfiles";
        }; #Shell Aliases (zsh)

        initExtra = ''
        ${pkgs.neofetch}/bin/neofetch
        '';
    }; #zsh

    programs.alacritty = {
        enable = true;
        settings = {
            env.TERM = "xterm-256color";
            font = {
                size = 8;
            }; #Font
            window = {
                opacity = 0.9;
                blur = true;
                startup_mode = "Maximized";
            }; #Window
        }; #Settings
    }; #Alacritty

    programs.git = {
        enable = true;
        userName = "benszluha";
        userEmail = "ben@szluha.co.za";
    }; #git

    home.packages = with pkgs; [
        neofetch

        #utils
        pciutils
        usbutils
    ]; #home.packages

    home.stateVersion = "24.05";
}