import 'package:flutter/material.dart';
import 'screens/TasksScreen.dart';
import 'package:provider/provider.dart';
import 'package:todey_flutter/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlueAccent,
              onPrimary: Colors.white,
            ),

            ),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent,),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent,),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent),
            ),
          ),
          ),
      ),
    );
  }
}

