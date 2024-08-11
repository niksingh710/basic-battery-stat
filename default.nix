{ pkgs ? import <nixpkgs> { }, lib, }:
pkgs.writeShellApplication {
  name = "battery-stat";
  runtimeInputs = with pkgs; [ qt6.qttools ];
  text = lib.readFile ./basic-battery-stat;

  meta = with lib; {
    description = "Show battery stats";
    license = licenses.gpl3;
    platforms = platforms.linux;
    maintainers = with maintainers; [ niksingh710 ];
    mainProgram = "battery-stat";
  };
}
