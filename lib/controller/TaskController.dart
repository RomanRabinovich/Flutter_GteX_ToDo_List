import 'package:get/get.dart';
import '../model/Task.dart';

class TaskController extends GetxController {
  final _taskList = <Task>[].obs;

  List<Task> get taskList => _taskList.value;

  void addTask() {}

  void deleteTask(Task task) {}
}
