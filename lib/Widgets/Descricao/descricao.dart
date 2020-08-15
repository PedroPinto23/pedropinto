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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: 460, top: MediaQuery.of(context).size.height / 8),
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Pedro Pinto",
                style: styleFontBigger,
              ),
            ),
            Container(
              width: 900,
              color: Colors.white,
              padding: EdgeInsets.only(top: 3, left: 460),
              child: Text(
                "Desenvolvimento Mobile",
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
      ),
    );
  }
}
