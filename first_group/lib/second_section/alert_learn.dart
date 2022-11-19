import 'package:first_group/const/border_radius.dart';
import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({Key? key}) : super(key: key);

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 500,
            width: 300,
            color: Colors.green,
          ),
          ElevatedButton(
            child: const Text('data'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    alignment: const Alignment(0, 1),
                    shape: ProjectRadius.radius50,
                    icon: Row(
                      children: const [
                        Icon(
                          Icons.abc,
                        ),
                        Icon(
                          Icons.ac_unit,
                        ),
                        Icon(
                          Icons.access_alarm,
                        ),
                      ],
                    ),
                    iconColor: Colors.blue,
                    titleTextStyle: const TextStyle(fontSize: 40),
                    scrollable: true,
                    actionsAlignment: MainAxisAlignment.spaceBetween,
                    elevation: 10,
                    title: const Text('data'),
                    actions: const [
                      SizedBox(
                        height: 400,
                        width: 400,
                      )
                    ],
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
