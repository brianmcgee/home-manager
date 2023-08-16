{ pkgs, ... }: {
  config = {
    programs.feh.enable = true;
    test.stubs.feh = { };
    nmt.script = "\n";
  };
}
