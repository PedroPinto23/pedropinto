import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/Sobre/sobre.dart';
import 'package:my_portfolio/Widgets/BotoesTopo/botoes_topo.dart';
import 'package:my_portfolio/Widgets/Descricao/descricao.dart';
import 'package:my_portfolio/Widgets/Imagem_Fundo/imagem_fundo.dart';
import 'package:my_portfolio/Widgets/NextBackButton/next_back_button.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: BotoesTopo(),
          centerTitle: true,
          elevation: 8,
        ),
        body: Container(
          child: Stack(
            children: [
              ImagemFundo(),
              Container(
                child: Descricao(),
              ),
              Container(
                margin: EdgeInsets.only(left: width / 12, top: height / 4),
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15,
                      spreadRadius: 3,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage(
                        "images/perfil.jpg",
                      ),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle,
                ),
              ),
              NextBackButton(
                alignment: Alignment.centerRight,
                icone: Icons.arrow_forward_ios,
                widget: Sobre(),
                dx: 1,
              ),
            ],
          ),
        ));
  }
}
