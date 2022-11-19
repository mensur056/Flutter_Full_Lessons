import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({Key? key}) : super(key: key);

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with TickerProviderStateMixin {
  late final AnimationController bottomSheetController = AnimationController(
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  elevation: 1,
                  context: context,
                  builder: (context) => Container(),
                );
              },
              icon: const Icon(Icons.add))
        ],
      ),
    );
  }
}
