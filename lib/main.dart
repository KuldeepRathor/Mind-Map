import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mind Map',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mind Map'),
        ),
        body: const Center(
          child: Text('Mind Map'),
        ),
      ),
    );
  }
}
