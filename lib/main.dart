import "package:flutter/material.dart";
import 'package:todo/provider/task_data.dart';
import "Screen/tasks_screen.dart";
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
          home: TaskScreen(),
        )
    );

  }
}
//ChangeNotifierProvider(
//create: (context) => taskData(),
//debugShowCheckedModeBanner: false,
//home:TasksScreen(),
//);