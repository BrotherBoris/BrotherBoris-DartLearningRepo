import "dart:io";

void main() {
  Pile myPile = new Pile<String>();

  myPile.insertItem("Book 1");
  myPile.insertItem("Book 2");
  myPile.insertItem("Book 3");
  myPile.insertItem("Book 4");

  myPile.readItems();
  
  myPile.removeItem();

  print("////////////");

  myPile.insertItem("Book 5");

  myPile.readItems();

}


class Pile<T> {
  List<T> _content = [];
  int _top = 0;

  void insertItem(T item){
    _top++;
    _content.add(item);
  }

  void readItems(){
    for (var i = _top-1; i >= 0; i--) {
      print(_content[i]);
    }
  }

  void removeItem(){
    _content.removeAt(_top-1);
    _top--;
  }

  ////GettersSetters////////GettersSetters////
  //int get top => _top;

  //List get content => _content;
  ////GettersSetters////////GettersSetters////
}