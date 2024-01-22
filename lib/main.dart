import 'package:flutter/material.dart';
import 'package:mind_map/features/auth/google_sign_in/sign_in_screen.dart';
import 'package:mind_map/widgets/btnavbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mind Map',
      home: SignInScreen(),
    );
  }
}
