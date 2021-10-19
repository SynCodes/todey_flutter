import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask (String text){
    try{
      _tasks.add(
        Task(name: text),
      );
      notifyListeners();
    }
    catch(e){
      print(e);
    }

  }

  void removeTask(int taskIndex){
    _tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void updateTask (Task task){
    task.toggleIsDone();
    notifyListeners();
  }

}