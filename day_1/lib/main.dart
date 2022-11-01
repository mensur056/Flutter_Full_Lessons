import 'package:day_1/second_section/Api/dio_post_learn_view.dart';
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
        // theme: ProjectTheme().myProjectLightTheme,
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const DioPostLearnView());
  }
}
