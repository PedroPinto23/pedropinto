import 'package:flutter/material.dart';
import 'package:my_portfolio/Theme/theme.dart';
import 'package:my_portfolio/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pedro Pinto',
      initialRoute: '/',
      routes: routes,
      theme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
