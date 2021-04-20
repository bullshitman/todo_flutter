import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/screens/tasks_screen.dart';
import 'package:todo_flutter/model/task_data.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
