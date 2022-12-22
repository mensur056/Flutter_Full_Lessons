import 'package:first_group/third_section/navaigation_advance/product/global_navigation_mixix.dart';
import 'package:flutter/material.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> with GlobalNavigationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              backToHome(context);
            },
            child: const Text('Home'))
      ]),
    );
  }
}
