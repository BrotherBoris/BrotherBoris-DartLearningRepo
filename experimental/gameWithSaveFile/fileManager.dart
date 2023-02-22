import 'dart:io';

/* void main() {


  String? playerName;
  bool playerNameFound = false;
  List<String> lines = saveFile.readAsLinesSync();
  for (int i = 0; i < lines.length; i++) {
    print("test");
    if (lines[i].startsWith("player_name: ")) {
      playerName = lines[i].substring(13);
      playerNameFound = true;
      break;
    }
  }

  if (!playerNameFound) {
    playerName = "Nameless";
    saveFile.writeAsStringSync("player_name: $playerName", mode: FileMode.append);
  }

  print("Player name: $playerName");
} */

class FileManager{

  static File? configFile;
  static File? saveFile;

  FileManager(){
    checkFiles();
  }






  void checkFiles(){
    Directory savesDir = Directory("saves");
    if (!savesDir.existsSync()) {
      savesDir.createSync();
    }

    configFile = File("saves/config.txt");
    if (!configFile!.existsSync()) {
      configFile!.createSync();
    }

    saveFile = File("saves/save.txt");
    if (!saveFile!.existsSync()) {
      saveFile!.createSync();
    }
  }
}
