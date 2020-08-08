import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/CardProjeto/card_projeto.dart';
import 'package:my_portfolio/styles/styles.dart';

class Pettech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle styleWhiteBigger = styles.styleWhiteBigger;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            child: Text(
              "PetTech",
              style: styleWhiteBigger,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardProjeto(
                height: 170,
                width: 280,
                image: "images/projetos/pettech_telas.png",
              ),
              CardProjeto(
                height: 170,
                width: 280,
                image: "images/projetos/pettech_demo.png",
              ),
              CardProjeto(
                height: 170,
                width: 280,
                image: "images/projetos/pettech_telas2.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
