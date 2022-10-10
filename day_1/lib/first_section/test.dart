import 'package:flutter/material.dart';

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FadeInImage.assetNetwork(
            placeholder: 'assets/images/im_backgroundimage.jpg', image: 'assets/images/im_backgroundimage.jpg'));
  }
}
