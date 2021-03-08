import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/Contato/widgets/contacts.dart';
import 'package:my_portfolio/Screens/Contato/widgets/redes_sociais.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/meus_trabalhos.dart';
import 'package:my_portfolio/Widgets/BotoesTopo/botoes_topo.dart';
import 'package:my_portfolio/Widgets/Imagem_Fundo/imagem_fundo.dart';
import 'package:my_portfolio/Widgets/NextBackButton/next_back_button.dart';
import 'package:my_portfolio/styles/styles.dart';

class Contato extends StatelessWidget {
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
          ImagemFundo(),
          SingleChildScrollView(
              child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Entre Em Contato",
                    textAlign: TextAlign.center,
                    style: Styles().styleWhiteBigger,
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Contacts(),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(
                        "Me encontre nas redes sociais",
                        style: Styles().styleWhiteColor,
                      ),
                    ),
                    RedesSociais(),
                  ],
                ),
              ],
            ),
          )),
          NextBackButton(
            alignment: Alignment.centerLeft,
            icone: Icons.arrow_back_ios,
            widget: MeusTrabalhos(),
            dx: -1,
          ),
        ]));
  }
}
