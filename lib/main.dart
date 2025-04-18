import 'package:flutter/material.dart';
import 'package:kusinai01_app/screens/menu_screen.dart';
import 'package:kusinai01_app/screens/profile_screen.dart';
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
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF101423),),
      title: 'KusinAI',
      home: SignUpPage(),
    );
  }
}
