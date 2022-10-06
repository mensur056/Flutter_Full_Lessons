import 'package:day_1/const/button_style.dart';
import 'package:day_1/const/padding.dart';
import 'package:day_1/const/strings.dart';
import 'package:day_1/first_section/shared/custom_appbar.dart';
import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);
  final String textTitle = 'Get Started';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(icon: Icon(Icons.add)),
      body: Column(
        children: [
          Padding(
            padding: MyAppSize.myPaddingBig,
            child: SizedBox(
              child: ElevatedButton(
                  style: MyButtonStyle.elevatedStyle,
                  onPressed: () {
                    print('you click');
                  },
                  child: const Text('Get Started')),
            ),
          ),
          InkWell(
            hoverColor: Colors.red,
            borderRadius: BorderRadius.circular(20),
            onLongPress: () {
              print('kajshdjhags');
            },
            onTap: () {},
            child: const Text(MyAppStrings.myTitle),
          ),
          TextButton(onPressed: () {}, child: const Text(MyAppStrings.myDesciption)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            color: Colors.red,
          ),
          ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.remove), label: const Text(' add')),
          InkWell(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.green,
              ),
              height: 50,
              width: 150,
            ),
            onTap: () {
              print('asdada');
            },
          )
        ],
      ),
    );
  }
}
