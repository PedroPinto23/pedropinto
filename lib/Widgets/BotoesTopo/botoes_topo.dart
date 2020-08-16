import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/Contato/contato.dart';
import 'package:my_portfolio/Screens/Inicio/inicio.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/meus_trabalhos.dart';
import 'package:my_portfolio/Screens/Sobre/sobre.dart';
import 'package:my_portfolio/Widgets/Botao/botao.dart';

class BotoesTopo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Botao(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Inicio(),
                ));
              },
              text: "Início",
            ),
            Botao(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Sobre(),
                ));
              },
              text: "Sobre",
            ),
            Botao(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MeusTrabalhos(),
                ));
              },
              text: "Meus Trabalhos",
            ),
            Botao(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Contato(),
                ));
              },
              text: "Contato",
            ),
          ],
        ),
      ),
    );
  }
}
