import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final String textTitle;
  final bool isChecked;
  final Function(bool?) checkBoxCallBack;
  final VoidCallback onLongCallBack;
  const TaskList(
      {super.key,
      required this.textTitle,
      this.isChecked = false,
      required this.checkBoxCallBack,
      required this.onLongCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongCallBack,
      title: Text(
        textTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: isChecked, onChanged: checkBoxCallBack),
    );
  }
}
