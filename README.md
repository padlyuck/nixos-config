# nixos-config
Educational project about NixOS configuration

# Disk partitioning with Disko(No flake version)
```bash
sudo nix \
  --experimental-features "nix-command flakes" \
  run github:nix-community/disko/latest -- \
  --mode destroy,format,mount ./disko.nix
```
