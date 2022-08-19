import 'package:flutter/material.dart';
import 'package:flutter_todoey_app/widgets/task_tile.dart';
import 'package:flutter_todoey_app/screens/task_screen.dart';
import 'package:flutter_todoey_app/models/task.dart';
import 'package:flutter_todoey_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
//
// (
// children: [
// TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone),
// TaskTile(taskTitle: tasks[1].name,isChecked: tasks[1].isDone),
// TaskTile(taskTitle: tasks[2].name,isChecked: tasks[2].isDone)
// ],
// );
