import 'package:flutter/material.dart';
import 'package:todo_flutter/model/task.dart';
import 'package:todo_flutter/widgets/task_checkbox_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskCheckBoxTile(
          title: Provider.of<List<Task>>(context)[index].title,
          isChecked: Provider.of<List<Task>>(context)[index].isChecked,
          checkBoxCallback: (checkBoxState) {
            Provider.of<List<Task>>(context)[index].toggleDone();
          },
        );
      },
      itemCount: context.watch<List<Task>>().length,
    );
  }
}
