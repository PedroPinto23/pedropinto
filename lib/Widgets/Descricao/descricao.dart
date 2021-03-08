import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/BottomCard/bottom_card.dart';
import 'package:my_portfolio/Widgets/Descricao/widgets/description_tile.dart';
import 'package:my_portfolio/styles/styles.dart';

class Descricao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                style: Styles().styleFontBigger,
              ),
            ),
            Container(
              width: 900,
              color: Colors.white,
              padding: EdgeInsets.only(top: 3, left: 460),
              child: Text(
                "Desenvolvedor de Software",
                style: Styles().styleAverageFont,
              ),
            ),
            Container(
                width: 800,
                padding: EdgeInsets.only(left: 460),
                margin: EdgeInsets.symmetric(vertical: 20),
                child: DescriptionTile())
          ])));
    } else {
      return Container(
        margin: EdgeInsets.only(left: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: largura / 12, top: height / 4),
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15,
                      spreadRadius: 3,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage(
                        "images/perfil.jpg",
                      ),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Pedro Pinto",
                  style: Styles().styleFontBigger,
                ),
              ),
              Container(
                width: 900,
                color: Colors.white,
                padding: EdgeInsets.only(top: 3, left: 3),
                child: Text(
                  "Desenvolvedor de Software",
                  style: Styles().styleAverageFont,
                ),
              ),
              Container(
                  width: 800,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: DescriptionTile()),
              SizedBox(height: 8),
              BottomCard(),
            ],
          ),
        ),
      );
    }
  }
}
