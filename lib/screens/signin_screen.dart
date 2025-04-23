import 'package:flutter/material.dart';
import 'package:kusinai01_app/screens/home_screen.dart';
import 'package:kusinai01_app/screens/signup_screen.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1122),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "KusinAI",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/login_img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Hello,\nWelcome back!",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white10,
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white10,
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?",
                      style: TextStyle(color: Colors.amberAccent)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                icon: Icon(Icons.arrow_forward, size: 28),
                label: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  // Left line
                  Expanded(
                    child: Divider(
                      color: Colors.yellow,
                      thickness: 1.5,
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Center text
                  const Text(
                    "Or Sign up with",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Right line
                  Expanded(
                    child: Divider(
                      color: Colors.yellow,
                      thickness: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 60.0,
                    height: 60.0,
                    child: IconButton(
                      icon: Image.asset('assets/google_icon.png'),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    width: 60.0,
                    height: 60.0,
                    child: IconButton(
                      icon: Image.asset('assets/facebook_icon.png'),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: "Don't you have an account? ",
                            style: TextStyle(color: Colors.white70)),
                        TextSpan(
                            text: "Sign up",
                            style: TextStyle(color: Colors.amberAccent)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
