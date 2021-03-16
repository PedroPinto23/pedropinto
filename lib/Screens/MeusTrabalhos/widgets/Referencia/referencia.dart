import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

class Referencia extends StatelessWidget {
  final String? path;
  Referencia({@required this.path});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Referência", style: Styles().styleWhiteColor),
          SizedBox(height: 5),
          Image.asset(path!),
        ],
      ),
    );
  }
}
