import 'package:flutter/material.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key? key}) : super(key: key);

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.green,
              controller: TabController(length: 3, vsync: this),
              tabs: const [
                Icon(Icons.add),
                Icon(Icons.add),
                Icon(Icons.add),
              ]),
        ),
        appBar: AppBar(),
        body: TabBarView(
          // controller: _tabController,
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
