import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressCallBack;

  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallback, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        // when this checkbox called checkBoxCallback function from stful widget called and new state of checkbox build
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}

// TaskCheckBox(
// checkBoxState: isChecked,
// // event that require little bit of wait for network to give us data actually waiting for the user interaction
// toggleCheckBoxState: (bool checkedBoxState) {
// setState(() {
// isChecked = checkedBoxState;
// });
// },),
