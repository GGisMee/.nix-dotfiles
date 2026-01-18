{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      input = {
        kb_layout = "se";
	follow_mouse = 1;
	};
	"$mod" = "SUPER";
	bind = [
	  "$mod, D, exec, fuzzel"
	  "$mod, T, exec, kitty"

	  "$mod, Q, killactive,"

	  "$mod Shift, Escape, exec, systemctl poweroff"
	  "$mod, Escape, exec, systemctl suspend"

	  
	];
	binde = [
# Ljudvolym (Wireplumber)
		", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
			", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"

# Ljusstyrka (brightnessctl)
			", XF86MonBrightnessUp, exec, brightnessctl set +5%"
			", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
	];

	bindl = [
# Media-kontroll (playerctl)
		", XF86AudioPlay, exec, playerctl play-pause"
			", XF86AudioNext, exec, playerctl next"
			", XF86AudioPrev, exec, playerctl previous"
			", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
	];
      };
  };
}
