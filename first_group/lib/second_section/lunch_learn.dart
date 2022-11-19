import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLuncherView extends StatelessWidget {
  const UrlLuncherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          CustomElevatedButton(
            title: 'https://www.uplabs.com/',
          ),
          CustomElevatedButton(
            title: 'https://pub.dev/packages/url_launcher/example',
          ),
        ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  Future<void> goToUrl(String url) async {
    if (await launchUrlString(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        goToUrl(title);
      },
      child: const Text('Go to PubDev'),
    );
  }
}
