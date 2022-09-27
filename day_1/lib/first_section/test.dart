import 'package:flutter/material.dart';

class TestAppp extends StatefulWidget {
  const TestAppp({
    Key? key,
  }) : super(key: key);

  @override
  State<TestAppp> createState() => _TestApppState();
}

class _TestApppState extends State<TestAppp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
