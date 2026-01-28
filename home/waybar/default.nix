{
stylix.targets.waybar.enable = true;
programs.waybar = {
  enable = true;
  settings = {
    mainBar = {
      layer = "top";
      modules-left = [ "hyprland/workspaces" ];
      # ... resten av din config
    };
  };
  
  # HÄR IMPORTERAS STYLINGEN:
  style = ''
    window#waybar {
      background: @base00; /* Hämtas direkt från Stylix */
      border-bottom: 3px solid @base0E;
      color: @base05;
    }
    #workspaces button.active {
      background: @base0E;
      color: @base00;
    }
  '';
};
}
