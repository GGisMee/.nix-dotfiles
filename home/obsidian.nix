{pkgs, ...}: 
{
  programs.obsidian = {
    enable = true;
    vaults = {
      obsidian-vault = {
      enable = true;
      target = "Documents/Obs2";
      };
    };
  };
}
