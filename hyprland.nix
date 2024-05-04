

# pipewire sound
{config, pkgs, ...}:

{
    programs.hyprland.enable = true;
    environment.systemPackages = with pkgs; [
        kitty
        mako
        waybar
	wofi
	libsForQt5.dolphin
];
    
    xdg.portal = {
        enable = true;
        extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    };
}
