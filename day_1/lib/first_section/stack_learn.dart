import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          // textDirection: TextDirection.ltr,
          // fit: StackFit.expand,
          alignment: const Alignment(0, -2),
          children: [
            myCustomContainer(Colors.red, 800, 400),
            myCustomContainer(Colors.green, 700, 300),
            myCustomContainer(Colors.blue, 600, 200),
            const Center(child: Text('sadfsdfs')),
          ],
        ),
      ),
    );
  }

  Container myCustomContainer(Color color, double height, double width) {
    return Container(
      color: color,
      height: height,
      width: width,
    );
  }
}
