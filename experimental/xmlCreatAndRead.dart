import 'dart:io';
import 'package:xml/xml.dart';

void main() {
  final name = 'John Doe';
  final phoneNumber = '555-1234';

  // Create XML document with person element and attributes
  final personElement = XmlElement(
    XmlName('person'),
    [
      XmlAttribute(XmlName('name'), name),
      XmlAttribute(XmlName('phone'), phoneNumber),
    ],
  );

  final document = XmlDocument([
    XmlProcessing('xml', 'version="1.0"'),
    XmlComment('Person information'),
    personElement,
  ]);

  // Write the XML document to file
  final file = File('person.xml');
  file.writeAsStringSync(document.toXmlString(pretty: true));

  // Read the XML document and print the person's name
  final xmlDoc = XmlDocument.parse(file.readAsStringSync());
  final personNode = xmlDoc.findElements('person').first;
  final personName = personNode.getAttribute('name');
  print('Person name: $personName');
}