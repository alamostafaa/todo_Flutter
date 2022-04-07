import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  double taskBNum = 44;
  double taskPNum = 18;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 180,
              height: 120,
              decoration: const BoxDecoration(
                  color: Color(0xff080E4E),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow:[ BoxShadow(
                color: Colors.black54, spreadRadius: 1,
                blurRadius: 10,
              )],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 22, left: 16, bottom: 5),
                    child: Text('${taskBNum.round()} tasks',
                        style:
                          const  TextStyle(fontSize: 12, color: Color(0xffA8AFFF))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                    ),
                    child: Text('Educational',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                 Slider(
                          value: taskBNum,
                          max: 80,
                          inactiveColor: Colors.grey,
                          activeColor: const Color(0xffC24C9C),
                          onChanged: (double val) {
                            setState(() {
                              taskBNum = val;
                            });
                          })
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: 180,
              height: 120,
              decoration: const BoxDecoration(
                boxShadow:[ BoxShadow(
                  color: Colors.black54, spreadRadius: 2,
                  blurRadius: 10,
                ),
                ],
                  color: Color(0xff080E4E),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 22, left: 16, bottom: 5),
                    child: Text('${taskPNum.round()} tasks',
                        style:
                      const  TextStyle(fontSize: 12, color: Color(0xffA8AFFF))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                    ),
                    child: Text('Personal',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  Slider(
                      value: taskPNum,
                      max: 50,
                      inactiveColor: Colors.grey,
                      activeColor: Colors.indigo,
                      onChanged: (double val) {
                        setState(() {
                          taskPNum = val;
                        });
                      })
                ],
              ),
            )
          ],
        )
    );
  }
}
