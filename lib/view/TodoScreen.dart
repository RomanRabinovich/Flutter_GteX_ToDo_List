import 'package:flutter/material.dart';
import 'package:flutter_getex_todo_app/view/AddTaskScreen.dart';
import 'package:get/get.dart';

import 'TaskTile.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(const AddTaskScreen());
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.pink,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
              itemBuilder: (context, index) =>
                  TaskTile(size: size, text: text)),
          //child:
        ),

        //    child: Center(
        //   child: Text(
        //     'No found any fucking notes',
        //     style: text.headline5,
        //   ),
        // ),
      ),
    );
  }
}
