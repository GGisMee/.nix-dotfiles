{...}:
{
services.kanata = {
  enable = true;
  keyboards.default = {
    # Hämta namnen via: ls /dev/input/by-id/
    config = ''
      (defsrc caps)
      (defalias hyper (multi lctl lmet lalt lshift))
      (deflayer base @hyper)
    '';
  };
};
}
