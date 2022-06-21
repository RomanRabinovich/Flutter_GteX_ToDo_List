import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/Task.dart';

class TaskController extends GetxController {
  final _taskList = <Task>[].obs;

  List<Task> get taskList => _taskList.value;

  TextEditingController? textEditingController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    textEditingController!.clear();
  }

  void addTask() {
    String txt = textEditingController!.text;
    DateTime time = DateTime.now();

    _taskList.add(Task(txt, time.day.toString()));
    textEditingController!.text = "";
  }

  void deleteTask(Task task) {
    taskList.remove(task);
  }
}
