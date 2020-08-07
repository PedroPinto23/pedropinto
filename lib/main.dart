import 'package:flutter/material.dart';
import 'package:my_portfolio/Model/data_model.dart';
import 'package:my_portfolio/Screens/Inicio/inicio.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<DataModel>(
      model: DataModel(),
      child: MaterialApp(
        title: 'Pedro Pinto',
        theme: ThemeData(
          primaryColor: Colors.purple[600],
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: Inicio(),
      ),
    );
  }
}
