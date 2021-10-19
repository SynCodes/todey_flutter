import 'package:flutter/material.dart';
import 'package:todey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  final myController = TextEditingController();
  late String newTask;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30.0,
          horizontal: 50.0,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
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
                fontSize: 30,
              ),
            ),
            TextField(
              onChanged: (String newValue){
                newTask = newValue;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 42,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addTask(newTask);
                Navigator.pop(context);
                },
                child: Text(
                  'Add',
                ),
            ),
          ],
        ),
      ),

    );
  }
}
