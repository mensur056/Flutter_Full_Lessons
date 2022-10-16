import 'package:day_1/second_section/changeTheme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isThemeLight = false;
  void changeTheme() {
    setState(() {
      isThemeLight = !isThemeLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: isThemeLight ? ThemeData.dark() : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: ChangeTheme(onPressed: changeTheme));
  }
}
