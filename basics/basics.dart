void main() {
  
  testFunction("Joao", prefix: "Humano ", " Vivo",adjective:"forte ");

}

void testFunction(String name, String sufix, {String prefix ="", String adjective = ''}){

  print('$prefix$adjective$name$sufix');
}