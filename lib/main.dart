import 'package:flutter/material.dart';
import 'package:flutter_hobbies/footer.dart';
import 'package:flutter_hobbies/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          children: const [
            Expanded(
              flex: 2,
              child: Header(),
            ),
            Expanded(
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
