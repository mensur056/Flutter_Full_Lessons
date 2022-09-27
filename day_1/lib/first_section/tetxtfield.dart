import 'package:flutter/material.dart';

class TextFiledLearn extends StatelessWidget {
  const TextFiledLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          TextField(
            decoration:
                InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16)))),
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
