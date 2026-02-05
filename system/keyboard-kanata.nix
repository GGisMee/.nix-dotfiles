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
# Inställningar som gör att keychron keyboard är på även vid tabletmode
# Aktivera sensorer för rotation och tablet-mode detektering
hardware.sensor.iio.enable = true;

# Säkerställ att uinput (för Kanata) har rätt rättigheter
services.udev.extraRules = ''
  KERNEL=="uinput", MODE="0660", GROUP="input", OPTIONS+="static_node=uinput"
'';
}
