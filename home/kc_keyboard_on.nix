{
wayland.windowManager.hyprland.settings.device = [
  {
    name = "kanata*";
    enabled = true;
  }
  {
    name = "keychron*";
    enabled = true;
  }
];
wayland.windowManager.hyprland.settings = {
  # Inaktivera Hyprlands automatiska hantering av tablet mode
  # Detta tvingar Hyprland att INTE deaktivera keyboards automatiskt
  bindl = [
    ", switch:on:Intel HID switches, exec, true"
    ", switch:on:HP WMI hotkeys, exec, true"
  ];

  # Explicit tillåtelse (behövs ibland utöver bindl)
  misc = {
    # Förhindrar att Hyprland går in i ett läge där den ignorerar input
    allow_session_lock_restore = true;
  };
};
}
