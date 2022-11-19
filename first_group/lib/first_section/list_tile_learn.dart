import 'package:first_group/first_section/container_page.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dismissible(
            direction: DismissDirection.vertical,
            key: Key(key.toString()),
            child: ListTile(
              onLongPress: () {},
              title: const Text('sdfsfsd'),
              subtitle: const Text('Welcome to here'),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80))),
              iconColor: Colors.green,
              focusColor: Colors.blue,
              textColor: Colors.purple,
              autofocus: true,
              // hoverColor: Colors.red,
              onTap: () {
                context.navigateToPage(const ContainerLearn());
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 60),
              trailing: const Text('Hello'),
              leading: const Icon(Icons.remove_circle_outlined),
            ),
          )
        ],
      ),
    );
  }
}
