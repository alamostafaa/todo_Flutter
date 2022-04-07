
import 'package:todo/provider/task_data.dart';
import 'package:todo/widgets/todo_tasks_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TaskData>(context);
    return Consumer<TaskData>(
        builder: (context, taskData, child){
          return   ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return  TodoTasksBox(
                  isChecked: task.isDone,
                  taskTitle: task.taskName,
                  checkedBoxCallBack: (_) {
                    taskData.updateTask(task);
                  },
                  deleteTaskCallBack: () {
                    taskData.deleteTask(task);
                  }
              );

            },
            itemCount: provider.tasks.length,
          );
        });

  }
}
