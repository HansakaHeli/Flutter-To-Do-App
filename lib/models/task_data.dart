import 'package:flutter/cupertino.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name:'Buy milk'),
    Task(name:'Buy eggs'),
    Task(name:'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

}