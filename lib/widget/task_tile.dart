import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:to_do/model/task_data.dart';
import 'package:to_do/widget/task_list.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, taskData, child) => ListView.builder(
        itemCount: Provider.of<TaskData>(context).taskCount,
        itemBuilder: (context, index) => TaskList(
          textTitle: Provider.of<TaskData>(context).task[index].name,
          isChecked: Provider.of<TaskData>(context).task[index].isDone,
          checkBoxCallBack: (bool? checkmate) {
            Provider.of<TaskData>(context, listen: false).toggleCheckBox(
                Provider.of<TaskData>(context, listen: false).task[index]);
          },
          onLongCallBack: () {
            Provider.of<TaskData>(context, listen: false).deleteTask(
                Provider.of<TaskData>(context, listen: false).task[index]);
          },
        ),
      ),
    );
  }
}
