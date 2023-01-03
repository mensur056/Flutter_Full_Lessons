import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckFirstPageView extends StatefulWidget {
  const CheckFirstPageView({super.key});

  @override
  State<CheckFirstPageView> createState() => _CheckFirstPageViewState();
}

class _CheckFirstPageViewState extends State<CheckFirstPageView> with TickerProviderStateMixin {
  late final TabController? _controller;
  bool isOnboarding = false;
  List<Widget>? tabViewList = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    )
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: tabViewList?.length ?? 1, vsync: this);
    readIsOnboardingValue();
    print(isOnboarding);
  }

  void changeIsOnboradingValue(bool value) {
    setState(() {
      isOnboarding = value;
    });
  }

  Future<void> readIsOnboardingValue() async {
    final prefs = await SharedPreferences.getInstance();
    changeIsOnboradingValue(prefs.getBool('isPage') ?? false);
  }

  Future<void> savePage() async {
    setState(() {
      isOnboarding = true;
    });
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isPage', isOnboarding);
  }

  int selectPageIndex = 0;
  void changePageView() async {
    selectPageIndex++;
    if (selectPageIndex == 3) {
      savePage();
    } else {
      _controller?.animateTo(selectPageIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return isOnboarding ? secondPage() : firsPage();
  }

  Widget firsPage() => Scaffold(
        appBar: AppBar(),
        body: TabBarView(
          controller: _controller,
          children: tabViewList ?? [],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changePageView();
          },
          child: const Icon(Icons.add),
        ),
      );
  Widget secondPage() => Scaffold(appBar: AppBar(), body: const Text('Welcome'));
}
