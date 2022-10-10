import 'package:day_1/first_section/first_uplabs_project/const/color.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: MyProjectColors.customBlue,
      icon: Icon(icon),
      onPressed: () {},
    );
  }
}
