import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) toggleCheckboxState;
  final Function()? onLongPress;
  final Key key;
  TasksTile({required this.isChecked, required this.taskTitle, required this.toggleCheckboxState, this.onLongPress, required this.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 30,
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckboxState,
      ),
      onLongPress: onLongPress,
    );
  }
}


