import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class Descricao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle styleFontBigger = styles.styleFontBigger;
    TextStyle styleAverageFont = styles.styleAverageFont;
    TextStyle styleWhiteColor = styles.styleWhiteColor;
    double largura = MediaQuery.of(context).size.width;
    print(largura);
    if (largura >= 905) {
      return Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 460, top: MediaQuery.of(context).size.height / 4),
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
                  "Desenvolvedor de Software",
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
                          "Android / Ios / Web",
                          textAlign: TextAlign.right,
                          style: styleWhiteColor,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text("• Flutter - Dart", style: styleWhiteColor),
                        // Integração de API JSON / Serialização
                        Text("• Firebase / Firebase MlKit",
                            style: styleWhiteColor),
                        Text("• Integração de API JSON",
                            style: styleWhiteColor),

                        Text("• Git", style: styleWhiteColor),
                      ])),
            ],
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(top: 250, left: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4),
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Pedro Pinto",
                  style: styleFontBigger,
                ),
              ),
              Container(
                width: 900,
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: 3,
                ),
                child: Text(
                  "Desenvolvedor de Software",
                  style: styleAverageFont,
                ),
              ),
              Container(
                  width: 800,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Android / Ios / Web",
                          textAlign: TextAlign.right,
                          style: styleWhiteColor,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text("• Flutter - Dart", style: styleWhiteColor),
                        // Integração de API JSON / Serialização
                        Text("• Firebase / Firebase MlKit",
                            style: styleWhiteColor),
                        Text("• Integração de API JSON",
                            style: styleWhiteColor),

                        Text("• Git", style: styleWhiteColor),
                      ])),
            ],
          ),
        ),
      );
    }
  }
}
