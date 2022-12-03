import 'package:first_group/second_section/lunch_learn.dart';
import 'package:flutter/material.dart';

class MixinLearn extends StatefulWidget {
  const MixinLearn({super.key});

  @override
  State<MixinLearn> createState() => _MixinLearnState();
}

class _MixinLearnState extends State<MixinLearn> with _AppBarMixin, AppMethod {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: InkWell(
        child: const CustomContainer(),
        onTap: () {
          nextToPage(context);
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(title),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

mixin _AppBarMixin {
  String title = 'Flutter app';
  String dfg = 'Flutter app';
  String dffg = 'Flutter app';
  String vb = 'Flutter app';
}
mixin AppMethod {
  void nextToPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const UrlLuncherView();
      },
    ));
  }
}
