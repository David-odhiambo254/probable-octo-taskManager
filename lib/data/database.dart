import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];

  //reference box
  final _myBox = Hive.box('mybox');

  // run this if it's 1st time ever opening the app
  void createInitialData(){
    toDoList = [
      ["Make tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load data from the database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }

}