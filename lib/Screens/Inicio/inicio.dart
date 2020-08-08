import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/Sobre/sobre.dart';
import 'package:my_portfolio/Widgets/BotoesTopo/botoes_topo.dart';
import 'package:my_portfolio/Widgets/Descricao/descricao.dart';
import 'package:my_portfolio/Widgets/NextBackButton/next_back_button.dart';

class Inicio extends StatelessWidget {
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
        body: Container(
          child: Stack(
            children: [
              Image.asset(
                "images/_kungfury.jpg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
              Opacity(
                opacity: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 18, 81),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Descricao(),
                    ),
                    Expanded(
                        flex: 2,
                        child: NextBackButton(
                          alignment: Alignment.centerRight,
                          icone: Icons.arrow_forward_ios,
                          widget: Sobre(),
                          dx: 1,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 150, top: 180),
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
            ],
          ),
        ));
  }
}
