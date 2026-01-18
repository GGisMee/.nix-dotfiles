{pkgs, ...}: 
{
  programs.neovim = {
    enable = true;
    configure = {
      customRC = ''set nowrap'';
      packages.myVimPackage = with pkgs.vimPlugins; {
	start = [ 
	nvim-lspconfig          # LSP
	nvim-treesitter.withAllGrammars # Syntax
	telescope-nvim          # Sök
	catppuccin-nvim         # Tema
	];
    };
  };
};
}
