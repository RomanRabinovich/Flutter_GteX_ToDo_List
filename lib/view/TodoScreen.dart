import 'package:flutter/material.dart';
import 'package:flutter_getex_todo_app/controller/TaskController.dart';
import 'package:flutter_getex_todo_app/view/AddTaskScreen.dart';
import 'package:get/get.dart';

import 'TaskTile.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({Key? key}) : super(key: key);

  final TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(AddTaskScreen());
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
          child: Obx(
        () => (controller.taskList.isEmpty)
            ? Center(
                child: Text(
                  "No fucking task found",
                  style: text.headline5,
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    itemCount: controller.taskList.length,
                    itemBuilder: (context, index) => TaskTile(
                          size: size,
                          text: text,
                          time: controller.taskList[index].taskCreated,
                          des: controller.taskList[index].task,
                          press: () {
                            controller.deleteTask(controller.taskList[index]);
                          },
                        )),
              ),
      )),
    );
  }
}
