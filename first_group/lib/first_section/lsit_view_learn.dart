import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ListViewLearn extends StatelessWidget {
  const ListViewLearn({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          customContainer(context, Colors.red, 20),
          customContainer(context, Colors.green, 80),
          customContainer(context, Colors.blue, 150),
        ],
      ),
    );
  }

  Container customContainer(BuildContext context, Color colors, double radius) {
    return Container(
      height: context.height,
      width: context.width,
      decoration: BoxDecoration(color: colors, borderRadius: BorderRadius.all(Radius.circular(radius))),
    );
  }
}
