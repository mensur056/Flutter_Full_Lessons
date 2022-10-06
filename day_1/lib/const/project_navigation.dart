import 'package:day_1/first_section/button.dart';
import 'package:day_1/first_section/tetxtfield.dart';
import 'package:flutter/material.dart';

class HomePageNavigation {
  void goToTextFieldLearn(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const TextFiledLearn();
      },
    ));
  }

  void goToButtonLearn(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const ButtonLearn();
      },
    ));
  }
}
