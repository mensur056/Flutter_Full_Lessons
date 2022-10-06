import 'package:day_1/first_section/button.dart';
import 'package:day_1/first_section/card.dart';
import 'package:day_1/const/duration.dart';
import 'package:day_1/first_section/package.dart';
import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _controller = PageController();

  void changeView(bool isChange) {
    if (isChange) {
      _controller.nextPage(duration: ProjectDuration().second4, curve: Curves.easeInExpo);
    } else {
      _controller.previousPage(duration: ProjectDuration().millSecond500, curve: Curves.easeInExpo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              changeView(false);
            },
            child: const Icon(
              Icons.chevron_left,
              size: 50,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              changeView(true);
            },
            child: const Icon(
              Icons.chevron_right,
              size: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _controller,
        children: const [ButtonLearn(), CardLearn(), KartalPackageLearn()],
      ),
    );
  }

  Container customContainer(Color colors) {
    return Container(
      color: colors,
    );
  }
}
