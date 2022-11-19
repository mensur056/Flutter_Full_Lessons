import 'package:first_group/first_section/first_uplabs_project/const/strings.dart';
import 'package:flutter/material.dart';

class CustomTextLogin extends StatelessWidget {
  const CustomTextLogin({
    Key? key,
    required this.color,
    required this.textHeight,
  }) : super(key: key);
  final Color color;
  final double textHeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      MyProjectStrings.login,
      style: TextStyle(color: color, fontSize: textHeight),
    );
  }
}
