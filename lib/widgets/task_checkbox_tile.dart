import 'package:flutter/material.dart';

class TaskCheckBoxTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  TaskCheckBoxTile({this.title, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 20.0),
      ),
      value: isChecked,
      onChanged: null,
    );
  }
}
