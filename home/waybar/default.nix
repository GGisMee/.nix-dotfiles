{
stylix.targets.waybar.enable = true;
programs.waybar = {
  enable = true;
  settings = {
    mainBar = {
    position = "top";

    modules-left = [ "hyprland/workspaces" "hyprland/window" ];
    modules-center = [ "clock" ];
    modules-right = [ "pulseaudio" "network" "cpu" "memory" "tray" "battery"];
    
    "battery" = {
      states = {
        warning = 30;
        critical = 15;
      };

      format = "{icon} {capacity}%";
      format-charging = " {capacity}%";
      format-plugged = " {capacity}%";
      format-icons = [ "" "" "" "" "" ];
    };

    "hyprland/workspaces" = {
      format = "{name}";
      on-click = "activate";
      all-outputs = true;
    };
  
    "clock" = {
      format = "{:%H:%M | %d/%m}";
      tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
    };

    "pulseaudio" = {
      format = "{icon} {volume}%";
      format-icons = { default = [ "" "" "" ]; };
      on-click = "pavucontrol";
      };
    };
  };
  # HÄR IMPORTERAS STYLINGEN:
  style = builtins.readFile ./style.css;
  };
}
