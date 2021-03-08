import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Finalizado/finalizado.dart';
import 'package:my_portfolio/Widgets/CardProjeto/card_projeto.dart';
import 'package:my_portfolio/styles/styles.dart';

class Pitacofut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 5),
            alignment: Alignment.topCenter,
            child: Text(
              "App Pitacofut.net",
              style: Styles().styleWhiteBigger,
            ),
          ),
          Finalizado(
            texto: "5 meses",
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
                // showDialog(
                //     context: context,
                //     builder: (context) => AlertDialog(
                //           content: FadeInImage.memoryNetwork(
                //             placeholder: kTransparentImage,
                //             image: "images/projetos/parceiro_video.gif",
                //             fit: BoxFit.cover,
                //           ),
                //         ));
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
                  height: 250,
                  width: 130,
                  image: "images/projetos/pitacofut_inicio.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/pitacofut_login.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/pitacofut_cadastro.jpg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
