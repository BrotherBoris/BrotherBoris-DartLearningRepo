import "dart:io";

void main() {
  Stack myStack = new Stack<String>();

  myStack.insertItem("Book 1");
  myStack.insertItem("Book 2");
  myStack.insertItem("Book 3");
  myStack.insertItem("Book 4");

  myStack.readItems();
  
  myStack.removeItemAtTop();

  print("////////////");

  myStack.insertItem("Book 5");

  myStack.readItems();

  print(myStack.runtimeType);

}


class Stack<T> {
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

  void removeItemAtTop(){
    _content.removeAt(_top-1);
    _top--;
  }

  ////GettersSetters////////GettersSetters////
  //int get top => _top;

  //List get content => _content;
  ////GettersSetters////////GettersSetters////
}