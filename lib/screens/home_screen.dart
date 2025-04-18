import 'package:flutter/material.dart';
import 'package:kusinai01_app/screens/menu_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Map<String, String>> recipes = [
    {'title': 'Beef Sinigang with Gabi', 'image': 'assets/sinigang.png'},
    {'title': 'Pinakbet', 'image': 'assets/pinakbet.png'},
    {'title': 'Chicken Adobo', 'image': 'assets/adobo.jpeg'},
    {'title': 'Chicken Tinola', 'image': 'assets/tinola.jpg'},
    {'title': 'Chicken Curry', 'image': 'assets/curry.jpg'},
    {'title': 'Bicol Express', 'image': 'assets/bicol.jpg'},
    {'title': 'Chop Suey', 'image': 'assets/chopseuy.png'},
    {'title': 'Lumpiang Shanghai', 'image': 'assets/shanghai.jpg'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/recipes');
        break;
      case 1:
        Navigator.pushNamed(context, '/saved');
        break;
      case 2:
        Navigator.pushNamed(context, '/scanner');
        break;
      case 3:
        Navigator.pushNamed(context, '/friends');
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuScreen()),
        );
        break;
    }
  }

  Widget recipeCard(Map<String, String> recipe) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(recipe['image']!), fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              recipe['title']!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  backgroundColor: Colors.black45),
            )),
        const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.bookmarks_outlined,
              color: Colors.black,
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1122),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'KusinaAI',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF0F1122),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 4,
                              offset: Offset(2, 2))
                        ]),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFBBC05),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Recipes',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F1122),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 250,
                          height: 36,
                          padding: const EdgeInsets.only(left: 7, right: 48),
                          decoration: BoxDecoration(
                            color: const Color(0xFF222431),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Got an amazing recipe to share with?',
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -25,
                          top: -2,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF0F1122),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 4,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children:
                      recipes.map((recipe) => recipeCard(recipe)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xFF0F1122),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF0F1122),
          selectedItemColor: const Color(0xFFFBBC05),
          unselectedItemColor: const Color(0xFFFBBC05),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 1
                  ? Icons.bookmarks
                  : Icons.bookmarks_outlined),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 2
                  ? Icons.document_scanner
                  : Icons.document_scanner_sharp),
              label: 'Scanner',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 3 ? Icons.group : Icons.group_outlined),
              label: 'Friends',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}
