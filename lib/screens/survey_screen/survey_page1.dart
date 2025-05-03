import 'package:flutter/material.dart';

class SurveyScreen1 extends StatelessWidget {
  const SurveyScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1122),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'We\'d like to get \nto know you more!',
              style: TextStyle(color: Colors.white, fontSize: 45),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Your age, weight, gender, and other details will help us\n '
              'create personalized recipe suggestions\n'
              'tailored to your preferences and health goals.',
              style: TextStyle(color: Colors.yellow, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: null,
          )
        ],
      )),
    );
  }
}
