class Task {

  bool isDone;
  String name;

  Task({required this.name, this.isDone = false});

  void toggleIsDone (){
    isDone = !isDone;
  }

}