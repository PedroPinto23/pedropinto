import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class Descricao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle descriptionNameStyle = styles.descriptionNameStyle;
    TextStyle descriptionStyle1 = styles.descriptionStyle1;
    TextStyle descriptionStyle2 = styles.descriptionStyle2;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(left: 160, top: 160, bottom: 5),
            child: Text(
              "Pedro Pinto",
              style: descriptionNameStyle,
            ),
          ),
          Container(
            width: 800,
            color: Colors.white,
            padding: EdgeInsets.only(top: 3, right: 75),
            child: Text(
              "Desenvolvimento Mobile",
              textAlign: TextAlign.right,
              style: descriptionStyle1,
            ),
          ),
          Container(
            width: 800,
            padding: EdgeInsets.only(right: 200),
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Android / Ios",
              textAlign: TextAlign.right,
              style: descriptionStyle2,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 120),
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• Flutter / Dart", style: descriptionStyle2),
                Text("• Firebase", style: descriptionStyle2),
                Text("• CRUD", style: descriptionStyle2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
