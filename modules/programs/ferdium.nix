{ config, lib, pkgs, ... }:
let cfg = config.programs.ferdium;
in {

  options.programs.ferdium = with lib; {
    enable = mkEnableOption "Ferdium";
    package = mkOption {
      type = types.package;
      default = pkgs.ferdium;
      defaultText = literalExpression "pkgs.ferdium";
      description = "The Ferdium package to use.";
    };
  };

  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
