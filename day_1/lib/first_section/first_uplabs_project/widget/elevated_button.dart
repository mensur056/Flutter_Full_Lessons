import 'package:day_1/first_section/first_uplabs_project/widget/text_login.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextLogin(
            color: Colors.white,
            textHeight: 24,
          ),
        ));
  }
}
