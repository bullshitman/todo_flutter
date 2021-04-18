import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function onPressedCallback;

  AddTaskScreen(this.onPressedCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      // padding:
      //     EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            Material(
              elevation: 5.0,
              color: Colors.lightBlueAccent,
              child: MaterialButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  onPressedCallback(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
