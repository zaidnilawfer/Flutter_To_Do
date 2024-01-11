import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  // ignore: unused_field
  final _myBox = Hive.box('mybox');

  void creatInitialData() {
    toDoList = [
      ["Learn Tutorial", false],
      ["Do Exercise", false]
    ];
  }
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }
  void updateDataBase() {
    _myBox.put("TODOLIST",toDoList);
  }
}
