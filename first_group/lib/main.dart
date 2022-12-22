import 'package:first_group/first_section/images_page.dart';
import 'package:flutter/material.dart';

void main() {
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
        // theme: ProjectTheme().myProjectLightTheme,
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: const ImagesPageLearn());
  }
}
