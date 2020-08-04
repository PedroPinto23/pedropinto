import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/Portfolio/portfolio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pedro Pinto',
      theme: ThemeData(
        primaryColor: Colors.teal,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Portfolio(),
    );
  }
}
