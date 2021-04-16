import 'package:flutter/material.dart';
import 'package:todo_flutter/model/task.dart';
import 'package:todo_flutter/widgets/task_checkbox_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(title: 'Milk'),
    Task(title: 'Buy bread'),
    Task(title: 'MeanBearPig'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskCheckBoxTile(
            title: tasks[index].title,
            isChecked: tasks[index].isChecked,
            checkBoxCallback: (checkBoxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
