import 'package:first_group/const/duration.dart';
import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({
    Key? key,
  }) : super(key: key);

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

  bool isDark = false;
  final Color backColor = Colors.red;
  void changeBackGround() {
    setState(() {
      isDark = !isDark;
      print(backColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: isDark ? Colors.green : Colors.blue,
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: changeBackGround,
              child: const Icon(Icons.add),
            ),
            InkWell(
              onTap: () {
                changeView(false);
              },
              child: const Icon(
                Icons.chevron_left,
                size: 50,
              ),
            ),
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
        body: Column(
          children: const [Text('aasd')],
        ));
  }

  Container customContainer(Color colors) {
    return Container(
      color: colors,
    );
  }
}
