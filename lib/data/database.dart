import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
    // list of todo tasks
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('myBox');

  // run this method if this is the first run
  void createInitialData(){
    toDoList = [
      ["Drink Water", false],
      ["Train abs", false],

    ];
  }

  // load the data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }

}