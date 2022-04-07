import 'package:flutter/material.dart';
import '../widgets/task_list.dart';
import 'add_task_screen.dart';
import '../widgets/Categories.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff4B6BC2),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      backgroundColor: Color(0xff080E4E),
                      content: AddTask(),
                    ));
          },
          child: const Icon(Icons.add),
          backgroundColor: const Color(0xffC24C9C),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff4B6BC2),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.drag_handle_rounded),
              color: const Color(0xffA8AFFF),
              iconSize: 30.5
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded),
              color: const Color(0xffA8AFFF),
              iconSize: 30.5,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_rounded),
                color: const Color(0xffA8AFFF),
                iconSize: 30.5)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const Text(
                "What's up, Alaa!",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 22),
                child: Text(
                  "CATEGORIES",
                  style: TextStyle(fontSize: 13, color: Color(0xffA8AFFF)),
                ),
              ),
              const SizedBox(
                height: 155,
                child: Categories(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "TODAY'S TASKS",
                  style: TextStyle(fontSize: 13, color: Color(0xffA8AFFF)),
                ),
              ),

              Container(
                padding: const EdgeInsets.only(top: 5),
                height: 500,
                child: const TaskList(),
              ),
            ]),
          ),
        ));
  }
}
