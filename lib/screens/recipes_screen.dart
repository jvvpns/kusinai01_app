import 'package:flutter/material.dart';


class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('KusinAI', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add),)
        ],
      ),
    );
  }
  
}