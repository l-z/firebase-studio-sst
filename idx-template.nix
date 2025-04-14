# idx-template.nix
{pkgs}: {
  packages = [
    pkgs.nodejs_20
    pkgs.openssh
  ];

  idx = {
    extensions = [
      "ms-vscode.js-debug"
    ];
  };

  bootstrap =
    ''
      mkdir "$out"
      mkdir -p "$out/.idx/"
      mkdir -p "$out/../.aws/"
      cp -rf ${./dev.nix} "$out/.idx/dev.nix"
      chmod -R +w "$out"
    '';
}
