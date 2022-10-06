import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatelessWidget {
  ListViewBuilderLearn({
    Key? key,
  }) : super(key: key);
  List<String> name = ['Mansur', 'Nemet', 'Melek'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Text(name[index]);
          },
        ));
  }
}
