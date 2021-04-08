import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasksList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasksList);
  }

  int get taskCount {
    return _tasksList.length;
  }

  void addToList(String newTaskTitle) {
    Task newTask = Task(name: newTaskTitle);
    _tasksList.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasksList.remove(task);
    notifyListeners();
  }
}
