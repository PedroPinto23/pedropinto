import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/DemoCard/demo_card.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Finalizado/finalizado.dart';
import 'package:my_portfolio/Widgets/CardProjeto/card_projeto.dart';
import 'package:my_portfolio/styles/styles.dart';

class Parceiro extends StatelessWidget {
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
              "App Parceiro",
              style: Styles().styleWhiteBigger,
            ),
          ),
          Finalizado(
            texto: "2 meses",
          ),
          DemoCard(
            path1: "images/projetos/parceiro_video.gif",
            path2: "images/projetos/parceiro_video2.gif",
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
                  image: "images/projetos/parceiro_login.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/parceiro_cadastro.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/parceiro_homescreen.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/parceiro_indicar.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/parceiro_detalhes.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/parceiro_chat1.jpg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
