import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/screens/task_screen.dart';
import 'package:provider/provider.dart';

import 'models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // create: (context) => TaskData(),
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => TaskData(),
  //     child: MaterialApp(
  //       builder: (context, child) {
  //         return TaskScreen();  // Access Provider in the correct context
  //       },
  //     ),
  //   );
  // }


}


