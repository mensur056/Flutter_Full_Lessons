import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          suffixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          hintText: title,
          hintStyle: const TextStyle(color: Colors.grey)),
    );
  }
}
