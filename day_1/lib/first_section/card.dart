import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        margin: const EdgeInsets.all(10),
        color: Colors.green,
        child: Center(
          child: Container(
            height: 200,
            width: 150,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
