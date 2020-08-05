import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/BotoesTopo/botoes_topo.dart';
import 'package:my_portfolio/Widgets/Descricao/descricao.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: BotoesTopo(),
          centerTitle: true,
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
                      child: Descricao(),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
