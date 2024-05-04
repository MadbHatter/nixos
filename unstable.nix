{ config, pkgs, ... }:
let
  unstable = import <nixpkgs-unstable>
    # reuse the current configuration
    { config = config.nixpkgs.config; };
in
{
  environment.systemPackages = with pkgs; [
    unstable.git
	unstable.vscode-fhs
	unstable.starship
  ];
}
