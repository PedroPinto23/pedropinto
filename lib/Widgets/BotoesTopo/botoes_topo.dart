import 'package:flutter/material.dart';
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
              onPressed: () => Navigator.of(context).pushNamed('/'),
              text: "Início",
            ),
            Botao(
              onPressed: () => Navigator.of(context).pushNamed('/sobre'),
              text: "Sobre",
            ),
            Botao(
              onPressed: () =>
                  Navigator.of(context).pushNamed('/meusTrabalhos'),
              text: "Meus Trabalhos",
            ),
            Botao(
              onPressed: () => Navigator.of(context).pushNamed('/contato'),
              text: "Contato",
            ),
          ],
        ),
      ),
    );
  }
}
