
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:todey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ReorderableListView.builder(
          onReorder: (int oldIndex, int newIndex){
            if (oldIndex < newIndex){
              newIndex -= 1;
            }
            taskData.reorderTask(oldIndex, newIndex);
          },
          padding: EdgeInsets.symmetric(horizontal:20, vertical: 35,),
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TasksTile(
              key: Key('$index'),
              isChecked: task.isDone,
              taskTitle: task.name,
              toggleCheckboxState: (bool? checkboxState){
                taskData.updateTask(task);
              },
              // onLongPress:(){
              //   taskData.removeTask(index);
              // },
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
