import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class Descricao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle styleFontBigger = styles.styleFontBigger;
    TextStyle styleAverageFont = styles.styleAverageFont;
    TextStyle styleWhiteColor = styles.styleWhiteColor;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(left: 160, top: 160, bottom: 5),
            child: Text(
              "Pedro Pinto",
              style: styleFontBigger,
            ),
          ),
          Container(
            width: 900,
            color: Colors.white,
            padding: EdgeInsets.only(top: 3, right: 75),
            child: Text(
              "Desenvolvimento Mobile",
              textAlign: TextAlign.right,
              style: styleAverageFont,
            ),
          ),
          Container(
              width: 800,
              padding: EdgeInsets.only(left: 460),
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Android / Ios",
                      textAlign: TextAlign.right,
                      style: styleWhiteColor,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text("• Flutter / Dart", style: styleWhiteColor),
                    Text("• Firebase", style: styleWhiteColor),
                    Text("• CRUD", style: styleWhiteColor),
                  ])),
        ],
      ),
    );
  }
}
