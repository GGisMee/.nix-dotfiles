{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      input = {
        kb_layout = "se";
	follow_mouse = 1;
	};

	bind = [
	  "SUPER, R, exec, fuzzel"

	]
      };
  };
}
