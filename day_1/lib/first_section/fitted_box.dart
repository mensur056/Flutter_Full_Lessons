import 'package:day_1/const/path.dart';
import 'package:flutter/material.dart';

class FittedBoxLearn extends StatelessWidget {
  const FittedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 400,
          width: double.infinity,
          color: Colors.green,
          child: FittedBox(
            child: Image.asset(ProjectPath.backPath),
          ),
        ),
      ),
    );
  }
}
