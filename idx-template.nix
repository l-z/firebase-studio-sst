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

  bootstrap = ''
    mkdir "$out"
    mkdir /home/user/.aws
    mkdir test
  '';
}
