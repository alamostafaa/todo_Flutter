import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/task_data.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? taskName;
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Color(0xffA8AFFF),
            ),
          ),
          TextField(
            textAlign:TextAlign.start ,
            autofocus: true,
            onChanged: (name) {
              taskName = name;
            },
            cursorColor: const Color(0xffA8AFFF),
            cursorHeight: 30,
            style: const TextStyle(
                fontSize: 20, color: Color(0xffA8AFFF)),
            decoration: const InputDecoration(
              icon: Icon(
                Icons.sticky_note_2_rounded,
                color: Color(0xffA8AFFF),
              ),
              labelText: "Task name",
              labelStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffA8AFFF)),
            ),
          ),
          Container(
            width: 150,
            height: 45,
            margin: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: const Color(0xffA8AFFF)),
              child: const Text(
                'Add',
                style: TextStyle(color: Color(0xff080E4E), fontSize: 25),
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(taskName!, );
                Navigator.pop(context);
              },
            ),
          )
        ]));
  }
}
