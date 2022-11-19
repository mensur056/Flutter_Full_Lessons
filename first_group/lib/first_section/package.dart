import 'package:first_group/first_section/container_page.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class KartalPackageLearn extends StatelessWidget {
  const KartalPackageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              height: context.mediumValue * 2,
              width: context.width * 0.1,
              decoration: BoxDecoration(
                color: context.randomColor,
                borderRadius: context.lowBorderRadius,
              )),
          Image.asset('assets/images/im_backgroundimage.jpg').rightRotation,
          ElevatedButton(
              onPressed: () {
                context.navigateToPage(const ContainerLearn());
              },
              child: const Text('asdfsdfsd'))
        ],
      ),
    );
  }
}
