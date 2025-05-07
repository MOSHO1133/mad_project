
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red, // Background color
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 15, 100, 169), // Blue border color
              borderRadius: BorderRadius.circular(20), // Rounded border
            ),
            padding: EdgeInsets.all(5), // Space for border effect
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15), // Inner image rounded
              child: Image.network(
                'https://cdn3.pixelcut.app/7/20/uncrop_hero_bdf08a8ca6.jpg',
                height: 100, // Fixed placement
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
