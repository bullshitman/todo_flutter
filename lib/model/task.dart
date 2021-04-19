import 'package:flutter/cupertino.dart';

class Task {
  String title;
  bool isChecked;
  Task({this.title, this.isChecked = false});

  void toggleDone() {
    isChecked = !isChecked;
  }
}
