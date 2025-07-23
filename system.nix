{...}:

{
  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
  };

  nix.settings = {
    auto-optimise-store = true;
    experimental-features = [ "nix-command" "flakes" ];
  };

  nix.gc = {
    automatic = true;
    dates = "dayly";
    options = "--delete-older-than 7d";
  };
}
