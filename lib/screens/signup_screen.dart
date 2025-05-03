import 'package:flutter/material.dart';
import 'package:kusinai01_app/screens/signin_screen.dart';
import 'package:philippines_rpcmb/philippines_rpcmb.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Region? selectedRegion;
  Province? selectedProvince;
  Municipality? selectedMunicipality;

  List<Region> regions = philippineRegions;
  List<Province> provinces = [];
  List<Municipality> municipalities = [];

  bool acceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1122),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
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

              const Text(
                  "Name", style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: _inputDecoration("Last Name"),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: _inputDecoration("First Name"),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Text("Address",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child:
                    // Region Dropdown
                    DropdownButtonFormField<Region>(
                      decoration: _inputDecoration('Region'),
                      value: selectedRegion,
                      items: regions.map((region) {
                        return DropdownMenuItem(
                          value: region,
                          child: Text(region.regionName,

                            style: TextStyle(color: Colors.white),),
                        );
                      }).toList(),
                      onChanged: (region) {
                        setState(() {
                          selectedRegion = region;
                          selectedProvince = null;
                          selectedMunicipality = null;
                          provinces = region?.provinces ?? [];
                          municipalities = [];
                        });
                      },
                      dropdownColor: Colors.black,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(child:
                  // Province Dropdown
                  DropdownButtonFormField<Province>(
                    decoration: _inputDecoration('Province'),
                    value: selectedProvince,
                    items: provinces.map((province) {
                      return DropdownMenuItem(
                        value: province,
                        child: Text(province.name,
                          style: TextStyle(color: Colors.white),),
                      );
                    }).toList(),
                    onChanged: (province) {
                      setState(() {
                        selectedProvince = province;
                        selectedMunicipality = null;
                        municipalities = province?.municipalities ?? [];
                      });
                    },
                    dropdownColor: Colors.black,
                  ),
                  ),
                  SizedBox(width: 5),
                  Expanded(child:
                  // Municipality Dropdown
                  DropdownButtonFormField<Municipality>(
                    decoration: _inputDecoration('City/Municipality'),
                    value: selectedMunicipality,
                    items: municipalities.map((municipality) {
                      return DropdownMenuItem(
                        value: municipality,
                        child: Text(municipality.name,
                          style: TextStyle(color: Colors.white),),
                      );
                    }
                    ).toList(),
                    onChanged: (municipality) {
                      setState(() {
                        selectedMunicipality = municipality;
                      });
                    },
                    dropdownColor: Colors.black,
                  ),)
                ],
              ),

              const SizedBox(height: 20),
              TextField(
                decoration: _inputDecoration("Email"),
                style: const TextStyle(color: Colors.white),
              ),

              const SizedBox(height: 20),
              TextField(
                decoration: _inputDecoration("Password"),
                obscureText: true,
                style: const TextStyle(color: Colors.white),
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

              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: acceptedTerms
                    ? () {

                }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Sign Up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
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

              const SizedBox(height: 30),
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
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: "Already a member? ",
                            style: TextStyle(color: Colors.white70)),
                        TextSpan(
                            text: "Sign in",
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

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Colors.white70),
      filled: true,
      fillColor: Colors.white10,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white24),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.amber),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
