import 'dart:io';

void main() {
  Process.run("cmd.exe", ["/k", "dart compile exe .\\experimental\\documentsHopping.dart"]);
}