# NixOS dotFiles

## Setup

In order to setup copy `hardware-configuration.nix.example` to `hardware-configuration.nix` and point all respective uuids partitions


## Building

### Nix flake

In order to setup nix lock file

```
nix flake lock
```

### Running nix image

```
sudo nixos-rebuild switch --flake .#ewan
```
