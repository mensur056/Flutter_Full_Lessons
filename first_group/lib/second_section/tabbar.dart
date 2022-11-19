import 'package:flutter/material.dart';

import '../first_section/container_page.dart';
import '../first_section/stack_learn.dart';

class TabBarLearn extends StatefulWidget {
  const TabBarLearn({Key? key}) : super(key: key);

  @override
  State<TabBarLearn> createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn> with TickerProviderStateMixin {
  final List<Widget> _myViewPage = [
    const ContainerLearn(),
    Container(
      color: Colors.purple,
      child: const Text('Second Page'),
    ),
    const StackLearnView()
  ];
  List<Widget> tabBarWidget = [const Text('Page 1'), const Text('Page 2'), const Text('Page 3')];
  late final TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _myViewPage.length, vsync: this);
  }

  void changePageView2(int index) {
    _controller.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              changePageView2(0);
            },
            child: const Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            onPressed: () {
              changePageView2(1);
            },
            child: const Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            onPressed: () {
              changePageView2(2);
            },
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      bottomNavigationBar: TabBar(
        unselectedLabelColor: Colors.red,
        labelColor: Colors.black,
        tabs: tabBarWidget,
        controller: _controller,
      ),
      body: TabBarView(controller: _controller, children: _myViewPage),
    );
  }
}
