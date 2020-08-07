import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/BotoesTopo/botoes_topo.dart';

class Contato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: BotoesTopo(),
        centerTitle: true,
        elevation: 8,
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
