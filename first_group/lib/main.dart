import 'package:first_group/third_section/extension/extension_view.dart';
import 'package:first_group/third_section/navaigation_advance/home_view.dart';
import 'package:first_group/third_section/navaigation_advance/login_view.dart';
import 'package:first_group/third_section/navaigation_advance/product/rout_pages.dart';
import 'package:first_group/third_section/navaigation_advance/register_view.dart';
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
      initialRoute: RoutPages.extensionPage.name,
      routes: {
        RoutPages.home.name: (context) => const HomePageView(),
        RoutPages.loginPage.name: (context) => const LoginPageView(),
        RoutPages.registerPage.name: (context) => const RegisterPageView(),
        RoutPages.categoryPage.name: (context) => const RegisterPageView(),
        RoutPages.extensionPage.name: (context) => const ExtensionView()
      },
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
