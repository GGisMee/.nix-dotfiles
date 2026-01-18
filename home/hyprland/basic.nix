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

	  "mod Shift, Escape, exec, systemctl poweroff"
	  "mod, Escape, Escape, systemctl suspend"
	];
      };
  };
}
