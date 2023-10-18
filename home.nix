{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ewan";
  home.homeDirectory = "/home/ewan";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.sessionVariables = {
    TERMINAL="kitty";
  };

  home.packages = with pkgs; [ 
    kitty
    git
    tdesktop
    neofetch
    neovim
    nodejs
    yarn
    brave
    jetbrains.clion
   ];

  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = "0.9";
      font_size = "14.0";
      font_family      = "FiraCode Retina";
      bold_font        = "auto";
      italic_font      = "auto";
      bold_italic_font = "auto";

      background            = "#212224";
      foreground            = "#ededed";
      cursor                = "#dfd9b8";
      selection_background  = "#384563";
      color0                = "#000000";
      color8                = "#5c4f49";
      color1                = "#cf0d17";
      color9                = "#ef7d17";
      color2                = "#128033";
      color10               = "#b1d130";
      color3                = "#ffca3d";
      color11               = "#fff11f";
      color4                = "#006ab3";
      color12               = "#4fc2fd";
      color5                = "#6a2674";
      color13               = "#de0070";
      color6                = "#384563";
      color14               = "#5c4f49";
      color7                = "#ededed";
      color15               = "#fefffe";
      selection_foreground = "#212224";
    };
  };
}
