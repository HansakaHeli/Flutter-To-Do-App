import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/widgets/task_tile.dart';

import '../models/Task.dart';

class TasksList extends StatefulWidget {

  List<Task>? tasks;

  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
          taskTitle: widget.tasks?[index].name,
          isChecked: widget.tasks?[index].isDone,
          checkboxCallback: (bool checkboxState){
            setState(() {
              widget.tasks?[index].toggleDone();
            });
          }
        );
      }, itemCount: widget.tasks?.length,
    );
  }
}