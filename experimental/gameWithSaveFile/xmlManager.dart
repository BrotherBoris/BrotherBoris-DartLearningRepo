/* import 'dart:io';
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
          <Name Title="Nameless One"/>
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

    saveFile = File("saves/save.xml");
    if (!saveFile!.existsSync()) {
      createSaveXMLStructure();
    }
  }

  void readSave(){
    final file = File('saves/save.xml');
    final contents = file.readAsStringSync();
    final document = XmlDocument.parse(contents);

    final nameElement = document.getElement('World')?.getElement('Actors')
      ?.getElement('Player')?.getElement('Name');
    final title = nameElement?.getAttribute('Title') ?? '';

    print('Title: $title');
    
  }






} */
