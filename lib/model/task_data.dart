import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:to_do/model/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy rice')
  ];
  int get taskCount {
    return _tasks.length;
  }

  void toggleCheckBox(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void addTask(String outPutValue) {
    final taskAdd = Task(name: outPutValue);
    _tasks.add(taskAdd);
    notifyListeners();
  }

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_tasks);
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
