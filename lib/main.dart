import 'package:cv/provider/tab_data_provider.dart';
import 'package:cv/views/homepage.dart';
import 'package:cv/widgets/cursor/animated_circle_cursor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => TabDataProvider(),
    )
  ], child: MyApp()));
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
