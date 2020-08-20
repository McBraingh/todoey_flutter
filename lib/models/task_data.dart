import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Tasks> _tasks = [
    Tasks(name: 'Buy Milk'),
    Tasks(name: 'Buy eggs'),
    Tasks(name: 'Buy Bread'),

  ];

  UnmodifiableListView<Tasks> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Tasks(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Tasks task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks task){
    _tasks.remove(task);
    notifyListeners();
  }
}