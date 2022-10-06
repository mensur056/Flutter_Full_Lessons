import 'package:flutter/material.dart';

class ExpandedLearn extends StatelessWidget {
  const ExpandedLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [Expanded(child: Container())],
        ));
  }
}
