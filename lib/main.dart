import 'package:flutter/material.dart';
import 'package:flutter_getex_todo_app/view/TodoScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
