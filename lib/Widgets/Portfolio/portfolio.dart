import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle textStyle = styles.textStyle;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pedro Pinto\nPortfolio",
          textAlign: TextAlign.center,
          style: textStyle,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[900],
      body: Container(),
    );
  }
}
