import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class Finalizado extends StatelessWidget {
  final String texto;
  Finalizado({required this.texto});
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle styleWhiteColor = styles.styleWhiteColor;
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      alignment: Alignment.topCenter,
      child: Text(
        "Finalizado em: $texto",
        style: styleWhiteColor,
      ),
    );
  }
}
