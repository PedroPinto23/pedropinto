import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/Botao/botao.dart';

class BotoesTopo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 220, left: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Botao(
            onPressed: () {},
            text: "Início",
          ),
          Botao(
            onPressed: () {},
            text: "Sobre",
          ),
          Botao(
            onPressed: () {},
            text: "Meus Trabalhos",
          ),
          Botao(
            onPressed: () {},
            text: "Contato",
          ),
        ],
      ),
    );
  }
}
