import 'package:flutter/material.dart';

import 'package:my_portfolio/Screens/Contato/contato.dart';
import 'package:my_portfolio/Screens/Sobre/sobre.dart';
import 'package:my_portfolio/Widgets/BotoesTopo/botoes_topo.dart';
import 'package:my_portfolio/Widgets/NextBackButton/next_back_button.dart';
import 'package:my_portfolio/Widgets/Pettech/pettech.dart';

class MeusTrabalhos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: BotoesTopo(),
          centerTitle: true,
          elevation: 8,
        ),
        backgroundColor: Colors.grey[900],
        body: Stack(children: [
          NextBackButton(
            alignment: Alignment.centerLeft,
            icone: Icons.arrow_back_ios,
            widget: Sobre(),
            dx: -1,
          ),
          NextBackButton(
            alignment: Alignment.centerRight,
            icone: Icons.arrow_forward_ios,
            widget: Contato(),
            dx: 1,
          ),
          Container(
              margin: EdgeInsets.only(left: 75, right: 75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Pettech(),
                ],
              )),
        ]));
  }
}
