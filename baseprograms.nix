

# pipewire sound
{config, pkgs, ...}:

{

    environment.systemPackages = with pkgs; [
	firefox
	neovim

];
	programs.fish.enable = true;
	programs.steam.enable = true;
	users.users.xenon = {
		shell = pkgs.fish;
	};
    
}
