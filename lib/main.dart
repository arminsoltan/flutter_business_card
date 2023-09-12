import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  runApp(MaterialApp(
      title: 'Business Card',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Business Card'),
          ),
          body: MyWidget())));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Padding(padding: EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle, size: 150),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Armin Soltan",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Text("Experienced App Developer"),
              ],
            ),
          ],
        ),
        const SizedBox(height: 300),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "132 prospect Street",
            ),
            Text(
                "(808) 294 6322",
            ),
          ],
        ),
        const SizedBox(height: 300),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.accessibility),
            Icon(Icons.timer),
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone),
          ],
        ),
      ],
    );
  }
}