{
  lib,
  stdenvNoCC,
  makeWrapper,
  quickshell,
  grim,
  imagemagick,
  wl-clipboard,
}:
stdenvNoCC.mkDerivation {
  pname = "hyprquickshot";
  version = "0.1.0";

  src = lib.cleanSource ./.;

  nativeBuildInputs = [ makeWrapper ];
  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/hyprquickshot
    cp -r icons shaders src shell.qml $out/share/hyprquickshot/

    mkdir -p $out/bin
    makeWrapper ${quickshell}/bin/quickshell $out/bin/hyprquickshot \
      --add-flags "-p $out/share/hyprquickshot" \
      --prefix PATH : ${
        lib.makeBinPath [
          grim
          imagemagick
          wl-clipboard
        ]
      }

    runHook postInstall
  '';

  meta = {
    description = "A screenshot utility for Hyprland built with Quickshell";
    license = lib.licenses.mit;
    platforms = lib.platforms.linux;
    mainProgram = "hyprquickshot";
  };
}
