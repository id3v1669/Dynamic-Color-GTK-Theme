{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
  gnome-shell,
  sassc,
  optipng,
  inkscape-with-extensions,
  gnome-themes-extra,
  gtk-engine-murrine,
}:
stdenvNoCC.mkDerivation {
  pname = "dyncmic-color-gtk-theme";
  version = "unstable-git";

  src = lib.cleanSource ../.;

  propagatedUserEnvPkgs = [ gtk-engine-murrine ];

  nativeBuildInputs = [ gnome-shell sassc optipng inkscape-with-extensions ];
  buildInputs = [ gnome-themes-extra ];

  dontBuild = true;

  postPatch = ''
    patchShebangs theme/new_install.sh
  '';

  installPhase = ''
    runHook preInstall
    mkdir -p $out/share/themes
    cd theme
    ./new_install.sh -s -Dark -t "$out/share/themes" -d -x
    runHook postInstall
  '';
}