import 'package:flutter/material.dart';

class TaskCheckBoxTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallback;
  TaskCheckBoxTile({this.title, this.isChecked, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Colors.lightBlueAccent,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      value: isChecked,
      onChanged: checkBoxCallback,
    );
  }
}
