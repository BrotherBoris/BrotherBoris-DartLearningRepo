import 'dart:io';

void main() {
  String documentsPath = "${Platform.environment['USERPROFILE']}\\Documents";
  Directory myRpgDir = Directory("$documentsPath\\myRPG");
  if (!myRpgDir.existsSync()) {
    myRpgDir.createSync();
  }

  Directory savesDir = Directory("${myRpgDir.path}\\saves");
  if (!savesDir.existsSync()) {
    savesDir.createSync();
  }

  File saveFile = File("${savesDir.path}\\save.txt");
  if (!saveFile.existsSync()) {
    saveFile.createSync();
  }
}
