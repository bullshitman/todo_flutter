import 'package:flutter/material.dart';
import 'package:todo_flutter/model/task_data.dart';
import 'package:todo_flutter/widgets/task_checkbox_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return TaskCheckBoxTile(
              title: taskItem.title,
              isChecked: taskItem.isChecked,
              checkBoxCallback: (checkBoxState) {
                taskData.updateTask(taskItem);
              },
              longPressCallback: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
