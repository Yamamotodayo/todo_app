import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _mybox = Hive.box('mybox');

  // run this method if this the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['make Tutorial', false],
      ['Do cook', false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  // updata the database
  void updateDataBase() {
    _mybox.put('TODOLIST', toDoList);
  }
}
