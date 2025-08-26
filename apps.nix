{ config, pkgs, ... }:

{
  services.flatpak.enable = true;
  nixpkgs.config.allowUnfree = true;
  programs.zsh.enable = true;

  users.users.isal.packages = with pkgs; [
  #  thunderbird
  ];

  environment.systemPackages = with pkgs; [
    flatpak
    gnome-software
    go
    fnm
    ghostty
    zsh
    neovim
    dbeaver-bin
    filen-desktop
    lens
    ngrok
    vscode
    pyenv
    gemini-cli
    awscli2
    terraform
    distrobox
    btop
    obsidian
    brave
    protonvpn-gui
    telegram-desktop
    discord
    teamviewer
    galaxy-buds-client
  ];

  programs.firefox.enable = true;
  programs.dconf.enable = true;

  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than +5";
  };
  
  # Optional: Also optimize the store
  nix.settings.auto-optimise-store = true;
}