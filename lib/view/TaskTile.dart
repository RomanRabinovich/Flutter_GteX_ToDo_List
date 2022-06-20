import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: size.width * 0.1,
              height: double.maxFinite,
              color: Colors.pink,
              child: Text(
                "26",
                style: text.headline5!.copyWith(color: Colors.white),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Task Description",
                  style: text.headline6,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: size.width * 0.1,
                height: double.maxFinite,
                color: Colors.pink,
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
