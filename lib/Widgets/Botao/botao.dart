import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class Botao extends StatelessWidget {
  final Function onPressed;
  final String text;
  Botao({
    @required this.onPressed,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle buttonStyle = styles.buttonStyle;
    return Container(
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: buttonStyle,
        ),
      ),
    );
  }
}