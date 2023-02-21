import 'dart:io';
import 'package:xml/xml.dart';



class XMLManager{
  static File? configFile;
  static File? saveFile;

  XMLManager(){
    checkFiles();
  }

 


  void createSaveXMLStructure(){
    var finalStructure = '''
    <World>
      <Actors>
        <Player>
          <Name>Nameless One</Name>
          <Health Max="50" Current="50" />
          <Mana Max="50" Current="50" />
        </Player>

      </Actors>
    </World>
    ''';

    var xmlDocument = XmlDocument.parse(finalStructure);

    saveFile =File('saves/Save.xml');
    saveFile!.writeAsString(xmlDocument.toXmlString(pretty: true));

  }

  
  void checkFiles(){
    Directory savesDir = Directory("saves");
    if (!savesDir.existsSync()) {
      savesDir.createSync();
    }

    /* configFile = File("saves/config.txt");
    if (!configFile!.existsSync()) {
      configFile!.createSync();
    } */

    saveFile = File("saves/save.xml");
    if (!saveFile!.existsSync()) {
      createSaveXMLStructure();
    }
  }
}



/* void main() {

  createStructure();

  /*
  // Read the XML document and print the person's name
  final xmlDoc = XmlDocument.parse(file.readAsStringSync());
  final personNode = xmlDoc.findElements('person').first;
  final personName = personNode.getAttribute('name');
  print('Person name: $personName'); */
} */