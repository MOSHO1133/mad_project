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
        body: Center(
          child: Stack(
            clipBehavior: Clip.none, // Allows overflowing widgets
            children: [
              // Blue Square
              Container(width: 100, height: 100, color: Colors.blue),

              // Green Square (Overlapping)
              Positioned(
                
                top: -18,
                left: 70,
                child: Container(width: 45, height: 40, color: Colors.green),
              ),

              // Red Column with Numbers
              Positioned(
                top: 0,
                left: 80,
                child: Container(
                  width: 50,
                  height: 300,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      9,
                      (index) => Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
