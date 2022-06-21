import 'package:flutter/material.dart';
import 'package:flutter_getex_todo_app/controller/TaskController.dart';
import 'package:get/get.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key}) : super(key: key);

  TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              Text(
                'Add New Task',
                style: text.headline5,
              ),
              const Spacer(
                flex: 1,
              ),
              TextField(
                controller: controller.textEditingController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: "Enter Task Description",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  controller.addTask();
                  Get.back();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Add Task',
                    style: text.button!.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const Spacer(
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
