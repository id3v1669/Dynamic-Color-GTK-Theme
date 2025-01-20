{ pkgs
, ...
}:
pkgs.mkShell {
  name = "gtk dev & testing shell";
  #nativeBuildInputs 
  packages = with pkgs; [
    gtk2
    gtk3
    gtk4
    pkg-config
    libadwaita
    glib

    optipng
    sassc
    gtk-engine-murrine
    inkscape-with-extensions


    gst_all_1.gst-plugins-base # for gtk4-widget-factory

    # testing
    # swaynotificationcenter
    # gnome-themes-extra
    # geary
    # totem
    # evince
    # gedit
    # gnome-terminal
    # lollypop
    # gnome-calendar
    # gnome-system-monitor
  ];
}