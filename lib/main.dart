import 'package:flutter/material.dart';
import 'package:kusinai01_app/screens/recipes_screen.dart';
import 'package:kusinai01_app/screens/signin_screen.dart';
import 'package:kusinai01_app/screens/signup_screen.dart';

void main() {
  runApp(KusinAIapp());
}

class KusinAIapp extends StatelessWidget {
  const KusinAIapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KusinAI',
      home: SignUpPage(),
    );
  }
}
