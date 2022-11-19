import 'package:flutter/material.dart';

class DividerLearn extends StatelessWidget {
  const DividerLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 200,
            color: Colors.red,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.green,
          ),
          const SizedBox(
            child: Divider(
              color: Colors.purple,
              thickness: 5,
            ),
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
