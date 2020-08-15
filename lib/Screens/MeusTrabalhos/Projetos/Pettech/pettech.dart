import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Finalizado/finalizado.dart';
import 'package:my_portfolio/Widgets/CardProjeto/card_projeto.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:transparent_image/transparent_image.dart';

class Pettech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Styles styles = Styles();
    TextStyle styleWhiteBigger = styles.styleWhiteBigger;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 5),
            alignment: Alignment.topCenter,
            child: Text(
              "PetTech",
              style: styleWhiteBigger,
            ),
          ),
          Finalizado(
            texto: "1 mês",
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: MaterialButton(
              hoverColor: Colors.black,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  Icons.gif,
                  color: Theme.of(context).primaryColor,
                  size: 42,
                ),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    child: AlertDialog(
                      content: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: "images/projetos/pettech_demo.gif",
                        fit: BoxFit.cover,
                      ),
                    ));
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
