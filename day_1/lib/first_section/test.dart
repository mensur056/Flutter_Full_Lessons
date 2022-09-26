import 'package:day_1/first_section/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class TestAppp extends StatelessWidget {
  const TestAppp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        icon: Icon(Icons.remove),
        title: 'test',
      ),
    );
  }
}
