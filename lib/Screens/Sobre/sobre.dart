import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/Inicio/inicio.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/meus_trabalhos.dart';
import 'package:my_portfolio/Widgets/BotoesTopo/botoes_topo.dart';
import 'package:my_portfolio/Widgets/Imagem_Fundo/imagem_fundo.dart';
import 'package:my_portfolio/Widgets/NextBackButton/next_back_button.dart';
import 'package:my_portfolio/styles/styles.dart';

class Sobre extends StatelessWidget {
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
          NextBackButton(
            alignment: Alignment.centerLeft,
            icone: Icons.arrow_back_ios,
            widget: Inicio(),
            dx: -1,
          ),
          NextBackButton(
            alignment: Alignment.centerRight,
            icone: Icons.arrow_forward_ios,
            widget: MeusTrabalhos(),
            dx: 1,
          ),
          Container(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top:15,bottom:50),
                alignment: Alignment.topCenter,
                child: Text(
                  "Quem sou eu",
                  textAlign: TextAlign.center,
                  style: Styles().styleWhiteBigger,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "Atualmente atuando na área de Desenvolvedor de Software,\n sou uma pessoa que se diverte com o que faz, está sempre buscando novos desafios e conhecimentos.\nBastante atencioso, procuro resolver problemas com profissionalismo.\nTenho hobbie de tocar violão e guitarra, curto assistir vídeos em inglês para o aprimoramento da língua.",
                  textAlign: TextAlign.center,
                  style: Styles().styleWhiteColor,
                ),
              )
            ],
          )),
        ]));
  }
}
