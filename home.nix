{ config, pkgs, lib, ... }:

{
  programs.home-manager.enable = true;
  home.username = "ewan";
  home.homeDirectory = "/home/ewan";
  home.stateVersion = "21.05";

  imports = [ ./configs/main.nix ./packages/main.nix ];
  nixpkgs.overlays = [ (import ./overlays/main.nix) ];
  home.keyboard.layout = "fr";
}
