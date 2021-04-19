import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/screens/tasks_screen.dart';
import 'package:todo_flutter/model/task.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  List<Task> tasks = [
    Task(title: 'Milk'),
    Task(title: 'Buy bread'),
    Task(title: 'MeanBearPig'),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<List>(
      create: (context) => tasks,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
