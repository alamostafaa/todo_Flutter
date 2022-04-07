import 'package:flutter/material.dart';

class TodoTasksBox extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkedBoxCallBack;
  final Function() deleteTaskCallBack;
  const TodoTasksBox(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkedBoxCallBack,
      required this.deleteTaskCallBack})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 60,
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          color: const Color(0xff080E4E),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
            leading: Checkbox(
              value: isChecked,
              onChanged: checkedBoxCallBack,
              activeColor: const Color(0xffC24C9C),
              shape: const CircleBorder(),
              side: const BorderSide(color: Color(0xffC24C9C)),
            ),
            title: Text(
              taskTitle,
              style: TextStyle(
                  fontSize: 19,
                  decoration: isChecked ? TextDecoration.lineThrough : null,
                  color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: deleteTaskCallBack,
              icon: const Icon(Icons.delete),
              color: const Color(0xffA8AFFF),
            )
        )
    );
  }
}
