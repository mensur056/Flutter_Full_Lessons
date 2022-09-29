import 'package:day_1/first_section/const/project_navigation.dart';
import 'package:flutter/material.dart';

class NavigationLearn extends StatelessWidget {
  const NavigationLearn({Key? key}) : super(key: key);
  final String title = 'Go to Icon Learn page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                HomePageNavigation().goToTextFieldLearn(context);
              },
              child: Text(title),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                HomePageNavigation().goToButtonLearn(context);
              },
              child: Text(title),
            ),
          ),
        ],
      ),
    );
  }
}
