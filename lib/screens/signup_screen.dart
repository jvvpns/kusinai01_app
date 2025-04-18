import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignUpPage> {
  bool acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1122),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight, // fills available height
                ),
                child: IntrinsicHeight(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Create an account',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Let's help you set up your account,\nit won't take long.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.yellow,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Name",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Last Name',
                                    filled: true,
                                    fillColor: Colors.white10,
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'First Name',
                                      filled: true,
                                      fillColor: Colors.white10,
                                      hintStyle:
                                          const TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Address',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Region",
                                    filled: true,
                                    fillColor: Colors.white10,
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            )),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Province",
                                    filled: true,
                                    fillColor: Colors.white10,
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            )),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "City/Municipality",
                                    filled: true,
                                    fillColor: Colors.white10,
                                    hintStyle:
                                        const TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            )),
                          ],
                        ),
                        const SizedBox(height: 20),
                        TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              filled: true,
                              fillColor: Colors.white10,
                              hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: TextStyle(color: Colors.white)),
                        const SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            filled: true,
                            fillColor: Colors.white10,
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 20),
                        CheckboxListTile(
                          activeColor: Colors.amber,
                          checkColor: Colors.black,
                          side: const BorderSide(color: Colors.white),
                          title: const Text(
                            "I accept the Terms and Conditions",
                            style: TextStyle(color: Colors.white),
                          ),
                          value: acceptedTerms,
                          onChanged: (value) {
                            setState(() {
                              acceptedTerms = value ?? false;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          onPressed: acceptedTerms
                              ? () {
                                  // Implement your signup logic here.
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                            backgroundColor: Colors.amber,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("Sign Up"),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: Text(
                            "Or Sign up with",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
