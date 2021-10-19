import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:todey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal:20, vertical: 35,),
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TasksTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              toggleCheckboxState: (bool? checkboxState){
                taskData.updateTask(task);
              },
              deleteTask:(){
                taskData.removeTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
