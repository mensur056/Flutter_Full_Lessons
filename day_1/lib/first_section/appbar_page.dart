import 'package:day_1/first_section/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        icon: Icon(Icons.menu),
        title: 'AppBarLearn',
      ),
      body: Container(
        color: Colors.green,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
