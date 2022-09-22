import 'package:flutter/material.dart';

class TextPageLearn extends StatelessWidget {
  const TextPageLearn({Key? key}) : super(key: key);
  final String title2 = 'Second Flutter';
  final String title1 = 'First Flutter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyText(title1),
            MyText(title2),
            Text(
              title1,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Theme.of(context).colorScheme.background, //Color(0xFFa535f1)
                  ),
            ),
            Text(
              title1,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Theme.of(context).colorScheme.background, //Color(0xFFa535f1)
                  ),
            ),
            Text(
              title1,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Theme.of(context).colorScheme.background, //Color(0xFFa535f1)
                  ),
            )
          ],
        ),
      ),
    );
  }

  Text MyText(String text) => Text(
        text,
        style: const TextStyle(
          fontFamily: 'aksdajshuad',
          fontSize: 16,
          color: Colors.red,
        ), //color: Color(0xFFcff7d9)
      );
}
