import 'package:first_group/const/path.dart';
import 'package:flutter/material.dart';

class FadeInImageLearn extends StatelessWidget {
  const FadeInImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FadeInImage.assetNetwork(
              fadeInDuration: const Duration(seconds: 10),
              placeholder: ProjectPath.backPath,
              image: 'assets/images/im_backgroundimage.jpg')
        ],
      ),
    );
  }
}
