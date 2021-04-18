import 'package:flutter/material.dart';
import 'package:todo_flutter/model/task.dart';
import 'package:todo_flutter/widgets/task_checkbox_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskCheckBoxTile(
          title: widget.tasks[index].title,
          isChecked: widget.tasks[index].isChecked,
          checkBoxCallback: (checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
