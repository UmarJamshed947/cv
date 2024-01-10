import 'package:cv/views/homepage.dart';
import 'package:cv/widgets/cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';
// Import your HomePage class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
          // Define your app's theme here
          ),
      home: AnimatedCircleCursor(
          child: HomePage()), // Use your HomePage as the home route
    );
  }
}
