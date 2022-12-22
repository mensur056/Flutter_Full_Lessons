import 'package:flutter/material.dart';

import 'product/global_navigation_mixix.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> with GlobalNavigationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              goToLoginPage(context);
            },
            child: const Text('Login'))
      ]),
    );
  }
}
