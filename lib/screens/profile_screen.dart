import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:kusinai01_app/screens/menu_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  File? _profileImage;
  bool showRecipes = true;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  Widget _buildRecipeCard(String title, String imagePath) {
    return Container(
      width: 175,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(
            Color.fromRGBO(0, 0, 0, 0.2),
            BlendMode.darken,
          ),
        ),
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.bookmark_border, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: Colors.white, fontSize: 16),
          children: [
            TextSpan(
                text: '$label ',
                style: const TextStyle(fontWeight: FontWeight.w500)),
            TextSpan(
                text: value, style: const TextStyle(color: Color(0xFFFBBC05))),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101423),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Align(
                  alignment: const Alignment(-0.9, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      foregroundColor: const Color(0xFFFBBC05),
                    ),
                    child: const Icon(Icons.arrow_back_ios, size: 30),
                  ),
                ),
                const SizedBox(height: 10),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: _profileImage != null
                          ? FileImage(_profileImage!)
                          : const AssetImage('assets/default_avatar.png')
                              as ImageProvider,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 4,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFBBC05),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.camera_enhance, size: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Toggle buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => setState(() => showRecipes = true),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: showRecipes
                            ? const Color(0xFFFBBC05)
                            : Colors.transparent,
                        foregroundColor: const Color(0xFF0F1122),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        elevation: showRecipes ? 2 : 0,
                        side: const BorderSide(color: Color(0xFFFBBC05)),
                        minimumSize: const Size(170, 50),
                      ),
                      child: Text(
                        'My Recipes',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: showRecipes
                              ? const Color(0xFF0F1122)
                              : const Color(0xFFFBBC05),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () => setState(() => showRecipes = false),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: !showRecipes
                            ? const Color(0xFFFBBC05)
                            : Colors.transparent,
                        foregroundColor: const Color(0xFF0F1122),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        elevation: !showRecipes ? 2 : 0,
                        side: const BorderSide(color: Color(0xFFFBBC05)),
                        minimumSize: const Size(170, 50),
                      ),
                      child: Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: !showRecipes
                              ? const Color(0xFF0F1122)
                              : const Color(0xFFFBBC05),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Conditional content
                if (showRecipes)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildRecipeCard(
                            'Lumpiang Shanghai', 'assets/shanghai.jpg'),
                        const SizedBox(width: 10),
                        _buildRecipeCard('Bicol Express', 'assets/bicol.jpg'),
                      ],
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _profileInfo('Address:', ' Region, Province'),
                        _profileInfo('Gender:', ' Male'),
                        _profileInfo('Age:', ' 23'),
                        _profileInfo('Dietary Preference:', ' Balanced'),
                        _profileInfo('Allergens:', ' Peanuts, Shrimp'),
                        _profileInfo('Cooking Skill Level:', ' Intermediate'),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit,
                                color: Color(0xFFFBBC05)),
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
