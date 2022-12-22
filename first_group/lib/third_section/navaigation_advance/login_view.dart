import 'package:first_group/third_section/navaigation_advance/product/global_navigation_mixix.dart';
import 'package:flutter/material.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> with GlobalNavigationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              goToRegisterPage(context);
            },
            child: const Text('Register'))
      ]),
    );
  }
}
