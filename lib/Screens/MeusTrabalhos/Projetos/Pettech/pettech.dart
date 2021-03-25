import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/DemoCard/demo_card.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Description/description.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Finalizado/finalizado.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/widgets/Referencia/referencia.dart';
import 'package:my_portfolio/Widgets/Botao/button_row.dart';
import 'package:my_portfolio/Widgets/CardProjeto/card_projeto.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class Pettech extends StatelessWidget {
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
              "PetTech",
              style: Styles().styleWhiteBigger,
            ),
          ),
          Finalizado(
            texto: "1 mês",
          ),
          ButtonRow(
              icon: Icon(
                FontAwesomeIcons.googlePlay,
                color: Colors.blue,
              ),
              title: "App na Google Play",
              link:
                  "https://play.google.com/store/apps/details?id=br.com.pettech.Medicpet_app"),
          Description(
            description:
                "Primeiro projeto desenvolvido como Freelancer. Empresa que fornece serviço tecnológico\n pra Veterinárias necessitava de um aplicativo para que apenas seus clientes credenciados pudessem acessar.",
          ),
          DemoCard(
            path1: "images/projetos/pettech_demo.gif",
            isCardSingle: true,
          ),
          SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
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
          ),
          Referencia(path: "images/projetos/referencia_1.png"),
        ],
      ),
    );
  }
}
