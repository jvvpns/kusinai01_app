import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kusinai01_app/screens/profile_screen.dart';
import 'dart:io';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreen createState() => _MenuScreen();
}

class _MenuScreen extends State<MenuScreen> {
  File? _profileImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment(-.9, 0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        elevation: 0,
                        foregroundColor: Color(0xFFFBBC05)),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: _profileImage != null
                    ? FileImage(_profileImage!)
                    : AssetImage('assets/default_avatar.png') as ImageProvider,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lorem Ipsum',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
                label: Text(
                  'My Profile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFBBC05),
                    foregroundColor: Color(0xFF101423),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(355, 55),
                    alignment: Alignment.centerLeft),
              ),
              SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.privacy_tip_rounded,
                  size: 25,
                ),
                label: Text(
                  'Privacy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFBBC05),
                    foregroundColor: Color(0xFF101423),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(355, 55),
                    alignment: Alignment.centerLeft),
              ),
              SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_outlined,
                  size: 25,
                ),
                label: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFBBC05),
                    foregroundColor: Color(0xFF101423),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(355, 55),
                    alignment: Alignment.centerLeft),
              ),
              SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.person_add_alt_1_outlined,
                  size: 25,
                ),
                label: Text(
                  'Refer a Friend',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFBBC05),
                    foregroundColor: Color(0xFF101423),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(355, 55),
                    alignment: Alignment.centerLeft),
              ),
              SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  size: 25,
                ),
                label: Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFBBC05),
                    foregroundColor: Color(0xFF101423),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(355, 55),
                    alignment: Alignment.centerLeft),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
