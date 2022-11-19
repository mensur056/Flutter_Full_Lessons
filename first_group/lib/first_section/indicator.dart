import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 200,
              width: 200,
              child: Expanded(
                child: CircularProgressIndicator(
                  color: Colors.pink,
                  backgroundColor: Colors.white,
                  value: 0.8,
                  strokeWidth: 24,
                ),
              ),
            ),
            Spacer(
              flex: 4,
            ),
            LinearProgressIndicator(
              color: Colors.purple,
              backgroundColor: Colors.transparent,
              minHeight: 20,
              value: 0.6,
            )
          ],
        ),
      ),
    );
  }
}
