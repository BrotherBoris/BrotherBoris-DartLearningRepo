/* import 'dart:io';
import 'package:xml/xml.dart';

void main() {
  // Load the XML file
  final xmlString = '''
  <person>
    <name>John Doe</name>
    <phone>1234567890</phone>
  </person>
  ''';
  final xmlDocument = XmlDocument.parse(xmlString);

  // Find the parent element
  final parentElement = xmlDocument.findElements('person').single;

  // Create a new child element
  final childElement = XmlElement(
    XmlName('email'),
    [XmlAttribute(XmlName('type'), 'work')],
    [XmlText('john.doe@example.com')],
  );

  // Add the new child element to the parent element
  parentElement.children.add(childElement);

  // Print the updated XML string
  print(xmlDocument.toXmlString(pretty: true));
}
 */