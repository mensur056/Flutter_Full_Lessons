import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class EnumLearn extends StatefulWidget {
  const EnumLearn({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<EnumLearn> createState() => _EnumLearnState();
}

class _EnumLearnState extends State<EnumLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: context.mediaQuery.size.height * 0.5,
            color: Colors.red,
          ),
          Text(_ProjectString.Welcome.index.toString()),
          Text(_ProjectString.values.length.toString()),
          Text(_ProjectString.Hello.name),
          Text(_ProjectString.Hello.name),
          ElevatedButton(onPressed: () {}, child: Text(_ProjectString.Send.index.toString()))
        ],
      ),
    );
  }
}

enum _ProjectString { Welcome, Hello, Nemet, Mansur, Send }

class MyUserModel {
  final int _id;
  final String _name;
  final int _price;
  MyUserModel(this._id, this._name, this._price);
}
