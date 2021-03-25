import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/DemoCard/demo_card.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Description/description.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Finalizado/finalizado.dart';
import 'package:my_portfolio/Widgets/CardProjeto/card_projeto.dart';
import 'package:my_portfolio/styles/styles.dart';

class Appjur extends StatelessWidget {
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
              "AppJur",
              style: Styles().styleWhiteBigger,
            ),
          ),
          Finalizado(
            texto: "13 dias",
          ),
          Description(
            description:
                "Elaboração em Flutter/Dart de código multiplataforma para aplicativos Android e iOS, necessário para realizar\na autenticação de usuários no Firebase (através de e-mail/senha, Google, Facebook, Twitter e Apple),\nassim como a autenticação local via sensor de impressão digital (Android) e Face ID (iOS)",
          ),
          DemoCard(
            path1: "images/projetos/appjur_video.gif",
            path2: "images/projetos/appjur_video2.gif",
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
                  image: "images/projetos/appjur.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/appjur_auth_message.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/appjur_cadastro.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/appjur_auth.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/appjur_auth_verify.jpg",
                ),
                CardProjeto(
                  height: 250,
                  width: 130,
                  image: "images/projetos/appjur_switch_user.jpg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
