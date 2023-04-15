import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //refernce our box
  final _myBox = Hive.box('mybox');

  //this method will work if this is the first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Make app", false],
      ["Do homework", false],
    ];
  }

  //this method will load data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
