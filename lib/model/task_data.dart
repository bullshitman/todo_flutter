import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Milk'),
    Task(title: 'Buy bread'),
    Task(title: 'MeanBearPig'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTitle) {
    _tasks.add(Task(title: newTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  //getter tasks list
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
}
