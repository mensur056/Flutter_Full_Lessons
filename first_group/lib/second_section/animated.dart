import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AnimationLearn extends StatefulWidget {
  const AnimationLearn({Key? key}) : super(key: key);

  @override
  State<AnimationLearn> createState() => _AnimationLearnState();
}

class _AnimationLearnState extends State<AnimationLearn> {
  double height = 50;
  double width = 100;
  double height2x = 100;
  double width2x = 200;
  bool isChange = false;
  void changeContainerSize() {
    setState(() {
      if (height == 50 && width == 100) {
        height = height2x;
        width = width2x;
      }
    });
  }

  void changeContainer() {
    setState(() {
      isChange = !isChange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
              firstChild: const Text('Hi Nemet'),
              secondChild: const Text('Hi Melek'),
              crossFadeState: isChange ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: context.durationSlow),
          AnimatedContainer(
            color: Colors.amber,
            duration: const Duration(seconds: 2),
            curve: Curves.easeOutSine,
            height: isChange ? height2x : height,
            width: isChange ? width2x : width,
          ),
          IconButton(
              onPressed: () {
                changeContainer();
              },
              icon: const Icon(Icons.change_circle))
        ],
      ),
    );
  }
}
