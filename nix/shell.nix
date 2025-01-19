{ pkgs
, ...
}:
pkgs.mkShell {
  name = "gtk dev & testing shell";
  nativeBuildInputs = with pkgs; [
    gtk2
    gtk3
    gtk4
    glib

    optipng
    sassc
    gtk-engine-murrine
    inkscape-with-extensions

    # testing
    #swaynotificationcenter
    #gnome-themes-extra
    #geary
    #totem
    #evince
    #gedit
    #gnome-terminal
    #lollypop
    #gnome-calendar
    #gnome-system-monitor
  ];
}