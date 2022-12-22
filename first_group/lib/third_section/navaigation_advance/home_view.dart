import 'package:flutter/material.dart';

import 'product/global_navigation_mixix.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> with GlobalNavigationMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProjectImage.asset(context),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _appBarSection(),
          body: _bodySection(context),
        ),
      ],
    );
  }

  AppBar _appBarSection() {
    return AppBar(
      title: const Text('Home'),
    );
  }

  Column _bodySection(BuildContext context) {
    return Column(children: [
      Center(
        child: ElevatedButton(
            onPressed: () {
              goToLoginPage(context);
            },
            child: const Padding(
              padding: ProjectPaddingAll.all(),
              child: Text('Login'),
            )),
      ),
      Center(
        child: ElevatedButton(
            onPressed: () {
              goToLoginPage(context);
            },
            child: const Padding(
              padding: ProjectPaddingAll.all(),
              child: Text('Login'),
            )),
      )
    ]);
  }
}

class ProjectPaddingAll extends EdgeInsets {
  const ProjectPaddingAll.all() : super.all(50);
}

class ProjectPaddingOnly extends EdgeInsets {
  const ProjectPaddingOnly.only() : super.only(top: 50);
}

class ProjectImage extends Image {
  ProjectImage.asset(BuildContext context)
      : super.asset('assets/images/im_backgroundimage.jpg',
            fit: BoxFit.cover, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height);
}
