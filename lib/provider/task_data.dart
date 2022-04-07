import 'package:flutter/cupertino.dart';
import '../model/task_class.dart';

class TaskData extends ChangeNotifier{
  final List<Task> tasks = [
    Task(taskName: 'Study OR'),
    Task(taskName: 'Study Archi'),
    Task(taskName: 'Go to collage'),
  ];
final List<Task> removedTasks = [];
  void addTask (String name) {
    final task = Task(taskName: name );
    tasks.add(task);
    notifyListeners();
  }
  void deleteTask (Task task){
    tasks.remove(task);
    notifyListeners();
  }
  void updateTask (Task task){
    task.toggleDone();
    notifyListeners();
  }

}