import 'package:flutter/material.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;
  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          onPressed: widget.onPressed,
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
