import 'package:first_group/first_section/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class ContainerLearn extends StatelessWidget {
  const ContainerLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        icon: Icon(Icons.abc_sharp),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          alignment: const Alignment(0, 1),
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.green]),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          height: MediaQuery.of(context).size.height * 0.4,
          width: double.infinity,
          child: const Center(child: Text('I am containers child')),
        ),
      ),
    );
  }
}
