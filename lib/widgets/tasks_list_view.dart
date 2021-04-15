import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/task_checkbox_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskCheckBoxTile(
          title: 'Trash',
          isChecked: false,
        ),
        TaskCheckBoxTile(
          title: 'ManBearPig',
          isChecked: false,
        ),
      ],
    );
  }
}
