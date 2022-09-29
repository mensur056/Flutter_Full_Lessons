import 'package:day_1/first_section/navigation.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      // ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     iconTheme: IconThemeData(color: Colors.red),
      //     centerTitle: true,
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const NavigationLearn(),
    );
  }
}
