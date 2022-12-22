import 'package:first_group/third_section/extension/project_extension.dart';
import 'package:flutter/material.dart';

class ExtensionView extends StatefulWidget {
  const ExtensionView({super.key});

  @override
  State<ExtensionView> createState() => _ExtensionViewState();
}

class _ExtensionViewState extends State<ExtensionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [ImagePath.tetsImage.toImage],
      ),
    );
  }
}
